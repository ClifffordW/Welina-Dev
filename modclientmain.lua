modimport("articore/articore_api")
PrefabFiles = {
	"wildcard_skins",
    "wcard_itemskins",
    "wcard_diary",

}

Assets = {
	Asset("ANIM", "anim/wildcard.zip"),
	Asset("ANIM", "anim/ghost_wildcard_build.zip"),

    Asset("IMAGE", "images/saveslot_portraits/wildcard.tex" ),
    Asset("ATLAS", "images/saveslot_portraits/wildcard.xml" ),

    Asset("IMAGE", "images/selectscreen_portraits/wildcard.tex" ),
    Asset("ATLAS", "images/selectscreen_portraits/wildcard.xml" ),

    Asset("IMAGE", "images/selectscreen_portraits/wildcard_silho.tex" ),
    Asset("ATLAS", "images/selectscreen_portraits/wildcard_silho.xml" ),




    Asset("IMAGE", "bigportraits/wildcard.tex" ),
    Asset("ATLAS", "bigportraits/wildcard.xml" ),

    Asset("IMAGE", "bigportraits/wildcard_none.tex" ),
    Asset("ATLAS", "bigportraits/wildcard_none.xml" ),

    Asset( "IMAGE", "bigportraits/ms_wildcard_goth.tex" ),
    Asset( "ATLAS", "bigportraits/ms_wildcard_goth.xml" ),
	
	Asset( "IMAGE", "bigportraits/ms_wildcard_dealer.tex" ),
    Asset( "ATLAS", "bigportraits/ms_wildcard_dealer.xml" ),

    --Big Portraits End

    Asset("IMAGE", "images/map_icons/wildcard.tex" ),
    Asset("ATLAS", "images/map_icons/wildcard.xml" ),

    Asset("IMAGE", "images/avatars/avatar_wildcard.tex" ),
    Asset("ATLAS", "images/avatars/avatar_wildcard.xml" ),

    Asset("IMAGE", "images/avatars/avatar_ghost_wildcard.tex" ),
    Asset("ATLAS", "images/avatars/avatar_ghost_wildcard.xml" ),

    Asset("IMAGE", "images/avatars/self_inspect_wildcard.tex" ),
    Asset("ATLAS", "images/avatars/self_inspect_wildcard.xml" ),

    Asset("IMAGE", "images/names_wildcard.tex" ),
    Asset("ATLAS", "images/names_wildcard.xml" ),

    Asset("IMAGE", "images/names_gold_wildcard.tex" ),
    Asset("ATLAS", "images/names_gold_wildcard.xml" ),

	Asset( "IMAGE", "images/inventoryimages/wcard_items.tex" ),
    Asset( "ATLAS", "images/inventoryimages/wcard_items.xml" ),


}

AddDynamic("ms_wildcard_goth_dark")
AddDynamic("ms_wildcard_goth_winter")

AddDynamic("ms_wildcard_dealer_dark")
AddDynamic("ms_wildcard_dealer_winter")



local STRINGS = GLOBAL.STRINGS

STRINGS.NAMES.WCARD_DIARY = "Secret Diary"

GLOBAL.wcard_diary_init_fn = function(inst, build_name) GLOBAL.basic_init_fn( inst, build_name, "wcard_diary" ) end
GLOBAL.wcard_diary_clear_fn = function(inst) GLOBAL.basic_clear_fn(inst, "wcard_diary" ) end


STRINGS.SKIN_NAMES.ms_wcard_diary_deathnote = "Death Note"
STRINGS.SKIN_DESCRIPTIONS.ms_wcard_diary_deathnote = "Would you give me an autograph?"

if STRINGS.MODSKINUNLOCK_REQUIREMENT~= nil then --Again making sure the API is actually enabled
	STRINGS.MODSKINUNLOCK_REQUIREMENT["ms_wcard_diary_deathnote"] = "To unlock this skin you must defeat the Ancient Fuelweaver as Wildcard."
end

-- Winky

