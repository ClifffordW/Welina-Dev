
--AddPrefab("welina_hiss")
--AddPrefab("catcoonden")
AddPrefab("welina_collar")
AddPrefab("welina_catnip")
AddPrefab("welina_catcoon")



STRINGS.RECIPE_DESC.WELINA_COLLAR = "Put your feline friends on the edge."
STRINGS.NAMES.WELINA_COLLAR = "Spiked Collar"

--[[
STRINGS.RECIPE_DESC.CATCOONDEN = "Cozy."

AddCharacterRecipe("catcoonden", -- name
    {                            -- ingredients
        Ingredient("papyrus", 5),
        Ingredient("nightmarefuel", 5),
    },
    GLOBAL.TECH.NONE, -- tech
    {              -- config
        placer = "catcoonden_placer",
        builder_tag = "emocatgirl",
        atlas = "images/inventoryimages/welina_items.xml",
        image = "catcoon_den.tex",

    },
    { -- filters
        "MAGIC",
        "MODS",
    })
--]]


AddCharacterRecipe("welina_collar", -- name
    {                                 -- ingredients
        GLOBAL.Ingredient("coontail", 1),
        GLOBAL.Ingredient("nightmarefuel", 2),
		GLOBAL.Ingredient("flint", 5),
    },
    GLOBAL.TECH.NONE, -- tech
    {                        -- config

        atlas = "images/inventoryimages/welina_items.xml",
        image = "welina_collar.tex",
        builder_tag = "emocatgirl",

        product = "welina_collar",
        numtogive = 1,

    },
    { -- filters
        "MODS",
        "TOOLS",
    }
)
