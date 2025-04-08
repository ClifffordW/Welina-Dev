require "behaviours/follow"
require "behaviours/wander"
require "behaviours/faceentity"
require "behaviours/runaway"
require "behaviours/leash"

local BrainCommon = require "brains/braincommon"

local MIN_FOLLOW_DIST = 0
local MAX_FOLLOW_DIST = 12
local TARGET_FOLLOW_DIST = 6
local MAX_WANDER_DIST = 6

local LEASH_RETURN_DIST = 2
local LEASH_MAX_DIST = 6

local MAX_CHASE_TIME = 2
local MAX_CHASE_DIST = 6

local AVOID_DIST = 2
local AVOID_STOP = 5

local NO_TAGS = {"FX", "NOCLICK", "DECOR","INLIMBO", "stump", "burnt", "notarget", "flight", "fire", "irreplaceable"}
local PLAY_TAGS = {"cattoy", "cattoyairborne", "catfood"}

local CatcoonBrain = Class(Brain, function(self, inst)
    Brain._ctor(self, inst)
end)

local function restore_toy_tag(targ, tag)
	targ:AddTag(tag)
end

local function PlayAction(inst)
    if inst.sg:HasStateTag("busy") or (inst.hairball_friend_interval and inst.hairball_friend_interval <= 5) then 
		return
	end

    local target = FindEntity(inst, 10, function(item) return item:IsOnPassablePoint() end, nil, NO_TAGS, PLAY_TAGS)
	if target ~= nil then
		local action = nil
		local cattoyairborne = target:HasTag("cattoyairborne")
		local tag = cattoyairborne and "cattoyairborne" 
					or target:HasTag("cattoy") and "cattoy" 
					or "catfood"

		if cattoyairborne and not (target.sg and (target.sg:HasStateTag("landing") or target.sg:HasStateTag("landed"))) then
			if inst.last_play_air_time and (GetTime() - inst.last_play_air_time) < 15 then
				return 
			end
			action = BufferedAction(inst, target, ACTIONS.CATPLAYAIR)
		else
			action = BufferedAction(inst, target, ACTIONS.CATPLAYGROUND)
		end

		target:RemoveTag(tag)
		target:DoTaskInTime(30, restore_toy_tag, tag)
		return action
	end
end

local function HasValidHome(inst)
    local home = inst.components.homeseeker ~= nil and inst.components.homeseeker.home or nil
    return home ~= nil
        and home:IsValid()
        and not (home.components.burnable ~= nil and home.components.burnable:IsBurning())
        and not home:HasTag("burnt")
end

local function GetNoLeaderHomePos(inst)
    if inst.components.follower and inst.components.follower.leader then
        return nil
    end
    return HasValidHome(inst) and inst.components.homeseeker:GetHomePos()
end

local function GetLeader(inst)
    return inst.components.follower.leader
end

local function GetFaceTargetFn(inst)
    return inst.components.follower.leader
end

local function KeepFaceTargetFn(inst, target)
    return inst.components.follower.leader == target
end

local function GoHomeAction(inst)
	local home = inst.components.homeseeker and inst.components.homeseeker.home or nil
    if home ~= nil and home:IsValid() and (not home.components.burnable or not home.components.burnable:IsBurning()) then
        return BufferedAction(inst, home, ACTIONS.GOHOME)
    else
        inst.raining = false
        inst:ScheduleRaining()
    end
end






local function ShouldHairball(inst)
    if inst.components.follower and inst.components.follower.leader then
        if GetTime() - inst.last_hairball_time >= inst.hairball_friend_interval then
            inst.hairball_friend_interval = math.random(TUNING.MIN_HAIRBALL_FRIEND_INTERVAL, TUNING.MAX_HAIRBALL_FRIEND_INTERVAL)
            return true
        end
    else
        if GetTime() - inst.last_hairball_time >= inst.hairball_neutral_interval then
            inst.hairball_neutral_interval = math.random(TUNING.MIN_HAIRBALL_NEUTRAL_INTERVAL, TUNING.MAX_HAIRBALL_NEUTRAL_INTERVAL)
            return true
        end
    end
end

local function HairballAction(inst)
    if inst.sg:HasStateTag("busy") then return end
    if inst.components.follower and inst.components.follower.leader then
        return BufferedAction(inst, inst.components.follower.leader, ACTIONS.HAIRBALL)
    else
        return BufferedAction(inst, nil, ACTIONS.HAIRBALL)
    end
end

