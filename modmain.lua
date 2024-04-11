modimport("articore/articore_api")


local _G = GLOBAL





local welina_sounds = require("defs.sound.fmod_defs")

local modnameFancy = "workshop-1637709131"
local is_modenabled = _G.KnownModIndex:IsModEnabled(modnameFancy)

local animation_data = {
	frames_anim = is_modenabled and 220 or 64,
	camera_distance = is_modenabled and 7 or 13,
	anims = is_modenabled and "defaultdance" or "idle_loop",
}

AddPrefabPostInit("catcoon", function(inst)
	inst.AnimState:SetHatOffset(5, 200)
	local function NoHoles(pt)
		return not TheWorld.Map:IsPointNearHole(pt)
	end

	local function OnGetItemFromPlayer(inst, giver, item)
		if inst.components.sleeper:IsAsleep() then
			inst.components.sleeper:WakeUp()
		end
		if inst.components.combat.target == giver then
			inst.components.combat:SetTarget(nil)
			inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/catcoon/pickup")
		elseif giver.components.leader ~= nil then
			if item:HasTag("catnip") then
				inst:Hide()
				local theta = math.random() * 2 * PI
				local pt = inst:GetPosition()
				local offset = FindWalkableOffset(pt, theta, 0, 12, true, true, NoHoles)
				if offset ~= nil then
					pt.x = pt.x + offset.x
					pt.z = pt.z + offset.z
				end
				giver.components.petleash:SpawnPetAt(pt.x, 0, pt.z, "welina_catcoon")
				


				inst:Remove()
			end
			if not item:HasTag("catnip") then
				if giver.components.minigame_participator == nil then
					giver:PushEvent("makefriend")
					giver.components.leader:AddFollower(inst)
				end
				inst.last_hairball_time = GetTime()
				inst.hairball_friend_interval = math.random(2, 4) -- Jumpstart the hairball timer (slot machine time!)
				inst.components.follower:AddLoyaltyTime(TUNING.CATCOON_LOYALTY_PER_ITEM)
				if not inst.sg:HasStateTag("busy") then
					inst:FacePoint(giver.Transform:GetWorldPosition())
					inst.sg:GoToState("pawground")
				end
			end
		end
		item:Remove()

		--[[
        --I wear hats
        if item.components.equippable ~= nil and item.components.equippable.equipslot == EQUIPSLOTS.HEAD then
            local current = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HEAD)
            if current ~= nil then
                inst.components.inventory:DropItem(current)
            end

            inst.components.inventory:Equip(item)
            inst.AnimState:ShowSymbol("swap_hat")
        end
		--]]
	end

	local function ShouldAcceptItem(inst, item)
		if item.components.equippable ~= nil and item.components.equippable.equipslot == EQUIPSLOTS.HEAD then
			return true
		elseif item:HasTag("cattoy") or item:HasTag("catfood") or item:HasTag("cattoyairborne") then
			return true
		elseif item:HasTag("catnip") then
			return true
		else
			return false
		end
	end

	local function OnRefuseItem(inst, item)
		inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/catcoon/hiss_pre")
		if inst.components.sleeper:IsAsleep() then
			inst.components.sleeper:WakeUp()
			-- elseif not inst.sg:HasStateTag("busy") then
			-- 	inst.sg:GoToState("hiss")
		end
	end

	if not TheWorld.ismastersim then
		return inst
	end

	inst:AddComponent("trader")
	inst.components.trader:SetAcceptTest(ShouldAcceptItem)
	inst.components.trader.onaccept = OnGetItemFromPlayer
end)

