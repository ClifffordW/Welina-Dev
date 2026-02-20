require "behaviours/follow"
require "behaviours/wander"
require "behaviours/faceentity"
require "behaviours/runaway"
require "behaviours/leash"

local BrainCommon = require "brains/braincommon"

local MIN_FOLLOW_DIST = 0
local MAX_FOLLOW_DIST = 25
local TARGET_FOLLOW_DIST = 6
local MAX_WANDER_DIST = 10

local LEASH_RETURN_DIST = 15
local LEASH_MAX_DIST = TUNING.CATCOON_DEN_LEASH_MAX_DIST

local MAX_CHASE_TIME = 4
local MAX_CHASE_DIST = 12

local AVOID_DIST = 3
local AVOID_STOP = 10

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

        local pt = inst:GetPosition()
        local ents = TheSim:FindEntities(pt.x, pt.y, pt.z, 15, {"welina_cattoy"}, {"aquatic", "falling", "INLIMBO", "NOCLICK"})

        
        




        if target ~= nil then
        local target_pt = target:GetPosition() 
        local player_too_close = FindClosestPlayerInRange(target_pt.x, target_pt.y, target_pt.z, 3, true)

        -- CHANGE: If a player IS close, return nil to cancel the action.
        if player_too_close ~= nil then
            return nil
        end

        local action = nil
        local cattoyairborne = target:HasTag("cattoyairborne")
        
        -- Determine the correct tag to track cooldowns
        local tag = cattoyairborne and "cattoyairborne" 
                    or target:HasTag("cattoy") and "cattoy" 
                    or "catfood"

        -- Logic for jumping at air toys vs ground toys
        if cattoyairborne and not (target.sg and (target.sg:HasStateTag("landing") or target.sg:HasStateTag("landed"))) then
            -- Cooldown check so the cat doesn't spam air jumps
            if inst.last_play_air_time and (GetTime() - inst.last_play_air_time) < 15 then
                return nil -- Explicitly return nil
            end
            action = BufferedAction(inst, target, ACTIONS.CATPLAYAIR)
        else
            action = BufferedAction(inst, target, ACTIONS.CATPLAYGROUND)
        end

        -- IMPORTANT: Only remove tags if we actually successfully created an action
        if action then
            target:RemoveTag(tag)
            target:DoTaskInTime(30, restore_toy_tag, tag)
            return action
        end
    end

    return nil
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


local function EquipRainyHat(inst)
    local inventory = inst.components.inventory
    if not inventory then return nil end

    local equipped_head = inventory:GetEquippedItem(EQUIPSLOTS.HEAD)


    local hat = (equipped_head and equipped_head.prefab == "eyebrellahat") and equipped_head or nil

    if not hat then
        hat = inventory:FindItem(function(item) 
            return item.prefab == "eyebrellahat" 
        end)
    end

    if not hat then
        local ground_hat = FindEntity(inst, 15, function(item)
            return item.prefab == "eyebrellahat" and not item.components.inventoryitem:IsHeld()
        end)
        if ground_hat then 


            return BufferedAction(inst, ground_hat, ACTIONS.CATPLAYGROUND) 
        end
        return nil
    end

    local is_equipped = (hat == equipped_head)
    local is_raining = TheWorld.state.israining

    if is_raining and not is_equipped then
        if equipped_head and equipped_head.prefab ~= "eyebrellahat" then
            inst.components.inventory:DropItem(equipped_head)
        end

        return BufferedAction(inst, hat, ACTIONS.WELINA_CAT_EQUIPHAT,hat)
    elseif not is_raining and is_equipped then
        return BufferedAction(inst, hat, ACTIONS.WELINA_CAT_UNEQUIPHAT, hat)
    end

    return nil
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
    local ball = inst.components.inventory:FindItem(function(item) 
        return item:HasTag("welina_cattoy") 
    end)
    
    if not ball then return nil end

    local leader = inst.components.follower and inst.components.follower.leader
    if not leader or not leader:IsValid()  then 
        return BufferedAction(inst, nil, ACTIONS.DROP, ball) 
    end



    local playerPos = leader:GetPosition()
    local catPos = inst:GetPosition()
    

    local dist = 1.5 -- Distance q to "land" in front of player
    local angle = leader:GetAngleToPoint(catPos.x, catPos.y, catPos.z) * DEGREES
    local offset = Vector3(math.cos(angle) * dist, 0, -math.sin(angle) * dist)
    local tossTarget = playerPos + offset

    local action = BufferedAction(inst, leader, ACTIONS.TOSS, ball, tossTarget)
    
    inst:FacePoint(playerPos)
    
    return action
