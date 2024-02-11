modimport("articore/articore_api")
PrefabFiles = {
	"welina_skins",
}

Assets = {
	Asset("ANIM", "anim/welina.zip"),
	Asset("ANIM", "anim/ghost_welina_build.zip"),

    Asset("IMAGE", "images/saveslot_portraits/welina.tex" ),
    Asset("ATLAS", "images/saveslot_portraits/welina.xml" ),

    Asset("IMAGE", "images/selectscreen_portraits/welina.tex" ),
    Asset("ATLAS", "images/selectscreen_portraits/welina.xml" ),

    Asset("IMAGE", "images/selectscreen_portraits/welina_silho.tex" ),
    Asset("ATLAS", "images/selectscreen_portraits/welina_silho.xml" ),




    Asset("IMAGE", "bigportraits/welina.tex" ),
    Asset("ATLAS", "bigportraits/welina.xml" ),

    Asset("IMAGE", "bigportraits/welina_none.tex" ),
    Asset("ATLAS", "bigportraits/welina_none.xml" ),

    --Big Portraits End

    Asset("IMAGE", "images/map_icons/welina.tex" ),
    Asset("ATLAS", "images/map_icons/welina.xml" ),

    Asset("IMAGE", "images/avatars/avatar_welina.tex" ),
    Asset("ATLAS", "images/avatars/avatar_welina.xml" ),

    Asset("IMAGE", "images/avatars/avatar_ghost_welina.tex" ),
    Asset("ATLAS", "images/avatars/avatar_ghost_welina.xml" ),

    Asset("IMAGE", "images/avatars/self_inspect_welina.tex" ),
    Asset("ATLAS", "images/avatars/self_inspect_welina.xml" ),

    Asset("IMAGE", "images/names_welina.tex" ),
    Asset("ATLAS", "images/names_welina.xml" ),

    Asset("IMAGE", "images/names_gold_welina.tex" ),
    Asset("ATLAS", "images/names_gold_welina.xml" ),

	Asset( "IMAGE", "images/inventoryimages/welina_items.tex" ),
    Asset( "ATLAS", "images/inventoryimages/welina_items.xml" ),


}


local STRINGS = GLOBAL.STRINGS

--Localization for Chinese (S/T)
local lang_lookups =
{
	en =
	{
		name = "Welina",
        a1 = "Placeholder",
        a2 = "Placeholder",
        a3 = "Placeholder",
        quote = "Placeholder",
        title = "The Downcat",
        favfood = "None",
        favfood_string = "Favourite Food",
        hidden = "Is yet to be revealed.",
        bday_h = "Birthday",
        past_h = "Designers Notes",
        aboutme = "A cat that is severely down on her luck.",
        skindesc = "Welina doesn't like wearing too much clothing.",

        bday = "Unknown",
        past =
        [[I'll write this shit later.
		
		
		]],
		
        

		
	},
    

	zh = 
	{
		name = "Welina",
        a1 = "Placeholder",
        a2 = "Placeholder",
        a3 = "Placeholder",
        quote = "Placeholder",
        title = "The Downcat",
        favfood = "None",
        favfood_string = "Favourite Food",
        hidden = "Is yet to be revealed.",
        bday_h = "Birthday",
        past_h = "Designers Notes",
        aboutme = "A cat that is severely down on her luck.",
        skindesc = "Welina doesn't like wearing too much clothing.",

        bday = "Unknown",
        past =
        [[I'll write this shit later.
		
		
		]],

    },
        

    

}

local locale = GLOBAL.LOC.GetLocaleCode()
local lookup = (lang_lookups[locale] or lang_lookups.en)



AddCharacter("welina", lookup.name , "female", lookup.title, lookup.quote, lookup.skindesc,"welina", "welina", "Slim", false)
CharacterAbillity("welina", lookup.a1 , lookup.a2 , lookup.a3)





STRINGS.CHARACTER_ABOUTME.welina = lookup.aboutme
STRINGS.CHARACTER_BIOS.welina = {
 { title = lookup.bday_h, desc = lookup.bday },
 { title = lookup.favfood_string, desc = lookup.favfood },
 { title = lookup.past_h, desc = lookup.past},
}

STRINGS.CHARACTER_SURVIVABILITY.welina= "Slim"


TUNING.WILDCARD_HEALTH = GetModConfigData("WELINA_HEALTH")
TUNING.WILDCARD_HUNGER = GetModConfigData("WELINA_HUNGER")
TUNING.WILDCARD_SANITY = GetModConfigData("WELINA_SANITY")

