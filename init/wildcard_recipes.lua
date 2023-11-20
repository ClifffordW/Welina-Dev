local _G = GLOBAL
local require = _G.require
local TUNING = _G.TUNING
local TechTree = require("techtree")
table.insert(TechTree.AVAILABLE_TECH, "WCARD_DIARY")

_G.TECH.NONE.WCARD_DIARY = 0
_G.TECH.WCARD_DIARY_ONE = {WCARD_DIARY = 1}

for k, v in pairs(TUNING.PROTOTYPER_TREES) do
	v.WCARD_DIARY = 0
end

TUNING.PROTOTYPER_TREES.WCARD_DIARY = TechTree.Create({WCARD_DIARY = 1})

for i, v in pairs(_G.AllRecipes) do
	if v.level.WCARD_DIARY == nil then
		v.level.WCARD_DIARY = 0
	end
end

STRINGS.TABS.WCARD_DIARY = "Nightmare Control"

AddPrefab("wcard_diary")


local prototyper_prefab = "wcard_diary"
prototyper_def = {
    icon_atlas = "images/inventoryimages/wcard_craftingicon.xml",
    icon_image = "wcard_craftingicon.tex",
    is_crafting_station = true,
    action_str = "USE",
    filter_text = STRINGS.TABS.WCARD_DIARY
},


AddRecipeFilter({
	name = "BNNUY",
	atlas = "images/inventoryimages/wcard_items.xml", image = "wcard_diary.tex", image_size = 64,
	custom_pos = true,
				},
		5
)

--AddRecipeFilter(filter_def, index)



AddPrototyperDef(prototyper_prefab, prototyper_def)

--AddPrefab("wcard_smokefx")
AddPrefab("wcard_deck")
AddPrefab("wcard_throwingcard")
--AddPrefab("wcard_throwingcard_red") -- fire
--AddPrefab("wcard_throwingcard_blue") -- ice

AddPrefab("wcard_cane")
AddPrefab("shadowwildcard")
AddPrefab("wcard_tophat")
AddPrefab("wcard_callingcard")

AddPrefab("rabbit_wcard")

--AddPrefab("wcard_superstaff")


RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_cane.tex")

RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_deck.tex")

RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_throwingcard.tex")

RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_tophat.tex")
RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_tophat_red.tex")
RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_tophat_yellow.tex")
RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_tophat_white.tex")
RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_tophat_black.tex")

RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_callingcard.tex")


RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_diary.tex")
RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "ms_wcard_diary_deathnote.tex")

RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_digger.tex")
RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_miner.tex")
RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_lumber.tex")
RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_duelist.tex")
--[[
RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_superopalstaff.tex")
RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_supergreenstaff.tex")
RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_superyellowstaff.tex")
RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_superorangestaff.tex")
RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_superfirestaff.tex")
RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_supericestaff.tex")
RegisterInventoryItemAtlas("images/inventoryimages/wcard_items.xml", "wcard_supertelestaff.tex")
--]]



AddRecipe2("wcard_shadowlumber_builder", -- name
	{ -- ingredients
		GLOBAL.Ingredient("rabbit", 1),
		GLOBAL.Ingredient("nightmarefuel", TUNING.SHADOWWILDCARD_COST),
		GLOBAL.Ingredient(CHARACTER_INGREDIENT.HEALTH, 10),
	},
	GLOBAL.TECH.WCARD_DIARY_ONE, -- tech
	{ -- config
		product = nil,
		builder_tag = "horrorbunnybuilder",
		numtogive = nil,
		nounlock = true,
		atlas = "images/inventoryimages/wcard_items.xml",
		image = "wcard_lumber.tex",
	}, 
	{ -- filters
		"MODS",
		"BNNUY",
	}
)

AddRecipe2("wcard_shadowminer_builder", -- name
	{ -- ingredients
		GLOBAL.Ingredient("rabbit", 1),
		GLOBAL.Ingredient("nightmarefuel", TUNING.SHADOWWILDCARD_COST),
		GLOBAL.Ingredient(CHARACTER_INGREDIENT.HEALTH, 10),
	},
	GLOBAL.TECH.WCARD_DIARY_ONE, -- tech
	{ -- config
		product = nil,
		builder_tag = "horrorbunnybuilder",
		numtogive = nil,
		nounlock = true,
		atlas = "images/inventoryimages/wcard_items.xml",
		image = "wcard_miner.tex",
	}, 
	{ -- filters
		"MODS",
		"BNNUY",
	}
)

