local MakePlayerCharacter = require("prefabs/player_common")
local ex_fns = require "prefabs/player_common_extensions"

local welina_sounds = require("defs.sound.fmod_defs")

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

local function GetFollowerPenalty(inst, max, modifierchange)
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
    for k, v in pairs(asocial) do
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
    local attacker = data.attacker
    if data.damage == nil or attacker == nil or attacker.components.health == nil then
        return
    end

    if inst.attackerDamageBonuses == nil then
        inst.attackerDamageBonuses = {}
    end

    local damageToAdd = math.floor(data.damage) * TUNING.WELINA_RESENTMENT
    local attackerDamageBonus = inst.attackerDamageBonuses[attacker]
    inst.attackerDamageBonuses[attacker] =
        attackerDamageBonus == nil and damageToAdd
        or attackerDamageBonus + damageToAdd
end

local function GetBonusDamage(inst, victim, damage, weapon)
    return
        (inst.attackerDamageBonuses == nil or inst.attackerDamageBonuses[victim] == nil) and 0
        or inst.attackerDamageBonuses[victim]
end

local function HealthWarning(inst)
    local health = inst.replica.health:GetPercent()
    local is_wonkey = inst:HasTag("wonkey")
    local filterValue = math.max(1, math.floor((1 - health) * 7200 + 1))
    local filterValue_voice = math.max(1, math.floor((1 - health) * 1050 + 1))

    if
        TheMixer
        and inst._welina_numDeaths
        and inst._welina_numDeaths > 8
        and TUNING.WELINA_LASTLIFE_MUSIC
        and TUNING.WELINA_LASTLIFE_MUSIC == "scotchmintz_characters/sfx/welina_bell_forkintheroad"
    then
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
    if not TheFocalPoint.SoundEmitter:PlayingSound("deathbell") then
        TheFocalPoint.SoundEmitter:PlaySound(
            TUNING.WELINA_LASTLIFE_MUSIC or welina_sounds.welina_closetodeath,
            "deathbell"
        )
    end

    inst:DoTaskInTime(0.01, function()
        if inst._welina_numDeaths and inst._welina_numDeaths == 10 and not inst:HasTag("playerghost") then
            TheFocalPoint.SoundEmitter:PlaySound(welina_sounds.welina_deathbell.event, "finalbell")
        end
    end)

    if inst._welina_numDeaths and inst._welina_numDeaths > 8 then
        TheFocalPoint.SoundEmitter:SetParameter("deathbell", "health", health)
    else
        TheFocalPoint.SoundEmitter:SetParameter("deathbell", "health", 1)
    end
end

local function OnDeath(inst)
    local health = inst.components.health:GetPercent()
    --[[
		if inst.components.slipperyfeet ~= nil then
			inst:RemoveComponent("slipperyfeet")
		end
--]]
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
    if inst.welina_numDeaths == 10 then
        inst:DoTaskInTime(0.5, function()
            for k, v in pairs(Ents) do
                if v.prefab == "resurrectionstatue" then
                    v.components.attunable:UnlinkFromPlayer(inst)
                end
            end
        end)

        --TheFocalPoint.SoundEmitter:SetParameter("deathbell", "health", 1)
        inst:RemoveEventCallback("respawnfromghost", ex_fns.OnRespawnFromGhost)
    end
end

local function OnSave(inst, data)
    data.welina_numDeaths = inst.welina_numDeaths and inst.welina_numDeaths or 0
end



local function OnLoad(inst, data)
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
        end
    end
end

local function DoEffects(pet)
    local spawnfx, scale = "", pet.custom_spawnfx_scale or 1

    if not pet.no_spawn_fx then
        spawnfx =
            SpawnPrefab(pet.custom_spawnfx or (pet:HasTag("flying") and "spawn_fx_small_high" or "spawn_fx_small"))

        spawnfx.Transform:SetPosition(pet.Transform:GetWorldPosition())
        --Custom Scale perhaps
        spawnfx.Transform:SetScale(scale, scale, scale)
    end
end

local function OnSpawnPet(inst, pet)
    --Delayed in case we need to relocate for migration spawning
    pet:DoTaskInTime(0, DoEffects)
    if pet.components.spawnfader ~= nil then
        pet.components.spawnfader:FadeIn()
    end
end

local function OnDespawnPet(inst, pet)
    if not inst.is_snapshot_user_session then
        DoEffects(pet)
    end
    pet:Remove()
end

local function OnWorldEntityDeath(inst, data)
    if inst.attackerDamageBonuses ~= nil then
        inst.attackerDamageBonuses[data.inst] = nil
    end
end

-- This initializes for both the server and client. Tags can be added here.

local common_postinit = function(inst)
    -- Minimap icon
    inst.MiniMapEntity:SetIcon("welina.tex")

    inst.net_welina_numDeaths = net_smallbyte(inst.GUID, "inst.welina_numDeaths", "welina_numDeaths_dirty")


    if TUNING.WELINA_INSOMNIA == 1 then
        inst:AddTag("insomniac")
    end

    inst:AddTag("emocatgirl")


    --inst.components.talker.font = TALKINGFONT_WELINA

    if TUNING.WELINA_9LIVES == 1 then
        inst:ListenForEvent("welina_numDeaths_dirty", welina_numDeaths_dirty)
        inst:ListenForEvent("welina_numDeaths_dirty", HealthWarning)

        inst:ListenForEvent("healthdelta", HealthWarning)

        inst:ListenForEvent("ms_respawnedfromghost", HealthWarning)
        inst:ListenForEvent(
            "ms_playerjoined",
            inst:DoTaskInTime(0.5, function()
                HealthWarning(inst)
            end)
        )

        inst:ListenForEvent(
            "ms_newplayerspawned",
            inst:DoTaskInTime(0.5, function()
                welina_numDeaths_dirty(inst)
            end)
        )
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
    inst.components.sanity.night_drain_mult = TUNING.WELINA_SANITY_MULT
    inst.components.sanity.neg_aura_mult = TUNING.WELINA_SANITY_MULT
    inst.components.sanity:AddSanityAuraImmunity("ghost")
    inst.components.sanity:SetPlayerGhostImmunity(true)

    inst.components.playerlightningtarget:SetHitChance(TUNING.WES_LIGHTNING_TARGET_CHANCE)

    -- Damage multiplier (optional)
    inst.components.combat.damagemultiplier = TUNING.WELINA_DAMAGE
    inst.components.combat.bonusdamagefn = GetBonusDamage

    -- Hunger rate (optional)
    inst.components.hunger.hungerrate = TUNING.WELINA_HUNGERDRAIN * TUNING.WILSON_HUNGER_RATE

    if inst.components.eater ~= nil then
        inst.components.eater:SetIgnoresSpoilage(true)
    end

    if inst.components.petleash ~= nil then
        inst._OnSpawnPet = inst.components.petleash.onspawnfn
        inst._OnDespawnPet = inst.components.petleash.ondespawnfn
        inst.components.petleash:SetMaxPets(inst.components.petleash:GetMaxPets() + 7)
    else
        inst:AddComponent("petleash")
        inst.components.petleash:SetMaxPets(7)
    end
    local petleash = inst.components.petleash
    petleash:SetOnSpawnFn(OnSpawnPet)
    petleash:SetOnDespawnFn(OnDespawnPet)

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

    inst:ListenForEvent("entity_death", function(_, data)
        OnWorldEntityDeath(inst, data)
    end, TheWorld)

    inst.OnSave = OnSave
    inst.OnLoad = OnLoad
end

return MakePlayerCharacter("welina", prefabs, assets, common_postinit, master_postinit, prefabs)
