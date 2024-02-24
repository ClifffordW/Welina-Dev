local _G = GLOBAL
local require = _G.require
local TUNING = _G.TUNING

--AddPrefab("welina_hiss")
AddPrefab("catcoonden")
AddPrefab("catcoon_nametag")


STRINGS.RECIPE_DESC.CATCOONDEN = "Cozy."

STRINGS.RECIPE_DESC.CATCOON_NAMETAG = "Naming thing or whatever."
STRINGS.NAMES.CATCOON_NAMETAG = "Welina's Naming collar"


AddCharacterRecipe("catcoonden", -- name
    {                            -- ingredients
        Ingredient("papyrus", 5),
        Ingredient("nightmarefuel", 5),
    },
    GLOBAL.TECH.NONE, -- tech
    {              -- config
        placer = "catcoonden_placer",
        builder_tag = "emocatgirl",
        atlas = "images/inventoryimages/welina_structures.xml",
        image = "catcoon_den.tex",

    },
    { -- filters
        "MAGIC",
        "MODS",
    })



AddCharacterRecipe("catcoon_nametag", -- name
    {                                 -- ingredients
        GLOBAL.Ingredient("rope", 1),
        GLOBAL.Ingredient("goldnugget", 1),
    },
    GLOBAL.TECH.SCIENCE_ONE, -- tech
    {                        -- config

        atlas = "images/inventoryimages/welina_structures.xml",
        image = "ms_global_nametag_goth.tex",
        builder_tag = "emocatgirl",

        product = "catcoon_nametag",
        numtogive = 1,

    },
    { -- filters
        "MODS",
        "TOOLS",
    }
)
