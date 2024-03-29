Assets = {


    Asset( "IMAGE", "images/saveslot_portraits/welina.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/welina.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/welina.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/welina.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/welina_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/welina_silho.xml" ),

    Asset( "IMAGE", "bigportraits/welina.tex" ),
    Asset( "ATLAS", "bigportraits/welina.xml" ),

    Asset( "IMAGE", "bigportraits/welina_none.tex" ),
    Asset( "ATLAS", "bigportraits/welina_none.xml" ),

	
	Asset( "IMAGE", "images/map_icons/welina.tex" ),
	Asset( "ATLAS", "images/map_icons/welina.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_welina.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_welina.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_welina.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_welina.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_welina.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_welina.xml" ),
	
	Asset( "IMAGE", "images/names_welina.tex" ),
    Asset( "ATLAS", "images/names_welina.xml" ),
	
	Asset( "IMAGE", "images/names_gold_welina.tex" ),
    Asset( "ATLAS", "images/names_gold_welina.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/welina_items.tex" ),
    Asset( "ATLAS", "images/inventoryimages/welina_items.xml" ),
	
	Asset("ANIM", "anim/welina_collar.zip"),
	Asset("ANIM", "anim/ui_welina_collar.zip"),
	
    
}


AddAnim("welina_hiss_anim")

AddAnim("catcoon_basic")
AddAnim("catcoon_actions")

AddAnim("welina_catcoon_basic")
AddAnim("welina_catcoon_actions")

AddDynamic("welina_catcoon")

table.insert(Assets, Asset("SOUND", "sound/welina.fsb"))
table.insert(Assets, Asset("SOUNDPACKAGE", "sound/scotchmintz_characters.fev"))

--AddAnim("catcoonden_anims_welina")


AddMinimapAtlas("images/map_icons/welina.xml")