AddStategraphState(
	"wilson",
	State({
		name = "welina_hiss",
		tags = { "doing", "busy", "nointerrupt", "nopredict", "nomorph" },

		onenter = function(inst)
			if animation_data.anims == "idle_loop" then
				inst.AnimState:PlayAnimation("research")
			end

			inst.components.health:SetPercent(0.01)

			inst.components.locomotor:StopMoving()
			if inst.components.playercontroller ~= nil then
				inst.components.playercontroller:Enable(false)
			end
			inst.components.health:SetInvincible(true)
			inst:AddTag("NOTARGET")

			inst:SetCameraDistance(animation_data.camera_distance)

			local x, y, z = inst.Transform:GetWorldPosition()

			local panic_ents = TheSim:FindEntities(x, y, z, 20)

			for k, v in pairs(panic_ents) do
				if v.components.combat then
					v.components.combat:DropTarget()
				end

				if v.components.hauntable then
					v.components.hauntable:Panic(10)
				end
			end
		end,
		events = {

			EventHandler("animqueueover", function(inst)
				if inst.AnimState:AnimDone() then
					inst.sg:GoToState("idle")
				end
			end),
		},

		timeline = {

			TimeEvent(10 * FRAMES, function(inst)
				if animation_data.anims == "idle_loop" then
					inst.AnimState:SetBuild("welina_hiss_anim")
					inst.AnimState:SetBank("welina_hiss")
				else
					inst.SoundEmitter:PlaySound("fortnig/fortnite/theme", "fortnitedancetheme")
				end

				inst.AnimState:PlayAnimation(
					animation_data.anims,
					animation_data.anims == "idle_loop" and true or false
				)

				inst.Transform:SetNoFaced()
			end),

			TimeEvent(14 * FRAMES, function(inst)
				if animation_data.anims == "idle_loop" then
					inst.SoundEmitter:PlaySound(welina_sounds.welina_hiss.event)
				end
			end),

			TimeEvent(62 * FRAMES, function(inst)
				inst.sg:RemoveStateTag("busy")
			end),

			TimeEvent(animation_data.frames_anim * FRAMES, function(inst)
				inst:RemoveTag("NOTARGET")
				inst.AnimState:SetBuild("welina")
				inst.AnimState:SetBank("wilson")
				inst.components.locomotor:StopMoving()
				if inst.components.playercontroller ~= nil then
					inst.components.playercontroller:Enable(true)
				end
				inst.components.health:SetInvincible(false)
				inst:Show()
				inst.Transform:SetFourFaced()
				inst.components.inventory:Open()
				inst:SetCameraDistance(animation_data.camera_distance + 8)
			end),

			TimeEvent(68 * FRAMES, function(inst)
				if animation_data.anims == "idle_loop" then
					inst.AnimState:PlayAnimation("emote_jumpcheer")
					inst.AnimState:SetFrame(40)
					inst.AnimState:SetDeltaTimeMultiplier(0.85)
				end
			end),

			TimeEvent(72 * FRAMES, function(inst)
				if animation_data.anims == "idle_loop" then
					inst.AnimState:SetDeltaTimeMultiplier(1)
				end
			end),
		},

		onupdate = function(inst) end,

		onexit = function(inst) end,
	})
)







AddPrefabPostInit("welina", function(inst, data, ...)
	local DummyFn = function() end

	local _SaveForReroll = inst.SaveForReroll or DummyFn
	local _LoadForReroll = inst.LoadForReroll or DummyFn

	local function SaveForReroll(inst, ...)
		local ret = { _SaveForReroll(inst, ...) }

		local data = ret[1]

		if data ~= nil then
			data.welina_numDeaths = inst.welina_numDeaths
		end
		print("SAVING AS INTENDED")

		return unpack(ret)
	end

	local function LoadForReroll(inst, data, ...)
		local ret = { _LoadForReroll(inst, data, ...) }

		if data ~= nil and data.welina_numDeaths ~= nil then
			inst.welina_numDeaths = data.welina_numDeaths
		end

		if inst.welina_numDeaths and inst.net_welina_numDeaths then
			inst.net_welina_numDeaths:set(inst.welina_numDeaths)
		end

		print("WORKING AS INTENDED")

		return unpack(ret)
	end

	inst.SaveForReroll = SaveForReroll
	inst.LoadForReroll = LoadForReroll
end)

AddPlayerPostInit(function(inst, data, ...)
	if inst.prefab ~= "welina" then
		GLOBAL.TheFocalPoint.SoundEmitter:SetParameter("deathbell", "health", 1)

		local DummyFn = function() end

		local _SaveForReroll = inst.SaveForReroll or DummyFn
		local _LoadForReroll = inst.LoadForReroll or DummyFn

		local function SaveForReroll(inst, ...)
			local ret = { _SaveForReroll(inst, ...) }

			local data = ret[1]

			if data ~= nil then
				data.welina_numDeaths = inst.welina_numDeaths
			end
			print("SAVING AS INTENDED")

			return unpack(ret)
		end

		local function LoadForReroll(inst, data, ...)
			local ret = { _LoadForReroll(inst, data, ...) }

			if data ~= nil and data.welina_numDeaths ~= nil then
				inst.welina_numDeaths = data.welina_numDeaths
			end
			if inst.welina_numDeaths and inst.net_welina_numDeaths then
				inst.net_welina_numDeaths:set(inst.welina_numDeaths)
			end

			print("WORKING AS INTENDED")

			return unpack(ret)
		end

		local _OnSave = inst.Save or DummyFn
		local _OnLoad = inst.OnLoad or DummyFn
		function OnSave(inst, data)
			local ret = _OnSave(inst, data)

			data.welina_numDeaths = inst.welina_numDeaths and inst.welina_numDeaths or nil

			return ret
		end

		function OnLoad(inst, data)
			local ret = _OnLoad(inst, data)

			if data and data.welina_numDeaths ~= nil then
				inst.welina_numDeaths = data.welina_numDeaths
			end

			return ret
		end

		inst.SaveForReroll = SaveForReroll
		inst.LoadForReroll = LoadForReroll

		inst.OnSave = OnSave
		inst.OnLoad = OnLoad
	end
end)