AddRecipe2("wcard_shadowdigger_builder", -- name
	{ -- ingredients
		GLOBAL.Ingredient("rabbit", 1),
		GLOBAL.Ingredient("nightmarefuel", TUNING.SHADOWWILDCARD_COST),
		GLOBAL.Ingredient(CHARACTER_INGREDIENT.HEALTH, 10),
	},
	GLOBAL.TECH.WCARD_DIARY_ONE, -- tech
	{ -- config
		product = nil,
		builder_tag = "horrorbunnybuilder",
		numtogive = nil,
		nounlock = true,
		atlas = "images/inventoryimages/wcard_items.xml",
		image = "wcard_digger.tex",
	}, 
	{ -- filters
		"MODS",
		"BNNUY",
	}
)

AddRecipe2("wcard_shadowduelist_builder", -- name
	{ -- ingredients
		GLOBAL.Ingredient("rabbit", 1),
		GLOBAL.Ingredient("nightmarefuel", TUNING.SHADOWWILDCARD_COST),
		GLOBAL.Ingredient(CHARACTER_INGREDIENT.HEALTH, 10),
	},
	GLOBAL.TECH.WCARD_DIARY_ONE, -- tech
	{ -- config
		product = nil,
		builder_tag = "horrorbunnybuilder",
		numtogive = nil,
		nounlock = true,
		atlas = "images/inventoryimages/wcard_items.xml",
		image = "wcard_duelist.tex",
	}, 
	{ -- filters
		"MODS",
		"BNNUY",
	}
)




AddCharacterRecipe("wcard_diary", -- name
	{ -- ingredients
		GLOBAL.Ingredient("papyrus", 5),
		GLOBAL.Ingredient("nightmarefuel", 5),
	},
	GLOBAL.TECH.NONE, -- tech
	{ -- config
		product = "wcard_diary",
		builder_tag = "horrorbunnybuilder",
		numtogive = 1,
		nounlock = true,
	}, 
	{ -- filters
		"MAGIC",
		"MODS",
	})


	AddRecipe2("wcard_tophat", -- name
	{ -- ingredients
		GLOBAL.Ingredient("silk", 8),
		GLOBAL.Ingredient("nightmarefuel", 5),
		GLOBAL.Ingredient("rabbit", 2),
	},
	GLOBAL.TECH.WCARD_DIARY_ONE, -- tech
	{ -- config
		product = "wcard_tophat",
		builder_tag = "horrorbunnybuilder",
		numtogive = 1,
		nounlock = true,
	}, 
	{ -- filters
		"BNNUY",
		"MODS",
	})


	AddRecipe2("wcard_callingcard", -- name
	{ -- ingredients
		GLOBAL.Ingredient("papyrus", 1),
		GLOBAL.Ingredient("nightmarefuel", 1),
	},
	GLOBAL.TECH.WCARD_DIARY_ONE, -- tech
	{ -- config
		product = "wcard_callingcard",
		builder_tag = "horrorbunnybuilder",
		numtogive = 2,
		nounlock = true,
	}, 
	{ -- filters
		"BNNUY",
		"MODS",
	})
	
	AddRecipe2("wcardrabbit", -- name
	{ -- ingredients
		GLOBAL.Ingredient("manrabbit_tail", 2),
		GLOBAL.Ingredient("nightmarefuel", 2),
	},
	GLOBAL.TECH.WCARD_DIARY_ONE, -- tech
	{ -- config
		product = "rabbit",
		builder_tag = "horrorbunnybuilder",
		numtogive = 1,
		nounlock = true,
		no_deconstruction = true,
	}, 
	{ -- filters
		"BNNUY",
		"MODS",
	})

--[[	
	AddRecipe2("wcard_deck", -- name
	{ -- ingredients
		GLOBAL.Ingredient("papyrus", 2),
		GLOBAL.Ingredient("nightmarefuel", 1),
	},
	GLOBAL.TECH.WCARD_DIARY_ONE, -- tech
	{ -- config
		product = "wcard_deck",
		builder_tag = "horrorbunnybuilder",
		numtogive = 1,
		nounlock = true,
	}, 
	{ -- filters
		"MODS",
		"BNNUY",
	})








AddCharacterRecipe("wcard_throwingcard", -- name
	{ -- ingredients
		GLOBAL.Ingredient("papyrus", 2),
		GLOBAL.Ingredient("nightmarefuel", 1),
	},
	GLOBAL.TECH.NONE, -- tech
	{ -- config
		product = "wcard_throwingcard",
		builder_tag = "horrorbunnybuilder",
		numtogive = 1,
	}, 
	{ -- filters
		"CLOTHING",
		"MODS",
		"RAIN",
		"SUMMER",
	}
)

AddRecipe2("wcard_cane", -- name
	{ -- ingredients
		GLOBAL.Ingredient("papyrus", 2),
		GLOBAL.Ingredient("nightmarefuel", 1),
	},
	GLOBAL.TECH.WCARD_DIARY_ONE, -- tech
	{ -- config
		product = "wcard_cane",
		builder_tag = "horrorbunnybuilder",
		numtogive = 1,
		nounlock = true,
	}, 
	{ -- filters
		"MODS",
		"BNNUY",
	}
)

--]]