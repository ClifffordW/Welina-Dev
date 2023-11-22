local MakePlayerCharacter = require "prefabs/player_common"


local assets = {
	Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
	--Asset("SCRIPT", "scripts/prefabs/skilltree_welina.lua")
}


local voice_lines = {
	equip_head = "This hat's gonna break my other horn, darling.",
}

local custom_stats = {
	night_sanity_drain_mult = -0.5,
	health_regen_amount = 1,
	health_regen_period = 20,
}

--=-------------------------- Stats


-- Custom starting inventory
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.WELINA = {
	"wcard_diary",
	"nightmarefuel",
	"nightmarefuel",
	"nightmarefuel",
	"nightmarefuel",
	"nightmarefuel",
	"nightmarefuel",
	"nightmarefuel",
	"nightmarefuel",
	"nightmarefuel",
	"nightmarefuel",
}

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
	start_inv[string.lower(k)] = v.WELINA
end
local prefabs = FlattenTree(start_inv, true)

local function DoEffects(pet)
    local x, y, z = pet.Transform:GetWorldPosition()
    SpawnPrefab("statue_transition_2").Transform:SetPosition(x, y, z)
end

local function KillPet(pet)
    pet.components.health:Kill()
end

local function OnSpawnPet(inst, pet)
    if pet:HasTag("shadowminion") then
        --Delayed in case we need to relocate for migration spawning
        pet:DoTaskInTime(0, DoEffects)

        if not (inst.components.health:IsDead() or inst:HasTag("playerghost")) then
			if not inst.components.builder.freebuildmode then
	            inst.components.sanity:AddSanityPenalty(pet, TUNING.SHADOWWAXWELL_SANITY_PENALTY[string.upper(pet.prefab)])
			end
            inst:ListenForEvent("onremove", inst._onpetlost, pet)
        elseif pet._killtask == nil then
            pet._killtask = pet:DoTaskInTime(math.random(), KillPet)
        end
    elseif inst._OnSpawnPet ~= nil then
        inst:_OnSpawnPet(pet)
    end
end

local function OnDespawnPet(inst, pet)
    if pet:HasTag("shadowminion") then
        DoEffects(pet)
        pet:Remove()
    elseif inst._OnDespawnPet ~= nil then
        inst:_OnDespawnPet(pet)
    end
end

local function OnDeath(inst)
    for k, v in pairs(inst.components.petleash:GetPets()) do
        if v:HasTag("shadowminion") and v._killtask == nil then
            v._killtask = v:DoTaskInTime(math.random(), KillPet)
        end
    end
end

local function OnReroll(inst)
    local todespawn = {}
    for k, v in pairs(inst.components.petleash:GetPets()) do
        if v:HasTag("shadowminion") then
            table.insert(todespawn, v)
        end
    end
    for i, v in ipairs(todespawn) do
        inst.components.petleash:DespawnPet(v)
    end
end



----------------------------------------------------------- Mental Fatigue ----------------------------------------------------------- 

local SANITY_TICK_RATE = 1  -- Adjust the tick rate as needed (in seconds)
local MAX_SANITY_COUNTDOWN = TUNING.WILDCARD_MENTALFATIGUE_TIMER	  -- 1 minute
local INDUCED_SANITY_THRESHOLD = 50  -- Adjust the threshold as needed

