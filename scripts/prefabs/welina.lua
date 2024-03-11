local MakePlayerCharacter = require "prefabs/player_common"
local ex_fns = require "prefabs/player_common_extensions"
local welina_sounds = require "defs.sound.fmod_defs"

local assets = {
	Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
	--Asset("SCRIPT", "scripts/prefabs/skilltree_welina.lua")
}

-- Welina Dodge Quotes
--[[
--]]


-- Custom starting inventory
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.WELINA = {
	"trinket_22",
}

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
	start_inv[string.lower(k)] = v.WELINA
end



local function CLIENT_Welina_HostileTest(inst, target)
	return (target:HasTag("hostile") or target:HasTag("pig") or target:HasTag("catcoon"))
end


local PROX_CHECK_TAGS = { "player", "_follower" }
local PROX_CANT_TAGS = { "emocatgirl" }

function GetFollowerPenalty(inst, max, modifierchange)
	local x, y, z = inst.Transform:GetWorldPosition()

	local asocial = TheSim:FindEntities(x, y, z, 6, nil, PROX_CANT_TAGS, PROX_CHECK_TAGS)
	local asocial_followers = #asocial




	local modifiername = 1 - asocial_followers * (modifierchange or 0.25)
	modifiername = math.max(modifiername, max or 0.95)


	return modifiername
end

local function AsocialWork(inst, data)
	local workModifier = GetFollowerPenalty(inst, 0.25)

	inst.components.workmultiplier:AddMultiplier(ACTIONS.CHOP, workModifier, inst)
	inst.components.workmultiplier:AddMultiplier(ACTIONS.MINE, workModifier, inst)
	inst.components.workmultiplier:AddMultiplier(ACTIONS.HAMMER, workModifier, inst)
end


local function SanityScrew(inst)
	local x, y, z = inst.Transform:GetWorldPosition()

	local asocial = TheSim:FindEntities(x, y, z, 6, nil, PROX_CANT_TAGS, PROX_CHECK_TAGS)
	local asocial_followers = #asocial

	local is_catcoon_companion = nil
	for k,v in pairs(asocial) do
		if v.prefab == "catcoon" and v:HasTag("welinas_cat") then
			is_catcoon_companion = true
		end
	end

	local sanityModifier = 0 + -asocial_followers * (is_catcoon_companion == nil and 0.5 or 0.025)

	
	sanityModifier = math.max(sanityModifier, -3)




	inst.components.sanity.dapperness = sanityModifier
end


local function DamageScrew(inst, data)
	local damageModifier = GetFollowerPenalty(inst, 0.45, 0.05)




	inst.components.combat.damagemultiplier = damageModifier

	if data.damage ~= nil then
		--print(data.damage)
	end

end

local function Hiss(inst, data)
	if data.damage ~= nil and data.attacker ~= nil and data.attacker.components.health ~= nil then
		
		if inst.components.rider and inst.components.rider:IsRiding() then
			print(inst.components.rider:IsRiding())
			data.attacker.components.health:DoDelta(-data.damage * (TUNING.WELINA_REFLECT_AMOUNT or 5) / 2)
		else
			data.attacker.components.health:DoDelta(-data.damage * TUNING.WELINA_REFLECT_AMOUNT or 5)
		end



		--[[ 		print(data.damage * TUNING.WELINA_REFLECT_AMOUNT)
		print(data.damage) ]]
	end
end


local function welina_numDeaths_dirty(inst)
	inst._welina_numDeaths = inst.net_welina_numDeaths:value()

	inst:DoTaskInTime(0, function()
		if inst._welina_numDeaths then
			--print("DIRTY NUMBER IS " .. inst._welina_numDeaths)
		end
	end)
end





