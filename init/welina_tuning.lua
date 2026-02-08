local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

TUNING.WELINA_HEALTH = GetModConfigData("WELINA_HEALTH")
TUNING.WELINA_SANITY = GetModConfigData("WELINA_SANITY")
TUNING.WELINA_HUNGER = GetModConfigData("WELINA_HUNGER")
TUNING.WELINA_HUNGERDRAIN = GetModConfigData("WELINA_HUNGERDRAIN")
TUNING.WELINA_DAMAGE = GetModConfigData("WELINA_DAMAGE")
TUNING.WELINA_MOVESPEED = GetModConfigData("WELINA_MOVESPEED")
TUNING.WELINA_OSP = GetModConfigData("WELINA_OSP")
TUNING.WELINA_OSP_THRESHOLD = GetModConfigData("WELINA_OSP_THRESHOLD")
TUNING.WELINA_WATERPENALTY = GetModConfigData("WELINA_WATERPENALTY")
TUNING.WELINA_REFLECT = GetModConfigData("WELINA_REFLECT")
TUNING.WELINA_REFLECT_AMOUNT = GetModConfigData("WELINA_REFLECT_AMOUNT")
--TUNING.WELINA_CATCOONHATS = GetModConfigData("WELINA_CATCOONHATS")
TUNING.WELINA_9LIVES = GetModConfigData("WELINA_9LIVES")
TUNING.WELINA_RESENTMENT = GetModConfigData("WELINA_RESENTMENT")
TUNING.WELINA_RESENTMENT_MAX_HP = GetModConfigData("WELINA_RESENTMENT_MAX_HP")
TUNING.WELINA_RESENTMENT_MAX_HP_PENALTY_MULT = GetModConfigData("WELINA_RESENTMENT_MAX_HP_PENALTY_MULT")
TUNING.WELINA_RESENTMENT_MAX_HP_PENALTY_MULT_BOSS = GetModConfigData("WELINA_RESENTMENT_MAX_HP_PENALTY_MULT_BOSS")
TUNING.WELINA_SANITY_MULT = GetModConfigData("WELINA_SANITY_MULT")
TUNING.WELINA_INSOMNIA = GetModConfigData("WELINA_INSOMNIA")
TUNING.WELINA_NIGHTVISION = GetModConfigData("WELINA_NIGHTVISION")
TUNING.WELINA_CRAFTABLE_DENS = GetModConfigData("WELINA_CRAFTABLE_DENS")

TUNING.WELINA_LASTLIFE_MUSIC = GetModConfigData("WELINA_LASTLIFE_MUSIC")
TUNING.WELINA_CATCOON_LAWNMOWER = GetModConfigData("WELINA_CATCOON_LAWNMOWER")
TUNING.WELINA_CATCOON_MAX_DIST_FROM_LEADER = 16


TUNING.MOVING_CATTOY_EYES = 0 --Shit was broken, fix later

TUNING.WELINA_CATNIP_MUSIC = GetModConfigData("WELINA_CATNIP_MUSIC")

local commonChance = 100
local uncommonChance = 70
local rareChance = 50
local superrareChance = 10
local legendaryChance = 5


