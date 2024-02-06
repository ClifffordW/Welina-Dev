local MakePlayerCharacter = require "prefabs/player_common"


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



-- This initializes for both the server and client. Tags can be added here.

local common_postinit = function(inst)
	-- Minimap icon
	inst.MiniMapEntity:SetIcon("welina.tex")
	
	

	inst:AddTag("emocatgirl")


	--inst.components.talker.font = TALKINGFONT_WELINA

	--inst.customidleanim = "idle_wendy"
end
-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	-- Set starting inventory
	inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default

	--inst.components.foodaffinity:AddPrefabAffinity("petals_evil", TUNING.AFFINITY_15_CALORIES_MED)

	inst.talker_path_override = "scotchmintz_characters/characters/"
	inst.soundsname = "welina"


	-- Stats	
	inst.components.health:SetMaxHealth(TUNING.WELINA_HEALTH)

	inst.components.hunger:SetMax(TUNING.WELINA_HUNGER)

	inst.components.sanity:SetMax(TUNING.WELINA_SANITY)
	inst.components.sanity.sanity_aura_immune = true


	-- Damage multiplier (optional)
	inst.components.combat.damagemultiplier = TUNING.WELINA_DAMAGE

	

	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = TUNING.WELINA_HUNGERDRAIN * TUNING.WILSON_HUNGER_RATE
	
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "welina_speed_mod", TUNING.WELINA_MOVESPEED)



	end


return MakePlayerCharacter("welina", prefabs, assets, common_postinit, master_postinit, prefabs)