local function WhineAction(inst)
    if inst.sg:HasStateTag("busy") then return end
    if inst.components.follower and inst.components.follower.leader and inst.components.follower:GetLoyaltyPercent() < .03 then
        return BufferedAction(inst, inst.components.follower.leader, ACTIONS.CATPLAYGROUND)
    end
end


local function HasMonkeyBait(inst)
    local ball = inst.components.inventory:FindItem(function(item) return item:HasTag("welina_cattoy") end)
    if ball then
        -- print("I have the ball!")
        return true
    else
        return false
    end
end

local function GetRidOfTheBall(inst)
    local ball = inst.components.inventory:FindItem(function(item) return (item:HasTag("welina_cattoy") and item:HasTag("INLIMBO")) end)
    local action
    local player

    if not ball then return end

    if inst.components.follower and inst.components.follower.leader then
        player = inst.components.follower.leader
    else
        return
    end

    if math.random() < TUNING.CATCOONBALL_PASS_TO_PLAYER_CHANCE then

        local pos = player:GetPosition()
        local offset, _, _ = FindWalkableOffset(inst:GetPosition(), math.random()*2*PI, math.random()*5 + 5, 8, true, false)
        action = BufferedAction(inst, player, ACTIONS.TOSS, ball, pos + offset)      


    else
        local pos = inst:GetPosition()
        local offset, _, _ = FindWalkableOffset(inst:GetPosition(), math.random()*2*PI, math.random()*5 + 5, 8, true, false) -- try to avoid walls

        if offset then
            action = BufferedAction(inst, nil, ACTIONS.TOSS, ball, pos + offset)
        else
            action = BufferedAction(inst, player, ACTIONS.TOSS, ball, pos + offset)
        end
    end
    
    return action
end

local function TakeBallAction(inst)
    local pt = inst:GetPosition()
    local ents = TheSim:FindEntities(pt.x, pt.y, pt.z, 10*2, nil, {"aquatic", "falling", "FX", "NOCLICK", "DECOR", "INLIMBO"})

    for _, item in ipairs(ents) do
        
        local owner = item.components.inventoryitem and item.components.inventoryitem.owner
        if not owner and item:HasTag("welina_cattoy")  and item:IsOnValidGround() then
            -- print('monkey eat ball', item:HasTag('falling'), item:HasTag('aquatic'))
            return BufferedAction(inst, item, ACTIONS.CATPLAYGROUND)
        end
    end
end

function CatcoonBrain:OnStart()
    local root =
    PriorityNode(
    {
        SequenceNode{
            ConditionNode(function() return HasMonkeyBait(self.inst) end, "HasBall"),
            ParallelNodeAny {
                WaitNode(1+math.random()*1),
                Panic(self.inst),
            },
            DoAction(self.inst, GetRidOfTheBall),
        },
        



        DoAction(self.inst, TakeBallAction, "takeballact", true),


        BrainCommon.PanicWhenScared(self.inst, 1),
		BrainCommon.PanicTrigger(self.inst),
      
        ChaseAndAttack(self.inst, MAX_CHASE_TIME, MAX_CHASE_DIST),
        --DoAction(self.inst, WhineAction, "whine", true),




        Follow(self.inst, GetLeader, MIN_FOLLOW_DIST, TARGET_FOLLOW_DIST, MAX_FOLLOW_DIST),
        WhileNode(function() return self.inst.raining end, "GoingHome",
            DoAction(self.inst, GoHomeAction, "go home", true )),
			
			
        WhileNode(function() return self.inst.components.inventory:IsFull() end, "DepositInv",
            DoAction(self.inst, GoHomeAction, "go home", false)),
        DoAction(self.inst, PlayAction, "play", true),	

		IfNode(function() return ShouldHairball(self.inst) end, "hairball",
            DoAction(self.inst, HairballAction, "hairballact", true)),


        IfNode(function() return GetLeader(self.inst) end, "has leader",
            FaceEntity(self.inst, GetFaceTargetFn, KeepFaceTargetFn )),
        Leash(self.inst, GetNoLeaderHomePos, LEASH_MAX_DIST, LEASH_RETURN_DIST),		
        RunAway(self.inst, "player", AVOID_DIST, AVOID_STOP, nil, nil, NO_TAGS),
        Wander(self.inst, function() return self.inst:GetPosition() end, MAX_WANDER_DIST),


    }, .25)
    
    self.bt = BT(self.inst, root)
end

return CatcoonBrain