--Localization for Chinese (S/T)
local lang_lookups =
{
	en =
	{
		name = "Wildcard",
        a1 = "Monster, Literally and Metaphorically",
        a2 = "Frail and \"Weak\"",
        a3 = "Nightmare Addiction",
        quote = "Care for a game, darling?",
        title = "The Joker",
        favfood = "None",
        favfood_string = "Favourite Food",
        hidden = "Is yet to be revealed.",
        bday_h = "Birthday",
        past_h = "Diary Entry",
        aboutme = "A two-faced bunny, with a severe addiction to dark magic",
        skindesc = "What Wildcard believes humans imitating bunnies wear.",

        bday = "Unknown",
        past =
        [[It gets really lonely around here. Master and I have grown further apart, he barely pays attention to me... There's no one to hold a meaningful conversation with! I do come across humans from time to time, ones that aren't corpses at least, but they really don't appreciate my presence. All they do is repeat the same silly phrases like "please don't hurt me!" or "spare me i beg you!". So stubborn and ignorant...
		
		
I can't even call my creations my "friends". One way or another they're all based on me, as i know they inherit at least some common knowledge from me. In a way, talking to them is like talking to myself.
		
		
Note: I caught a rabbit the other day, i called him Woe. He's my friend now.
		]],
		
        

		
	},
    

	zh = 
	{
		name = "通配符",
		
        a1 = "Monster, Literally and Metaphorically",
        a2 = "虚弱无力",
        a3 = "沉迷于所有噩梦",
        quote = "我们为什么不跳舞呢，你和我？",
        title = "小丑L",
        favfood = "无",
        favfood_string = "最喜欢的食物",
        hidden = "尚待揭晓",
        bday_h = "生日",
        past_h = "Diary Entry",
        aboutme = "A two-faced bunny, with a severe addiction to dark magic",
        skindesc = "What Wildcard believes humans imitating bunnies wear.",

        bday = "未知",
        past =
        [[It gets really lonely around here. Master and I have grown further apart, he barely pays attention to me... There's no one to hold a meaningful conversation with! I do come across humans from time to time, ones that aren't corpses at least, but they really don't appreciate my presence. All they do is repeat the same silly phrases like "please don't hurt me!" or "spare me i beg you!". So stubborn and ignorant...
		
		
I can't even call my creations my "friends". One way or another they're all based on me, as i know they inherit at least some common knowledge from me. In a way, talking to them is like talking to myself.
		
		
Note: I caught a rabbit the other day, i called him Woe. He's my friend now.
		]],
        		
	},

    

}

local locale = GLOBAL.LOC.GetLocaleCode()
local lookup = (lang_lookups[locale] or lang_lookups.en)



AddCharacter("wildcard", lookup.name , "female", lookup.title, lookup.quote, lookup.skindesc,"wildcard", "wildcard", "Grim", false)
CharacterAbillity("wildcard", lookup.a1 , lookup.a2 , lookup.a3)
AddCharacterSkin("wildcard", "ms_wildcard_goth", "The Rebel", "Not a common sight for Wildcard to not wear a bunny suit.", "It's time to put you to rest, darling.", true, true, false)
AddCharacterSkin("wildcard", "ms_wildcard_dealer", "The Croupier", "Wildcard loves it when the stakes are high.", "It's a game everyone thinks they can play, darling.", true, true, false)

AddSkinMode("wildcard", "insane_skin", true)
AddSkinMode("wildcard", "winter_skin", true)





STRINGS.CHARACTER_ABOUTME.wildcard = lookup.aboutme
STRINGS.CHARACTER_BIOS.wildcard = {
 { title = lookup.bday_h, desc = lookup.bday },
 { title = lookup.favfood_string, desc = lookup.favfood },
 { title = lookup.past_h, desc = lookup.past},
}

STRINGS.CHARACTER_SURVIVABILITY.wildcard= "Grim"


TUNING.WILDCARD_HEALTH = GetModConfigData("WILDCARD_HEALTH")
TUNING.WILDCARD_HUNGER = GetModConfigData("WILDCARD_HUNGER")
TUNING.WILDCARD_SANITY = GetModConfigData("WILDCARD_SANITY")

TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.WILDCARD = {"wcard_diary"}
TUNING.STARTING_ITEM_IMAGE_OVERRIDE["wcard_diary"] = {
    atlas = "images/inventoryimages/wcard_items.xml",
    image = "wcard_diary.tex",
}
