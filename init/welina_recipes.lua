--AddPrefab("welina_hiss")
AddPrefab("welina_catcoonden")
AddPrefab("welina_collar")
AddPrefab("welina_catnip")
AddPrefab("welina_catcoon")


AddPrefab("catcoonball")


STRINGS.RECIPE_DESC.WELINA_CATCOONDEN = "Cozy."

if TUNING.WELINA_CRAFTABLE_DENS == 1 then
    AddCharacterRecipe("welina_catcoonden", -- name
        {                               -- ingredients
            Ingredient("boards", 4),
            Ingredient("coontail", 4),
            Ingredient("wetgoop", 2),
        },
        GLOBAL.TECH.NONE, -- tech
        {             -- config
            placer = "welina_catcoonden_placer",
            builder_tag = "emocatgirl",
            atlas = "images/inventoryimages/welina_items.xml",
            image = "welina_den.tex",

        },
        { -- filters
            "STRUCTURES",
            "MODS",
        })
end


STRINGS.RECIPE_DESC.WELINA_CATTOY = "Bouncy!"


AddCharacterRecipe("welina_cattoy", -- name
    {                             -- ingredients
        Ingredient("silk", 4),
        Ingredient("coontail", 1),
        Ingredient("wetgoop", 2),
    },
    GLOBAL.TECH.NONE, -- tech
    {                 -- config
        builder_tag = "emocatgirl",
        atlas = "images/inventoryimages/welina_items.xml",
        image = "welina_cattoy.tex",

    },
    { -- filters
        "TOOLS",
        "MODS",
    })




AddCharacterRecipe("welina_collar_spiked", -- name
    {                                      -- ingredients
        GLOBAL.Ingredient("coontail", 2),
        GLOBAL.Ingredient("nightmarefuel", 2),
        GLOBAL.Ingredient("flint", 5),
    },
    GLOBAL.TECH.NONE, -- tech
    {                 -- config

        atlas = "images/inventoryimages/welina_items.xml",
        image = "welina_collar.tex",
        builder_tag = "emocatgirl",

        product = "welina_collar_spiked",
        numtogive = 1,

    },
    { -- filters
        "MODS",
        "TOOLS",
    }
)

AddCharacterRecipe("welina_collar_regen", -- name
    {                                     -- ingredients
        GLOBAL.Ingredient("coontail", 2),
        GLOBAL.Ingredient("bandage", 1),
        GLOBAL.Ingredient("goldnugget", 5),
    },
    GLOBAL.TECH.NONE, -- tech
    {                 -- config

        atlas = "images/inventoryimages/welina_items.xml",
        image = "welina_collar_regen.tex",
        builder_tag = "emocatgirl",

        product = "welina_collar_regen",
        numtogive = 1,

    },
    { -- filters
        "MODS",
        "TOOLS",
    }
)

--[[
AddCharacterRecipe("welina_collar_armor", -- name
    {                                 -- ingredients
        GLOBAL.Ingredient("coontail", 2),
        GLOBAL.Ingredient("rope", 1),
		GLOBAL.Ingredient("marble", 3),
    },
    GLOBAL.TECH.NONE, -- tech
    {                        -- config

        atlas = "images/inventoryimages/welina_items.xml",
        image = "welina_collar_armor.tex",
        builder_tag = "emocatgirl",

        product = "welina_collar_armor",
        numtogive = 1,

    },
    { -- filters
        "MODS",
        "TOOLS",
    }
)
--]]

AddCharacterRecipe("welina_collar_light", -- name
    {                                     -- ingredients
        GLOBAL.Ingredient("coontail", 2),
        GLOBAL.Ingredient("lightbulb", 1),
        GLOBAL.Ingredient("goldnugget", 3),
    },
    GLOBAL.TECH.NONE, -- tech
    {                 -- config

        atlas = "images/inventoryimages/welina_items.xml",
        image = "welina_collar_light.tex",
        builder_tag = "emocatgirl",

        product = "welina_collar_light",
        numtogive = 1,

    },
    { -- filters
        "MODS",
        "TOOLS",
    }
)

AddCharacterRecipe("welina_collar_glass", -- name
    {                                     -- ingredients
        GLOBAL.Ingredient("coontail", 2),
        GLOBAL.Ingredient("moonrocknugget", 1),
        GLOBAL.Ingredient("moonglass", 5),
    },
    GLOBAL.TECH.NONE, -- tech
    {                 -- config

        atlas = "images/inventoryimages/welina_items.xml",
        image = "welina_collar_glass.tex",
        builder_tag = "emocatgirl",

        product = "welina_collar_glass",
        numtogive = 1,

    },
    { -- filters
        "MODS",
        "TOOLS",
    }
)

AddCharacterRecipe("welina_collar_bomb", -- name
    {                                    -- ingredients
        GLOBAL.Ingredient("coontail", 2),
        GLOBAL.Ingredient("gunpowder", 2),
        GLOBAL.Ingredient("nitre", 3),
    },
    GLOBAL.TECH.NONE, -- tech
    {                 -- config

        atlas = "images/inventoryimages/welina_items.xml",
        image = "welina_collar_bomb.tex",
        builder_tag = "emocatgirl",

        product = "welina_collar_bomb",
        numtogive = 1,

    },
    { -- filters
        "MODS",
        "TOOLS",
    }
)


AddCharacterRecipe("welina_catnip", -- name
    {                               -- ingredients
        GLOBAL.Ingredient("foliage", 2),
        GLOBAL.Ingredient("petals", 5),
        GLOBAL.Ingredient("ash", 5),
    },
    GLOBAL.TECH.NONE, -- tech
    {                 -- config

        atlas = "images/inventoryimages/welina_items.xml",
        image = "welina_catnip.tex",
        builder_tag = "emocatgirl",

        product = "welina_catnip",
        numtogive = 1,

    },
    { -- filters
        "MODS",
        "TOOLS",
    }
)
