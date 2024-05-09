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
	
	Asset( "IMAGE", "bigportraits/ms_welina_gown.tex" ),
    Asset( "ATLAS", "bigportraits/ms_welina_gown.xml" ),
	
	Asset( "IMAGE", "bigportraits/ms_welina_doorman.tex" ),
    Asset( "ATLAS", "bigportraits/ms_welina_doorman.xml" ),

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

AddDynamic("ms_welina_gown")
AddDynamic("ms_welina_doorman")


--For menu remix compatibility
table.insert(Assets, Asset("SOUND", "sound/welina.fsb"))
table.insert(Assets, Asset("SOUNDPACKAGE", "sound/scotchmintz_characters.fev"))
if TUNING.MENUREMIX_MODDEDCHAR_VOICES then
    TUNING.MENUREMIX_MODDEDCHAR_VOICES.welina = "scotchmintz_characters/characters/welina/talk_LP"
end

if STRINGS.MENUREMIX then
    STRINGS.MENUREMIX.MODDEDCHARACTER_LINES.welina = 
    {
        "This looks purr-fect!",
        "This is litter-arly odd feeling",
        "Wel-in-an amazing showdown. I'm the perfect cat ",
        "Miau!",


    }

end

local STRINGS = GLOBAL.STRINGS

--Localization for Chinese (S/T)
local lang_lookups =
{
	en =
	{
		name = "Welina",
        a1 = "Nine Lives",
        a2 = "Edgy, Inside and Outside",
        a3 = "Resentful",
        quote = "The sound of the bell has been unusually loud today...",
        title = "The Downcat",
        favfood = "Unagi",
        favfood_string = "Favourite Food",
        hidden = "Is yet to be revealed.",
        bday_h = "Birthday",
        past_h = "Designers Notes",
        aboutme = "A catcoon girl that doesn't find much joy in life and dreads social interaction.",
        skindesc = "Welina has a flair for the dramatic.",

        bday = "April 13",
        past =
        [[Welina, Welina, Welina... I do like this name, rolls off the tongue pretty well. Anyway I subjected one of those fat catcoons to a life of human problems, to my surprise she was taking it quite well... until she wasn't. 
She turned really nihilistic after a while, and would spend most of her time away from the other catcoons. Maybe she just started seeing herself as superior to them, or maybe she felt like an outlier amongst them. Or maybe the inescapable existential dread has caught up to her? Well such is the burden of being able to conjure complex thoughts and emotions, what'll she do anyway? Kill herself nine times? Ha!


I've presented my results to Master, and yeah, it went about as well as you'd expect. I just can't ever seem to please him anymore, or maybe he just hates me. Ugh, that old man would rather rot than admit that I've surpassed his expectations.				
		]],
		
        

		
	},
    

	zh = 
	{
		name = "Welina",
        a1 = "Nine Lives",
        a2 = "Edgy, Inside and Outside",
        a3 = "Resentful",
        quote = "The sound of the bell has been unusually loud today...",
        title = "The Downcat",
        favfood = "Unagi",
        favfood_string = "Favourite Food",
        hidden = "Is yet to be revealed.",
        bday_h = "Birthday",
        past_h = "Designers Notes",
        aboutme = "A catcoon girl that doesn't find much joy in life and dreads social interaction.",
        skindesc = "Welina has a flair for the dramatic.",

        bday = "April 13",
        past =
        [[Welina, Welina, Welina... I do like this name, rolls off the tongue pretty well. Anyway I subjected one of those fat catcoons to a life of human problems, to my surprise she was taking it quite well... until she wasn't. 
She turned really nihilistic after a while, and would spend most of her time away from the other catcoons. Maybe she just started seeing herself as superior to them, or maybe she felt like an outlier amongst them. Or maybe the inescapable existential dread has caught up to her? Well such is the burden of being able to conjure complex thoughts and emotions, what'll she do anyway? Kill herself nine times? Ha!


I've presented my results to Master, and yeah, it went about as well as you'd expect. I just can't ever seem to please him anymore, or maybe he just hates me. Ugh, that old man would rather rot than admit that I've surpassed his expectations.				
		]],

    },
        

    

}

local locale = GLOBAL.LOC.GetLocaleCode()
local lookup = (lang_lookups[locale] or lang_lookups.en)



AddCharacter("welina", lookup.name , "female", lookup.title, lookup.quote, lookup.skindesc,"welina", "welina", "Slim", false)
CharacterAbillity("welina", lookup.a1 , lookup.a2 , lookup.a3)
AddCharacterSkin("welina", "ms_welina_gown", "The Restless", "It's sometimes tempting to shut yourself in dreams.", "When my eyes close, I see terrible things.", true, true, false)
AddCharacterSkin("welina", "ms_welina_doorman", "The Over-Bored", "Welina tries on a shorter cut.", "That's a pretty... metal.. origin story...", true, true, false)



STRINGS.CHARACTER_ABOUTME.welina = lookup.aboutme
STRINGS.CHARACTER_BIOS.welina = {
 { title = lookup.bday_h, desc = lookup.bday },
 { title = lookup.favfood_string, desc = lookup.favfood },
 { title = lookup.past_h, desc = lookup.past},
}

STRINGS.CHARACTER_SURVIVABILITY.welina= "Slim"


TUNING.WELINA_HEALTH = GetModConfigData("WELINA_HEALTH")
TUNING.WELINA_HUNGER = GetModConfigData("WELINA_HUNGER")
TUNING.WELINA_SANITY = GetModConfigData("WELINA_SANITY")