TUNING.WELINA_VOMIT_ITEMS =
{

	default = {
	-- Common
		["silk"] = commonChance,
		["spoiled_food"] = commonChance,
		["spoiled_fish"] = commonChance,
		["spoiled_fish_small"] = commonChance,
		["butterflywings"] = commonChance,
		["lightbulb"] = commonChance,
		["twigs"] = commonChance,
		["slurtle_shellpieces"] = commonChance,
		["seeds"] = commonChance,	
		["petals"] = commonChance,
		["acorn"] = commonChance,
		["cutreeds"] = commonChance,
		["pinecone"] = commonChance,
		["stinger"] = commonChance,
		["petals_evil"] = commonChance,
		["succulent_picked"] = commonChance,
		["foliage"] = commonChance,
		["kelp"] = commonChance,
	-- Uncommon
		["rope"] = uncommonChance,
		["wetgoop"] = uncommonChance,
		["beefalowool"] = uncommonChance,
		["nitre"] = uncommonChance,
		["furtuft"] = uncommonChance,
		["manrabbit_tail"] = uncommonChance,
		["feather_crow"] = uncommonChance,
		["feather_robin"] = uncommonChance,
		["feather_robin_winter"] = uncommonChance,
		["feather_canary"] = uncommonChance,
		["beefalowool"] = uncommonChance,
	-- Rare
		["goldnugget"] = rareChance,
		["pigskin"] = rareChance,
		["steelwool"] = rareChance,
		["malbatross_feather"] = rareChance,
		["cutlichen"] = rareChance, --NOTE:(CW) She dont spit entire bush brotha
		["beardhair"] = rareChance,
		["goose_feather"] = rareChance,
		["wormlight_lesser"] = rareChance,
		["pondfish"] = rareChance,
		["tentaclespots"] = rareChance,
		["marblebean"] = rareChance,
	-- Legendary
		["moonrocknugget"] = legendaryChance,
		["thulecite_pieces"] = legendaryChance,
		["fireflies"] = legendaryChance,
		["halloweencandy_5"] = legendaryChance,
		["halloweencandy_12"] = legendaryChance,
		["halloweencandy_13"] = legendaryChance,
		["moon_tree_blossom"] = legendaryChance,
		["trinket_9"] = legendaryChance,
		["featherpencil"] = legendaryChance,
		["winter_food1"] = legendaryChance,
		["turf_carpetfloor"] = legendaryChance,
		["turf_beard_rug"] = legendaryChance,
	-- Unsorted
		["carrot_seeds"] = 3,
		["corn_seeds"] = 3,
		["dragonfruit_seeds"] = 3,
		["durian_seeds"] = 3,
		["eggplant_seeds"] = 3,
		["pomegranate_seeds"] = 3,
		["pumpkin_seeds"] = 3,
		["watermelon_seeds"] = 3,
		["asparagus_seeds"] = 3,
		["potato_seeds"] = 3,
		["tomato_seeds"] = 3,
		["pepper_seeds"] = 3,
		["onion_seeds"] = 3,
		["garlic_seeds"] = 3,
		--"trinket_33"] = 1,
		--"trinket_43"] = 1,
		--"halloween_ornament_5"] = 1,
		--"halloween_ornament_2"] = 1,
	
	},

	random = {
		phlegm = 
		{
			["steelwool"] = uncommonChance,
			["malbatross_feather"] = uncommonChance,
			["pigskin"] = uncommonChance,
			["carnival_vest_a"] = legendaryChance, -- she killed the crowkids
			["bedroll_furry"] = legendaryChance,
			["trinket_3"] = rareChance,
			["gunpowder"] = rareChance,
			["featherpencil"] = rareChance,
			["giftwrap"] = rareChance,
			["foliage"] = superrareChance,
			["halloween_ornament_5"] = legendaryChance,
			["halloween_ornament_2"] = legendaryChance,
			["trinket_33"] = superrareChance,
			["trinket_43"] = superrareChance,
			["wetgoop"] = commonChance,
			["twigs"] = commonChance,
			["cutgrass"] = commonChance,
		},
		
		yotpfood2 = 
		{
			["pigskin"] = rareChance,
			["steelwool"] = rareChance,
			["potato_seeds"] = commonChance,
			["tomato_seeds"] = commonChance,
			["pepper_seeds"] = commonChance,
			
		},
		
		pigskin = 
		{
			["malbatross_feather"] = rareChance,
			["trinket_3"] = superrareChance,
			["sewing_kit"] = rareChance,
			["giftwrap"] = rareChance,
			["moonrocknugget"] = rareChance,
			["foliage"] = rareChance,
			["gunpowder"] = rareChance,
			["glommerwings"] = superrareChance,
			["halloween_ornament_5"] = superrareChance,
			["halloween_ornament_2"] = superrareChance,
			["trinket_33"] = rareChance,
			["trinket_43"] = rareChance,
			["wetgoop"] = uncommonChance,
			["twigs"] = commonChance,
			["cutgrass"] = commonChance,
			["potato_seeds"] = uncommonChance,
			["tomato_seeds"] = uncommonChance,
			["pepper_seeds"] = uncommonChance,
			
		},
		
		slurper_pelt = 
		{
			["eel"] = rareChance,
			["manrabbit_tail"] = rareChance,
			["purplegem"] = superrareChance,
			["thulecite_pieces"] = rareChance,
			["moonrocknugget"] = rareChance,
			["foliage"] = commonChance,
			["cutlichen"] = commonChance,
			["wormlight_lesser"] = commonChance,
			["wetgoop"] = uncommonChance,
			["twigs"] = uncommonChance,
			["cutgrass"] = uncommonChance,
			["potato_seeds"] = uncommonChance,
			["tomato_seeds"] = uncommonChance,
			["pepper_seeds"] = uncommonChance,
		},

		spoiled_fish = 
		{
			["wetgoop"] = 1,
			["twigs"] = 1,
			["cutgrass"] = 1,
			["potato_seeds"] = 1,
			["tomato_seeds"] = 1,
			["pepper_seeds"] = 1,
		},

		spoiled_fish_small = 
		{
			["wetgoop"] = 1,
			["twigs"] = 1,
			["cutgrass"] = 1,
		},
		
		wetgoop = 
		{
			["wetgoop"] = 1,
			["twigs"] = 1,
			["cutgrass"] = 1,
		},
		
		wintersfeastfuel = 
		{
			["wetgoop"] = 1,
			["twigs"] = 1,
			["cutgrass"] = 1,
			["giftwrap"] = 1,
		},

		rottenegg = 
		{
			["wetgoop"] = 1,
			["twigs"] = 1,
			["cutgrass"] = 1,
		},

		spoiled_food = 
		{
			["wetgoop"] = 1,
			["twigs"] = 1,
			["cutgrass"] = 1,
		},
		
		fruitcake = 
		{
			["winter_ornament_light1"] = 1,
			["winter_ornament_light2"] = 1,
			["winter_ornament_light3"] = 1,
			["winter_ornament_light4"] = 1,
			["winter_ornament_light5"] = 1,
			["winter_ornament_light6"] = 1,
			["winter_ornament_light7"] = 1,
			["winter_ornament_light8"] = 1,
			["winter_ornament_festivalevents1"] = 1,
			["winter_ornament_festivalevents2"] = 1,
			["winter_ornament_festivalevents3"] = 1,
			["winter_ornament_boss_hermithouse"] = 1,
			["winter_ornament_boss_pearl"] = 1,
			["winter_ornament_boss_bearger"] = 1,
			["winter_ornament_boss_moose"] = 1,
			["winter_ornament_boss_deerclops"] = 1,
			["winter_ornament_plain1"] = 1,
			["winter_ornament_plain2"] = 1,
			["winter_ornament_plain3"] = 1,
			["winter_ornament_plain4"] = 1,
			["winter_ornament_plain5"] = 1,
			["winter_ornament_plain6"] = 1,
			["winter_ornament_plain7"] = 1,
			["winter_ornament_plain8"] = 1,
		},
	}

}