local function OnUpdate(inst)
    if inst.components.sanity.inducedinsanity and TUNING.WILDCARD_MENTALFATIGUE == 1 then

		local x,y,z = inst.Transform:GetWorldPosition()
		local creatures = TheSim:FindEntities(x,y,z, 50, {"hostile"})

        inst.sanityCountdown = (inst.sanityCountdown or MAX_SANITY_COUNTDOWN) - SANITY_TICK_RATE
        if inst.sanityCountdown <= 0 then

			for k,v in pairs(creatures) do
				if v.components.combat:HasTarget() then
					v.components.combat:DropTarget()
				end
			end

			inst.components.health:SetInvincible(true) --Avoids crash when getting hit --CliffW
            inst:PushEvent("death", { cause = "welina_fatigue" })
            inst.sanityCountdown = nil
        end
		if not inst.SoundEmitter:PlayingSound("cdown") and inst.sanityCountdown <= 300  then
			inst.SoundEmitter:PlaySound("welina_cd/music/wcard_countdown", "cdown")
		end

    else

		if inst.SoundEmitter:PlayingSound("cdown")   then
			inst.SoundEmitter:KillSound("cdown")
		end
        inst.sanityCountdown = (inst.sanityCountdown or MAX_SANITY_COUNTDOWN) + SANITY_TICK_RATE
        if inst.sanityCountdown > MAX_SANITY_COUNTDOWN then
            inst.sanityCountdown = MAX_SANITY_COUNTDOWN
        end
    end
	
end


----------------------------------------------------------- ----------------------------------------------------------- 












--[[
-- When the character is revived from human
local function onbecamehuman(inst)
	-- Set speed when not a ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "welina_speed_mod", 1.0)
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "welina_speed_mod")
end
--]]

local function foodstats(inst, food)
  if inst.components.eater and food.prefab == "carrot" then
    inst.components.sanity:DoDelta(0)
    inst.components.health:DoDelta(0)
    inst.components.hunger:DoDelta(-10)
  end
   if inst.components.eater and food.prefab == "carrot_cooked" then
    inst.components.sanity:DoDelta(0)
    inst.components.health:DoDelta(0)
    inst.components.hunger:DoDelta(-11)
  end
   if inst.components.eater and food.prefab == "petals_evil" then
    inst.components.sanity:DoDelta(0)
    inst.components.health:DoDelta(5)
    inst.components.hunger:DoDelta(15)
  end
end


local function CLIENT_Wildcard_HostileTest(inst, target)
	return (target:HasTag("hostile") or target:HasTag("pig") or target:HasTag("catcoon"))
end

local SHADOWCREATURE_MUST_TAGS = { "shadowcreature", "_combat", "locomotor" }
local SHADOWCREATURE_CANT_TAGS = { "INLIMBO", "notaunt" }
local function OnReadFn(inst, book)
	if inst.components.sanity:IsInsane() then
		local x, y, z = inst.Transform:GetWorldPosition()
		local ents = TheSim:FindEntities(x, y, z, 16, SHADOWCREATURE_MUST_TAGS, SHADOWCREATURE_CANT_TAGS)

		if #ents < TUNING.BOOK_MAX_SHADOWCREATURES then
			TheWorld.components.shadowcreaturespawner:SpawnShadowCreature(inst)
		end
	end
end



local function GetEquippableDapperness(owner, equippable)
	local dapperness = equippable:GetDapperness(owner, owner.components.sanity.no_moisture_penalty)
	return equippable.inst:HasTag("shadow_item")
		and dapperness * 0.5
		or dapperness
	end 

local function SetUserFlagLevel(inst, level)
	--No bit ops support, but in this case, + results in same as |
	local flags = USERFLAGS.CHARACTER_STATE_1 + USERFLAGS.CHARACTER_STATE_2 + USERFLAGS.CHARACTER_STATE_3
	if level > 0 then
		local addflag = USERFLAGS["CHARACTER_STATE_" .. tostring(level)]
		--No bit ops support, but in this case, - results in same as &~
		inst.Network:RemoveUserFlag(flags - addflag)
		inst.Network:AddUserFlag(addflag)
	else
		inst.Network:RemoveUserFlag(flags)
	end
end

local function SetSkinType(inst, skintype, defaultbuild)
	--Return true if build change needs to spawn bloom FX
	local oldskintype = inst.components.skinner:GetSkinMode()
	if oldskintype ~= skintype and
		not (skintype == "ghost_skin" and oldskintype == "normal_skin") and
		not (oldskintype == "ghost_skin" and skintype == "normal_skin") then
		inst.components.skinner:SetSkinMode(skintype, defaultbuild)
		return true
	end
