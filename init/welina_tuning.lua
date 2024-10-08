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



TUNING.WELINA_VOMIT_ITEMS =
{

	default = {
		"silk",
		"spoiled_food",
		"spoiled_fish",
		"spoiled_fish_small",
		"butterflywings",
		"lightbulb",
		"rope",
		"twigs",
		"goldnugget",
		"seeds",
		"fireflies",
		"pigskin",
		"beefalowool",
		"petals",
		"acorn",
		--"trinket_33",
		--"trinket_43",
		"halloweencandy_5",
		"halloweencandy_12",
		"halloweencandy_13",
		"cutreeds",
		"pinecone",
		"manrabbit_tail",
		"steelwool",
		"malbatross_feather",
		"furtuft",
		"stinger",
		"feather_crow",
		"feather_robin",
		"feather_robin_winter",
		"feather_canary",
		"petals_evil",
		"succulent_picked",
		"cutlichen", --NOTE:(CW) She dont spit entire bush brotha
		"foliage",
		"beardhair",
		"goose_feather",
		"slurtle_shellpieces",
		"moonrocknugget",
		"thulecite_pieces",
		"nitre",
		"tentaclespots",
		"marblebean",
		"moon_tree_blossom",
		"kelp",
		"carrot_seeds",
		"corn_seeds",
		"dragonfruit_seeds",
		"durian_seeds",
		"eggplant_seeds",
		"pomegranate_seeds",
		"pumpkin_seeds",
		"watermelon_seeds",
		"asparagus_seeds",
		"potato_seeds",
		"tomato_seeds",
		"pepper_seeds",
		"onion_seeds",
		"garlic_seeds",
		"wormlight_lesser",
		"wetgoop",
		"pondfish",
		"turf_carpetfloor",
		"turf_beard_rug",
		--"halloween_ornament_5",
		--"halloween_ornament_2",
		"trinket_9",
		"featherpencil",
		"winter_food1",
	
	},

	random = {
		phlegm = 
		{
			"steelwool",
			"malbatross_feather",
			"pigskin",
			"carnival_vest_a", -- she killed the crowkids
			"bedroll_furry",
			"trinket_3",
			"gunpowder",
			"featherpencil",
			"giftwrap",
			"foliage",
			"halloween_ornament_5",
			"halloween_ornament_2",
			"trinket_33",
			"trinket_43",
			"wetgoop",
			"twigs",
			"cutgrass",
		},
		
		yotpfood2 = 
		{
			"pigskin",
			"steelwool",
			"potato_seeds",
			"tomato_seeds",
			"pepper_seeds",
			
		},
		
		pigskin = 
		{
			"malbatross_feather",
			"pigskin",
			"trinket_3",
			"sewing_kit",
			"giftwrap",
			"moonrocknugget",
			"foliage",
			"gunpowder",
			"glommerwings",
			"halloween_ornament_5",
			"halloween_ornament_2",
			"trinket_33",
			"trinket_43",
			"wetgoop",
			"twigs",
			"cutgrass",
			"potato_seeds",
			"tomato_seeds",
			"pepper_seeds",
			
		},
		
		slurper_pelt = 
		{
			"eel",
			"manrabbit_tail",
			"purplegem",
			"thulecite_pieces",
			"moonrocknugget",
			"foliage",
			"cutlichen",
			"wormlight_lesser",
			"wetgoop",
			"twigs",
			"cutgrass",
			"potato_seeds",
			"tomato_seeds",
			"pepper_seeds",
		},

		spoiled_fish = 
		{
			"wetgoop",
			"twigs",
			"cutgrass",
			"potato_seeds",
			"tomato_seeds",
			"pepper_seeds",
		},

		spoiled_fish_small = 
		{
			"wetgoop",
			"twigs",
			"cutgrass",
		},
		
		wetgoop = 
		{
			"wetgoop",
			"twigs",
			"cutgrass",
		},
		
		wintersfeastfuel = 
		{
			"wetgoop",
			"twigs",
			"cutgrass",
			"giftwrap",
		},

		rottenegg = 
		{
			"wetgoop",
			"twigs",
			"cutgrass",
		},

		spoiled_food = 
		{
			"wetgoop",
			"twigs",
			"cutgrass",
		},
		
		fruitcake = 
		{
			"winter_ornament_light1",
			"winter_ornament_light2",
			"winter_ornament_light3",
			"winter_ornament_light4",
			"winter_ornament_light5",
			"winter_ornament_light6",
			"winter_ornament_light7",
			"winter_ornament_light8",
			"winter_ornament_festivalevents1",
			"winter_ornament_festivalevents2",
			"winter_ornament_festivalevents3",
			"winter_ornament_boss_hermithouse",
			"winter_ornament_boss_pearl",
			"winter_ornament_boss_bearger",
			"winter_ornament_boss_moose",
			"winter_ornament_boss_deerclops",
			"winter_ornament_plain1",
			"winter_ornament_plain2",
			"winter_ornament_plain3",
			"winter_ornament_plain4",
			"winter_ornament_plain5",
			"winter_ornament_plain6",
			"winter_ornament_plain7",
			"winter_ornament_plain8",
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