TUNING.WELINA_VOMIT_BONUSITEM_CHANCE = 0.2

local vomit_prefab = 

{	
	"phlegm",
	"spoiled_fish",
	"spoiled_fish_small",
	"wetgoop",
	"rottenegg",
	"spoiled_food",
	"slurper_pelt",
	"yotpfood2",
	"wintersfeastfuel",
	"pigskin",
	"manrabbit_tail",
	"winter_food4",
}

for _,vomit_item in pairs(vomit_prefab) do
	AddPrefabPostInit(vomit_item, function(inst)

		inst:AddTag("vomit_inducer")

	end)
end






TUNING.WELINA_PLAY_SANITY = {
    DEFAULT = 1,
    ["trinket_22"] = 15, -- summerscorcher: Add prefab-to-sanity entries for playing like so. Left side is prefab, right side is sanity points.
	["welina_cattoy"] = 15,
	["balloons_empty"] = 10,
	["trinket_24"] = 10,
	["trinket_1"] = 10,
	["trinket_7"] = 10,
	["canary_poisoned"] = 10,
	["rabbit"] = 8,
	["mole"] = 8,
	["whiskyyarn"] = 8,
	["bernie_active"] = 8,
	["bearger_fur"] = 8,
	["crow"] = 8,
	["robin"] = 8,
	["puffin"] = 8,
	["robin_winter"] = 8,
	["canary"] = 8,
	["mandrake"] = 8,
	["deerclops_eyeball"] = 8,
	["sewing_kit"] = 5,
	["bernie_inactive"] = 5,
	["spidereggsack"] = 5,
	["fish"] = 5,
	["eel"] = 5,
	["slurper_pelt"] = 5,
	["papyrus"] = 5,
	["furtuft"] = 5,
	["featherpencil"] = 5,
	["feather_crow"] = 5,
	["goose_feather"] = 5,
	["malbatross_feather"] = 5,
	["malbatross_feathered_weave"] = 5,
	["feather_robin"] = 5,
	["feather_robin_winter"] = 5,
	["feather_canary"] = 5,
	["turf_carpetfloor"] = 5,
	["turf_beard_rug"] = 5,
	["steelwool"] = 5,
	["wetgoop"] = 5,
	["moonrockseed"] = 5,
	["rope"] = 5,
	["winter_food1"] = 3,
	["tallbirdegg"] = 3,
	["butterflywings"] = 3,
	["lightbulb"] = 3,
	["cutgrass"] = 3,
	["cutreeds"] = 3,
	["beardhair"] = 3,
	["bird_egg"] = 3,
	["twigs"] = 3,
	["silk"] = 3,
	["foliage"] = 3,
	["beefalowool"] = 3,
	["acorn"] = 3,
	["pinecone"] = 3,
	["twiggy_nut"] = 3,
	
}

--Catcoonball
TUNING.CATCOONBALL_USES = 100
TUNING.CATCOONBALL_PASS_TO_PLAYER_CHANCE = 0.1