end




local skin_modes =
{
	[0] = "normal_skin",
	[1] = "insane_skin",
	[2] = "winter_skin",
	[4] = "ghost_skin", --Yes, this causes a memory leak. Too bad!

}




--------------------------------------------------------------------------------------------------------- Rabbification

local function TurnRabbit(inst, target)

	--if not inst.components.skilltreeupdater:IsActivated("welina_intimidating_1") then return end
	local target = inst.components.combat.target


	local rabbitification_quotes =	
	{
		
		
		general = 
		{
			"Huuzzaaahh~",
			"Aha-!",
			"Presto!",
			"Abracadabra!",
			"Ta-daaa!",
			"Voilà!",
		},

		bunnymen =
		{
			"Ironic isn't it.",
			"How'd that feel, huh.",
			"Worthless!",
			"Oh my, how the turntables.",
		},

	}

	if not target then return end
	local rabbit_quote = target.prefab ~= "bunnyman" and rabbitification_quotes.general[math.random(1, #rabbitification_quotes.general)] or rabbitification_quotes.bunnymen[math.random(1, #rabbitification_quotes.bunnymen)]

	
	if inst ~= nil and (inst.components.health == nil or not inst.components.health:IsDead()) then

		local prefab_list = 
		{
			rabbit = true, -- guess
			lavae = true, -- they seem to be immune to rabification even when not here for some reason lol
			abigail = true, -- crashes
			hutch = true, -- crashes
			chester = true, -- crashes
			cozy_bunnyman = true, -- probably crashes idk
			mandrake = true, -- crashes
			lureplant = true,	
			eyeplant = true,
			gestalt_guard = true,
			eyeturret = true,
			ghost = true,
			mole = true,
			krampus = true, -- Powder Monkey and Krampus are here because they fucking delete loot they steal when rabbified bruh
			powder_monkey = true,
			--lavae_pet = true,
			
			minotaur = true, -- doesn't spawn chest, so no ancient key, so softlocked
			crabking = true, -- probably crashes idk
			klaus = true, -- didn't test in game but i thought it's pretty obvious
			--stalker_forest = true,
			stalker_atrium = true, -- insta respawns
			--stalker = true,
			--toadstool = true, -- insta respawns
			--toadstool_dark = true, -- insta respawns
			--beequeen = true, -- insta respawns
			
			alterguardian_phase1 = true,
			alterguardian_phase2 = true,
			alterguardian_phase3 = true,
			alterguardian_phase3trap = true,
			alterguardian_phase3dead = true, -- didn't test in game but probably softlocks you if you rabbify him at any point
			
			tentacle_pillar_arm = true,
			tentacle_pillar = true, -- crash
			
			lunarthrall_plant_vine_end = true, -- crash
			lunarthrall_plant_vine = true,
			
			ruins_table = true, -- ruins relics can be rabbified just fine but i thought it was stupid, they also apparently don't have the structure tag for some fucking reason???
			ruins_chair = true,
			ruins_vase = true,
			ruins_plate = true,
			ruins_bowl = true,
			ruins_chipbowl = true,
			
			ruinsrelic_table = true,
			ruinsrelic_chair = true,
			ruinsrelic_vase = true,
			ruinsrelic_plate = true,
			ruinsrelic_bowl = true,
			ruinsrelic_chipbowl = true,
			
			--archive_centipede_husk = true,
			--archive_centipede = true,
			
		}

		--This is a bad way to implement Bunnyfying. but DST and LUA forced my hand.
		if target and target ~= inst and not target:HasTag("player") and not prefab_list[target.prefab] and target:IsValid() and (target.components.health == nil or not target.components.health:IsDead() and not target:HasTag("structure") and not target:HasTag("shadow") and not target:HasTag("shadowminion") and not target:HasTag("wall")) and TUNING.WILDCARD_RABBIFICATION == 1 then
			local barehands = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS) == nil
			
			if math.random() <= 0.2 and target.components.health and target.components.health:GetPercent() <= 0.2 and barehands then
				local x, y, z = target.Transform:GetWorldPosition()
				local inherited_loot = target.components.lootdropper:GenerateLoot()
				local prev_name = target.name
				local fx = SpawnPrefab("explode_reskin")
				local rabbit = SpawnPrefab("rabbit_wcard")



				rabbit.Transform:SetPosition(x,y,z)
				fx.Transform:SetPosition(x,y,z)
				
				
				
				rabbit._fixedloot = true
				--rabbit.components.lootdropper:SetLoot(inherited_loot)
				--rabbit.components.lootdropper:SetLootSetupFn(nil)
				

				if rabbit.components.inventory then
					for k,v in pairs(inherited_loot) do 
						rabbit.components.inventory:GiveItem(SpawnPrefab(v))
					end
				end

				inst.components.talker:Say(rabbit_quote)

				if target.name and rabbit.name then
					rabbit.name = target.name == "MISSING NAME" and "Rabbified Thing" or "Rabbified "..target.name
					rabbit.components.named:SetName(rabbit.name or "Rabbified Thing")
				end

				if target.components.leader and target.components.leader.followers then
					for k,v in pairs(target.components.leader.followers) do
						local rabbit = SpawnPrefab("rabbit_wcard")
						local fx = SpawnPrefab("explode_reskin")
						local follower_loot = k.components.lootdropper:GenerateLoot()

						rabbit.Transform:SetPosition(k.Transform:GetWorldPosition())
						fx.Transform:SetPosition(k.Transform:GetWorldPosition())

						

						if k.name and rabbit.name then

							rabbit.name = target.name == "MISSING NAME" and "Rabbified Thing" or "Rabbified "..k.name
							rabbit.components.named:SetName(rabbit.name)
						end

						k.components.lootdropper:SetLoot(nil)
						k.components.health:DoDelta(-10000)
						
						inst:DoTaskInTime(0.5, function()
							k:Remove()
						end)
						rabbit._fixedloot = true
						--rabbit.components.lootdropper:SetLoot(follower_loot)
						
						--rabbit.components.lootdropper:SetLootSetupFn(nil)
						if rabbit.components.inventory then
							for k,v in pairs(follower_loot) do 
								rabbit.components.inventory:GiveItem(SpawnPrefab(v))
							end
						end

						
						
						
					end
				end

				if target.prefab == "beequeen" then
					local x,y,z = target.Transform:GetWorldPosition()
					local brumblebees = TheSim:FindEntities(x, y, z, 20)
					
					for k,v in pairs(brumblebees) do 
						if v.prefab == "beeguard" then
							local rabbit = SpawnPrefab("rabbit_wcard")
							local fx = SpawnPrefab("explode_reskin")
							local follower_loot = v.components.lootdropper:GenerateLoot()
	
							rabbit.Transform:SetPosition(v.Transform:GetWorldPosition())
							fx.Transform:SetPosition(v.Transform:GetWorldPosition())
	
							
	
							if v.name and rabbit.name then
	
								rabbit.name = target.name == "MISSING NAME" and "Rabbified Thing" or "Rabbified "..v.name
								rabbit.components.named:SetName(rabbit.name)
							end
	
							v.components.lootdropper:SetLoot(nil)
							v.components.health:DoDelta(-10000)
							
							v:Hide()
							rabbit._fixedloot = true
							--rabbit.components.lootdropper:SetLoot(follower_loot)
							
							--rabbit.components.lootdropper:SetLootSetupFn(nil)
							if rabbit.components.inventory then
								for k,v in pairs(follower_loot) do 
									rabbit.components.inventory:GiveItem(SpawnPrefab(v))
								end
							end
						end
					end
				end




				if target.components.lootdropper.chanceloottable then
					target.components.lootdropper:SetChanceLootTable(nil)
				end
				target.components.health:DoDelta(-1000000)
				if target.prefab == "beequeen" then
					target:Hide()
					target.sg:GoToState("idle")
					target.DynamicShadow:Enable(false)
				else
					target:Remove()
				end



				--Panic
				local panic_ents = TheSim:FindEntities(x, y, z, 20)
				for k,v in pairs(panic_ents) do 
					if v.components.hauntable ~= nil and v.components.hauntable.panicable then
						v.components.hauntable:Panic(10)
					end
				end
				



			end
			

			
			

		end
	end
end


------------------------------------------------------------------------------------------------------------------------












--We check for the winter skin

local function CheckSkin(inst, stage)
	local is_winterbunny = inst:HasTag("winterbunny")
	



	if is_winterbunny then
		stage = inst.isInsane and 1 or 2
	else
		stage = inst.isInsane and 1 or 0
	end






	inst.overrideskinmode = skin_modes[stage]

	if inst:HasTag("playerghost") then return end --this is utterly retarded

	SetSkinType(inst, skin_modes[stage], "wilson")

	SetUserFlagLevel(inst, stage)
end

local function CheckSanity(inst)
	inst.isdead = inst.sg:HasStateTag("dead")
	inst.isInsane = inst.components.sanity:GetPercent() < 0.30


	CheckSkin(inst)
end

--We check what season it is and then check for the skin

local function OnSeasonChange(inst)
	if TheWorld.state.iswinter then
		inst:AddTag("winterbunny")
	else
		inst:RemoveTag("winterbunny")
	end

	CheckSkin(inst)
end

--Make sure we do the check on spawned players too

local function OnNewSpawn(inst, stage)
	OnSeasonChange(inst)
end

--SKY: Check how many Nightmare Fuel we have. This isn't very efficient, but it's solid.
local function CheckNFuel(inst)
	inst:DoTaskInTime(0, function()
		local count = 0
		local items = inst.components.inventory:GetItemByName("nightmarefuel", 999, false)
		for k, v in pairs(items) do
			if k and k.components.stackable then
				count = count + k.components.stackable:StackSize()
			end
		end
	
		--SKY: TODO add tuning
		if count > TUNING.WILDCARD_FUEL_HUNGERDRAIN then
			--SKY: Use a burnrate modifier instead of modifying hungerrate directly. I prefer this personally, but we do have to work around 0.9 hungerrate because of it.
			inst.components.hunger.burnratemodifiers:SetModifier(inst, ((count - TUNING.WILDCARD_FUEL_HUNGERDRAIN) * 0.01 + TUNING.WILDCARD_HUNGERDRAIN) / TUNING.WILDCARD_HUNGERDRAIN, "nightmarefuel_hunger")
		else
			inst.components.hunger.burnratemodifiers:SetModifier(inst, 1, "nightmarefuel_hunger")
		end
	end)
end


-- This initializes for both the server and client. Tags can be added here.

local common_postinit = function(inst)
	-- Minimap icon
	inst.MiniMapEntity:SetIcon("welina.tex")

	inst:AddTag("horrorbunnygirl")
	inst:AddTag("horrorbunnybuilder")
	
	if TUNING.WILDCARD_MONSTER == 1 then
	inst:AddTag("playermonster")
	inst:AddTag("monster")
	end
	
	--inst:AddTag("reader")
	inst:AddTag("dappereffects")
	inst:AddTag("player_shadow_aligned")
	inst:AddTag("shadow_fire")
	
	if TUNING.WILDCARD_INSOMNIA == 1 then
	inst:AddTag("insomniac")
	end
	
	if TUNING.WILDCARD_LITERACY == 1 then
	inst:AddTag("reader")
	end

	inst.components.talker.font = TALKINGFONT_WILDCARD


	inst.overrideskinmode = TheWorld.state.iswinter and "winter_skin" or
		(inst:HasTag("playerghost") and "ghost_skin" or "normal_skin")
	inst.customidleanim = "idle_wendy"
end
-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	-- Set starting inventory
	inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default

	--inst.components.foodaffinity:AddPrefabAffinity("petals_evil", TUNING.AFFINITY_15_CALORIES_MED)

	-- choose which sounds this character will play
	--inst.soundsname = "welina"
	inst.talker_path_override = "welina/characters/"
	inst.soundsname = TUNING.WILDCARD_VOICE

	-- Uncomment if "wathgrithr"(Wigfrid) or "webber" voice is used
	--inst.talker_path_override = "dontstarve_DLC001/characters/"

	-- Stats	
	inst.components.health:SetMaxHealth(TUNING.WILDCARD_HEALTH)

	inst.components.hunger:SetMax(TUNING.WILDCARD_HUNGER)

	inst.components.sanity:SetMax(TUNING.WILDCARD_SANITY)
	inst.components.sanity.dapperness = TUNING.WILDCARD_DAPPERNESS
	inst.components.sanity.get_equippable_dappernessfn = GetEquippableDapperness
	--inst.components.sanity.sanity_aura_immune = true

	inst:AddComponent("staffsanity")
	inst.components.staffsanity:SetMultiplier(TUNING.WILDCARD_STAFFSANITY)

	if TUNING.WILDCARD_DIET == 1 then
	
	if inst.components.eater ~= nil then
		inst.components.eater:SetPrefersEatingTag("horrorbunnygirl")
		inst.components.eater:SetDiet({ FOODGROUP.OMNI, FOODTYPE.WILDCARD_EDIBLE },
			{ FOODGROUP.OMNI, FOODTYPE.WILDCARD_EDIBLE })
	end
	
	inst.components.eater:SetOnEatFn(foodstats)
	
	end




	-- Damage multiplier (optional)
	inst.components.combat.damagemultiplier = TUNING.WILDCARD_DAMAGE

	if TUNING.WILDCARD_LITERACY == 1 then
	inst:AddComponent("reader")
	inst.components.reader:SetSanityPenaltyMultiplier(1)
	inst.components.reader:SetOnReadFn(OnReadFn)
	end
	
	    if inst.components.petleash ~= nil then
        inst._OnSpawnPet = inst.components.petleash.onspawnfn
        inst._OnDespawnPet = inst.components.petleash.ondespawnfn
        inst.components.petleash:SetMaxPets(inst.components.petleash:GetMaxPets() + 4)
    else
        inst:AddComponent("petleash")
        inst.components.petleash:SetMaxPets(4)
    end
    inst.components.petleash:SetOnSpawnFn(OnSpawnPet)
    inst.components.petleash:SetOnDespawnFn(OnDespawnPet)

	--inst:AddComponent("sanityaura")
	--inst.components.sanityaura.aura = -TUNING.SANITYAURA_LARGE

	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = TUNING.WILDCARD_HUNGERDRAIN * TUNING.WILSON_HUNGER_RATE
	
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "welina_speed_mod", TUNING.WILDCARD_MOVESPEED)

	-- Sanity aura
	--inst.components.sanity.night_drain_mult = custom_stats.night_sanity_drain_mult
	--inst.components.health:StartRegen(custom_stats.health_regen_amount, custom_stats.health_regen_period) -- (amount, period)

	-- inst:ListenForEvent("healthdelta", SetDark)
	inst:WatchWorldState("iswinter", OnSeasonChange)



	

	inst:ListenForEvent("sanitydelta", function()
		CheckSanity(inst)
		
		if inst.components.sanity:GetPercent() == 0 and not inst.components.sanity.inducedinsanity and TUNING.WILDCARD_BRAINTRAUMA == 1 then
			inst.components.health:SetInvincible(true) --Avoids crash when getting hit --CliffW
			local x,y,z = inst.Transform:GetWorldPosition()
			local creatures = TheSim:FindEntities(x,y,z, 50, {"hostile"})
				for k,v in pairs(creatures) do
					if v.components.combat:HasTarget() then
						v.components.combat:DropTarget()
					end
				end
			inst:PushEvent("death", { cause = "welina_braind" })

--[[
			if inst.userid then 
				SendRPCToClient(CLIENT_RPC.UpdateAccomplishment, inst.userid, "insanity_killed")
				
			end
--]]
		end
	end)
	

	inst:ListenForEvent("sanitydelta", function() OnUpdate(inst) end)

	

	inst:ListenForEvent("ms_becameghost", function()
		SetSkinType(inst, "ghost_skin", "ghost_wilson_build")
	end)




    inst:ListenForEvent("death", OnDeath)
    inst:ListenForEvent("ms_becameghost", OnDeath)
    inst:ListenForEvent("ms_playerreroll", OnReroll)

	--SKY: Event listeners for nightmarefuel hunger burnrate

	--SKY: :(
	inst:DoPeriodicTask(10, CheckNFuel)

	--SKY: These will cover most cases immediately, periodic task is a backup.
	inst:ListenForEvent("itemget", CheckNFuel)
	inst:ListenForEvent("itemlose", CheckNFuel)
	inst:ListenForEvent("gotnewitem", CheckNFuel)
	inst:ListenForEvent("dropitem", CheckNFuel)
	inst:ListenForEvent("stacksizechange", CheckNFuel)

	local function ScytheBuff(inst, data)
		if data.weapon and data.weapon.prefab == "voidcloth_scythe" and TUNING.WILDCARD_SHADOWWEAPONBUFF == 1 then
			data.target.components.combat:GetAttacked(inst, inst.components.combat:CalcDamage(data.target, data.weapon) * 0.25, data.weapon)
		end
	end

	inst:ListenForEvent("onattackother", ScytheBuff)

	
	inst:ListenForEvent("onattackother", TurnRabbit)
	
	inst:ListenForEvent("killed", function(inst, data)
	local victim = data.victim
	if not victim then
		return
	end
	
	if victim.prefab == "terrorbeak" or victim.prefab == "crawlinghorror" or victim.prefab == "crawlingnightmare" or victim.prefab == "nightmarebeak" then
	
	local NFdropChance = math.random(0, 3)

	local lootdropper = victim.components.lootdropper
	
	if lootdropper and NFdropChance == 3 and TUNING.WILDCARD_EXTRADROPS == 1 then
		local victimpos = victim:GetPosition()
		lootdropper:SpawnLootPrefab("nightmarefuel", victimpos)
	end
	end
end)
		


	inst.OnNewSpawn = OnNewSpawn
	inst.inittask = inst:DoTaskInTime(0, OnNewSpawn)

	--inst:ListenForEvent("newstate", SetDark)


	-- Equip check
	--[[
	inst:ListenForEvent("equip", OnEquipCustom)	
	inst:ListenForEvent("unequip", OnUnequipCustom)	

	-- Can't wear head slot items except amulets
	
	local oldEquip = inst.components.inventory.Equip	
	inst.components.inventory.Equip = function(self, item, old_to_active)
		if not item or not item.components.equippable or not item:IsValid() then
			return		
		end
		
		if (item.components.equippable.equipslot == EQUIPSLOTS.HEAD and not (item:HasTag("welinaspecial"))) then		
			self:DropItem(item)
			self:GiveItem(item)
			if inst and inst.components.talker then
				inst.components.talker:Say(voice_lines.equip_head)
			end
			return
		end		
		return oldEquip(self, item, old_to_active)	
	end	
--]]
end


return MakePlayerCharacter("welina", prefabs, assets, common_postinit, master_postinit, prefabs)