--[[ AddPrefabPostInit("wonkey", function(inst, data, ...)
    local DummyFn = function() end

    local _SaveForReroll = inst.SaveForReroll or DummyFn
    local _LoadForReroll = inst.LoadForReroll or DummyFn

    local function SaveForReroll(inst, ...)
        local ret = { _SaveForReroll(inst, ...) }

        local data = ret[1]



        if data ~= nil then
            data.welina_numDeaths = inst.welina_numDeaths
        end

        return unpack(ret)
    end

    local function LoadForReroll(inst, data, ...)
        local ret = { _LoadForReroll(inst, data, ...) }


        if data ~= nil and data.welina_numDeaths ~= nil then
            inst.welina_numDeaths = data.welina_numDeaths
        end


        return unpack(ret)
    end


    function OnSave(inst, data)
        data.welina_numDeaths = inst.welina_numDeaths and inst.welina_numDeaths or nil
    end

    function OnLoad(inst, data)
        if data and data.welina_numDeaths ~= nil then
            inst.welina_numDeaths = data.welina_numDeaths



        end
    end




    inst.OnSave = OnSave
    inst.OnLoad = OnLoad
    inst.SaveForReroll = SaveForReroll
    inst.LoadForReroll = LoadForReroll
end) ]]

modimport("init/init_all")

AddPrefabPostInit("catcoonden", function(inst, ...)
	local function temperaturetick(inst, sleeper)
		if sleeper.components.temperature ~= nil then
			if inst.is_cooling then
				if sleeper.components.temperature:GetCurrent() > TUNING.SLEEP_TARGET_TEMP_TENT then
					sleeper.components.temperature:SetTemperature(
						sleeper.components.temperature:GetCurrent() - TUNING.SLEEP_TEMP_PER_TICK
					)
				end
			elseif sleeper.components.temperature:GetCurrent() < TUNING.SLEEP_TARGET_TEMP_TENT then
				sleeper.components.temperature:SetTemperature(
					sleeper.components.temperature:GetCurrent() + TUNING.SLEEP_TEMP_PER_TICK
				)
			end
		end
	end

	local function PlaySleepLoopSoundTask(inst, stopfn)
		-- inst.SoundEmitter:PlaySound("dontstarve/common/tent_sleep")
	end
	local function stopsleepsound(inst)
		if inst.sleep_tasks ~= nil then
			for i, v in ipairs(inst.sleep_tasks) do
				v:Cancel()
			end
			inst.sleep_tasks = nil
		end
	end

	local function startsleepsound(inst, len)
		stopsleepsound(inst)
		inst.sleep_tasks = {
			inst:DoPeriodicTask(len, PlaySleepLoopSoundTask, 33 * FRAMES),
			inst:DoPeriodicTask(len, PlaySleepLoopSoundTask, 47 * FRAMES),
		}
	end

	local function onwake(inst, sleeper, nostatechange)
		inst.AnimState:PlayAnimation("idle")
		inst.SoundEmitter:PlaySound("webber2/common/spiderden/out")
		stopsleepsound(inst)
	end

	local function onsleep(inst, sleeper)
		inst.AnimState:PlayAnimation("idle")
		inst.SoundEmitter:PlaySound("webber2/common/spiderden/in")
		startsleepsound(inst, inst.AnimState:GetCurrentAnimationLength())
	end

	local function AddSleepingBag(inst)
		if inst.components.sleepingbag == nil then
			inst:AddComponent("sleepingbag")
		end

		inst.components.sleepingbag.onsleep = onsleep
		inst.components.sleepingbag.onwake = onwake

		inst.components.sleepingbag.health_tick = TUNING.SLEEP_HEALTH_PER_TICK * 1.5
		inst.components.sleepingbag.hunger_tick = TUNING.SLEEP_HUNGER_PER_TICK * 1.5
		inst.components.sleepingbag.dryingrate = math.max(0, -TUNING.SLEEP_WETNESS_PER_TICK / TUNING.SLEEP_TICK_PERIOD)

		inst.components.sleepingbag:SetTemperatureTickFn(temperaturetick)

		inst:AddTag("tent")
	end

	if not TheWorld.ismastersim then
		return inst
	end

	inst:DoTaskInTime(0, function()
		AddSleepingBag(inst)
	end)
end)

if TUNING.WELINA_OSP == 1 then
	local function MayKill(self, amount)
		if self.currenthealth + amount <= 0 then
			return true
		end
	end

	AddComponentPostInit("health", function(self)
		if not TheWorld.ismastersim then
			return
		end

		local _DoDelta = self.DoDelta
		function self:DoDelta(amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb, ...)
			local currentpercent = self:GetPercent()

			if
				MayKill(self, amount)
				and self.inst:HasTag("emocatgirl")
				and currentpercent > TUNING.WELINA_OSP_THRESHOLD
			then
				--self:SetInvincible(true)

				self:SetCurrentHealth(0.015)
				self.inst.sg:GoToState("welina_hiss")
			else
				return _DoDelta(self, amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb, ...)
			end
		end
	end)
end

--[[
AddComponentAction("SCENE", "prototyper", function(inst, doer, actions, right)
    if not inst.prefab ~= "wcard_diary" then
        if not right   then
            table.insert(actions, ACTIONS.OPEN_CRAFTING)
        end
    end
end)
--]]