local function OnTakeDamage(inst, data)
    if data.damage ~= nil and data.attacker ~= nil and data.attacker.components.health ~= nil then
        local attackerGUID = data.attacker.GUID
        local attackerPrefab = data.attacker.prefab
        
        -- Check if the attacker's GUID has changed
        if inst.attackerDamageBonuses == nil then
            inst.attackerDamageBonuses = {}
        end
        
        if inst.attackerDamageBonuses[attackerGUID] == nil then
            inst.attackerDamageBonuses[attackerGUID] = 0
        end
        
        -- Calculate the bonus damage for this attacker
        local damageToAdd = math.floor(data.damage) * TUNING.WELINA_RESENTMENT
        
        -- Add the bonus damage to the total for this attacker
        inst.attackerDamageBonuses[attackerGUID] = inst.attackerDamageBonuses[attackerGUID] + damageToAdd
        
        -- Apply the bonus damage as a multiplier to the character's damage
        local totalDamageMultiplier = 1 + inst.attackerDamageBonuses[attackerGUID]
        inst.components.combat.externaldamagemultipliers:SetModifier("bonus_damage_" .. attackerGUID, totalDamageMultiplier)
        
        print("Total bonus damage from attacker with GUID " .. attackerGUID .. ": " .. inst.attackerDamageBonuses[attackerGUID])
        print("Default damage: " .. data.damage)
        
        -- Listen for the attacker's death event to reset the bonus damage
        data.attacker:ListenForEvent("death", function()
            if inst.attackerDamageBonuses[attackerGUID] ~= nil then
                inst.attackerDamageBonuses[attackerGUID] = 0 -- Reset the bonus damage when the mob dies
                inst.components.combat.externaldamagemultipliers:RemoveModifier("bonus_damage_" .. attackerGUID)
            end
        end, data.attacker)
    end
end










local function HealthWarning(inst)
	local health = inst.replica.health:GetPercent()
	local is_wonkey = inst:HasTag("wonkey")
	local filterValue = math.max(1, math.floor((1 - health) * 7200 + 1))
	local filterValue_voice = math.max(1, math.floor((1 - health) * 1050 + 1))

		if TheMixer and inst._welina_numDeaths and inst._welina_numDeaths > 8  and TUNING.WELINA_LASTLIFE_MUSIC and TUNING.WELINA_LASTLIFE_MUSIC == "scotchmintz_characters/sfx/welina_bell_forkintheroad" then

			--print(filterValue)
			if filterValue >= 5041 then
				TheSim:SetReverbPreset("cave")
			else
				TheSim:SetReverbPreset("default")
			end

			TheMixer:SetHighPassFilter("set_music", filterValue or 1)
			
			TheMixer:SetHighPassFilter("set_ambience", filterValue or 1)
			TheMixer:SetHighPassFilter("set_sfx", filterValue or 1)
			TheMixer:SetHighPassFilter("set_sfx/voice", filterValue_voice or 1)
			
		end
		if not TheFocalPoint.SoundEmitter:PlayingSound("deathbell")  then
			TheFocalPoint.SoundEmitter:PlaySound(TUNING.WELINA_LASTLIFE_MUSIC or welina_sounds.welina_closetodeath., "deathbell")
		end

		inst:DoTaskInTime(0.01, function()
			if inst._welina_numDeaths and inst._welina_numDeaths == 10 and not inst:HasTag("playerghost") then
				TheFocalPoint.SoundEmitter:PlaySound(welina_sounds.welina_deathbell, "finalbell")
			end
		end)
		




		if inst._welina_numDeaths and inst._welina_numDeaths > 8  then
			TheFocalPoint.SoundEmitter:SetParameter("deathbell", "health",  health)
		else
			TheFocalPoint.SoundEmitter:SetParameter("deathbell", "health", 1)
		end
	

end





local function OnDeath(inst)
	local health = inst.components.health:GetPercent()

	if not inst.welina_numDeaths then
		inst.welina_numDeaths = 1
		inst:DoTaskInTime(0, function()
			inst.net_welina_numDeaths:set(inst.welina_numDeaths)
		end)
	end


	if inst.welina_numDeaths and inst.welina_numDeaths < 10 then
		inst.welina_numDeaths = inst.welina_numDeaths + 1
		inst:DoTaskInTime(0, function()
			inst.net_welina_numDeaths:set(inst.welina_numDeaths)
		end)
	end
	if inst.welina_numDeaths == 10  then


		inst:DoTaskInTime(0.5, function()
			for k, v in pairs(Ents) do
				if v.prefab == "resurrectionstatue" then
					v.components.attunable:UnlinkFromPlayer(inst)
				end
			end
		end)

		--TheFocalPoint.SoundEmitter:SetParameter("deathbell", "health", 1)
		inst:RemoveEventCallback("respawnfromghost", ex_fns.OnRespawnFromGhost)
	else
		inst:ListenForEvent("respawnfromghost", ex_fns.OnRespawnFromGhost)
	end
end






function OnSave(inst, data)
	data.welina_numDeaths = inst.welina_numDeaths and inst.welina_numDeaths or 0