end

local function TakeBallAction(inst)
    local ghost = FindEntity(inst, 20, function(guy) return guy:HasTag("playerghost") end)
    if ghost ~= nil then
        return nil
    end

    if inst.components.inventory:Has("welina_cattoy", 1) then 
        return nil 
    end

    local pt = inst:GetPosition()
    local ents = TheSim:FindEntities(pt.x, pt.y, pt.z, 15, {"welina_cattoy"}, {"aquatic", "falling", "INLIMBO", "NOCLICK"})




    for _, item in ipairs(ents) do
        if item:IsValid() and not item.components.inventoryitem:IsHeld() and item:IsOnPassablePoint(inst.components.amphibiouscreature and true or false, false) then
            local pt_item = item:GetPosition()

                if item and inst.components.inventory:IsFull() then
                    local items = {}
                    for k, v in pairs(inst.components.inventory.itemslots) do
                        if v ~= nil then
                            table.insert(items, v)
                        end
                    end


                    if #items > 0 then
                        local item_to_drop = items[math.random(#items)]
                        
                        
                        return BufferedAction(inst, item_to_drop, ACTIONS.DROP, item_to_drop, inst:GetPosition())
                    end
                end




            
            local player_too_close = FindClosestPlayerInRange(pt_item.x, pt_item.y, pt_item.z, 5, true) or FindClosestPlayerInRange(pt_item.x, pt_item.y, pt_item.z, 5, false)
            
            if player_too_close == nil then
                return BufferedAction(inst, item, ACTIONS.CATPLAYGROUND)
            end
        end
    end

    return nil
end





local function GetLeader(inst)
    return inst.components.follower and inst.components.follower:GetLeader()
end


local function RescueLeaderAction(inst)
    return BufferedAction(inst, GetLeader(inst), ACTIONS.WELINA_CAT_UNPIN)
end


local function RevivePlayerAction(inst)
    local reviver = inst.components.inventory:FindItem(function(item) 
        return item.prefab == "reviver" 
    end)







    local ghost = GetLeader(inst)
    if ghost ~= nil then

        

        if reviver then
            return BufferedAction(inst, GetLeader(inst), ACTIONS.GIVETOPLAYER, reviver)
        end

        local ground_reviver = FindEntity(inst, 15, function(item)
            return item.prefab == "reviver" and item:IsOnPassablePoint(true, false)
        end)

        
        if ground_reviver and inst.components.inventory:IsFull() then
            local items = {}
            for k, v in pairs(inst.components.inventory.itemslots) do
                if v ~= nil then
                    table.insert(items, v)
                end
            end


            if #items > 0 then
                local item_to_drop = items[math.random(#items)]
                
                
                return BufferedAction(inst, item_to_drop, ACTIONS.DROP, item_to_drop, inst:GetPosition())
            end
        end






        if ground_reviver and ghost:IsOnPassablePoint(false) then
            return BufferedAction(inst, ground_reviver, ACTIONS.CATPLAYGROUND)
        end
    end

    return nil
end


function CatcoonBrain:OnStart()
    local root =
    PriorityNode(
    {

        BrainCommon.PanicWhenScared(self.inst),
		BrainCommon.PanicTrigger(self.inst),
        BrainCommon.ElectricFencePanicTrigger(self.inst),
        ChaseAndAttack(self.inst, MAX_CHASE_TIME, MAX_CHASE_DIST),

        WhileNode( function() return GetLeader(self.inst) and GetLeader(self.inst).components.pinnable and GetLeader(self.inst).components.pinnable:IsStuck() end, "Leader Phlegmed",
            DoAction(self.inst, RescueLeaderAction, "Rescue Leader", true) ),

        WhileNode( function() return GetLeader(self.inst) and GetLeader(self.inst).components.health and GetLeader(self.inst):HasTag("playerghost") end, "Leader Dead",
            DoAction(self.inst, RevivePlayerAction, "medic_act", true) ),

        

        IfNode(function() return self.inst.components.inventory:Has("welina_cattoy", 1) end, "Has Ball",
            SequenceNode({
                WaitNode(0.9), -- Small pause to look at player
                DoAction(self.inst, GetRidOfTheBall, "tossballact", true),
            })
        ),

        DoAction(self.inst, TakeBallAction, "takeballact", true),
            
        
        


        --DoAction(self.inst, EquipRainyHat, "Rainy Hat", true),
        


        Follow(self.inst, GetLeader, MIN_FOLLOW_DIST, 6, 12),

			


			
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