end

function OnLoad(inst, data)
	if data and data.welina_numDeaths ~= nil then
		inst.welina_numDeaths = data.welina_numDeaths or 0

		inst:DoTaskInTime(0, function()
			inst.net_welina_numDeaths:set(inst.welina_numDeaths)
		end)



		if inst.welina_numDeaths > 9 then
			inst:DoTaskInTime(0.5, function()
				for k, v in pairs(Ents) do
					if v.prefab == "resurrectionstatue" then
						v.components.attunable:UnlinkFromPlayer(inst)
					end
				end
				HealthWarning(inst)
			end)
			inst:RemoveEventCallback("respawnfromghost", ex_fns.OnRespawnFromGhost)
		else
			inst:ListenForEvent("respawnfromghost", ex_fns.OnRespawnFromGhost)
		end
	end
end

-- This initializes for both the server and client. Tags can be added here.

local common_postinit = function(inst)
	-- Minimap icon
	inst.MiniMapEntity:SetIcon("welina.tex")


	inst.net_welina_numDeaths = net_smallbyte(inst.GUID, "inst.welina_numDeaths", "welina_numDeaths_dirty")


	inst:AddTag("emocatgirl")


	--inst.components.talker.font = TALKINGFONT_WELINA

	if TUNING.WELINA_9LIVES == 1 then
		
		
			inst:ListenForEvent("welina_numDeaths_dirty", welina_numDeaths_dirty)
			inst:ListenForEvent("welina_numDeaths_dirty", HealthWarning)
			

			inst:ListenForEvent("healthdelta", HealthWarning)




			inst:ListenForEvent("ms_respawnedfromghost", HealthWarning)
			inst:ListenForEvent("ms_playerjoined", inst:DoTaskInTime(0.5, function() HealthWarning(inst)  end))

			inst:ListenForEvent("ms_newplayerspawned", inst:DoTaskInTime(0.5, function() welina_numDeaths_dirty(inst) end))

			

		



	end







	--inst.customidleanim = "idle_wendy"
end
-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	-- Set starting inventory
	inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default

	inst.components.foodaffinity:AddPrefabAffinity("unagi", TUNING.AFFINITY_15_CALORIES_MED)

	inst.talker_path_override = "scotchmintz_characters/characters/"
	inst.soundsname = "welina"



	-- Stats	
	inst.components.health:SetMaxHealth(TUNING.WELINA_HEALTH)

	inst.components.hunger:SetMax(TUNING.WELINA_HUNGER)

	inst.components.sanity:SetMax(TUNING.WELINA_SANITY)
	--inst.components.sanity.sanity_aura_immune = true
	inst.components.sanity.night_drain_mult = TUNING.WENDY_SANITY_MULT
    inst.components.sanity.neg_aura_mult = TUNING.WENDY_SANITY_MULT
    inst.components.sanity:AddSanityAuraImmunity("ghost")
    inst.components.sanity:SetPlayerGhostImmunity(true)
	

	inst.components.playerlightningtarget:SetHitChance(TUNING.WES_LIGHTNING_TARGET_CHANCE)

	-- Damage multiplier (optional)
	inst.components.combat.damagemultiplier = TUNING.WELINA_DAMAGE

	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = TUNING.WELINA_HUNGERDRAIN * TUNING.WILSON_HUNGER_RATE
	
	if inst.components.eater ~= nil then
        inst.components.eater:SetIgnoresSpoilage(true)
    end

	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "welina_speed_mod", TUNING.WELINA_MOVESPEED)

	if inst.components.efficientuser == nil then
		inst:AddComponent("efficientuser")
	end


	if TUNING.WELINA_ASOCIALITY == 1 then
		inst:ListenForEvent("working", AsocialWork)
		inst:ListenForEvent("sanitydelta", SanityScrew)
		inst:ListenForEvent("onattackother", DamageScrew)

	end
	
	if TUNING.WELINA_9LIVES == 1 then
		inst:ListenForEvent("death", OnDeath)

	end



	

	if TUNING.WELINA_REFLECT == 1 then
		inst:ListenForEvent("attacked", Hiss)
	end

	inst:ListenForEvent("attacked", OnTakeDamage)







	inst.OnSave = OnSave
	inst.OnLoad = OnLoad
end




return MakePlayerCharacter("welina", prefabs, assets, common_postinit, master_postinit, prefabs)
