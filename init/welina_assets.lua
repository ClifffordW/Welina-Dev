Assets = {


    Asset( "DYNAMIC_ATLAS", "images/saveslot_portraits/welina.xml" ),

    Asset( "DYNAMIC_ATLAS", "images/selectscreen_portraits/welina.xml" ),
	
    Asset( "DYNAMIC_ATLAS", "images/selectscreen_portraits/welina_silho.xml" ),

    Asset( "DYNAMIC_ATLAS", "bigportraits/welina.xml" ),

    Asset( "DYNAMIC_ATLAS", "bigportraits/welina_none.xml" ),
    Asset( "ATLAS_BUILD", "bigportraits/welina_none.xml", 192 ),

	
    Asset( "DYNAMIC_ATLAS", "bigportraits/ms_welina_gown.xml" ),
	
    Asset( "DYNAMIC_ATLAS", "bigportraits/ms_welina_doorman.xml" ),
	
    Asset( "DYNAMIC_ATLAS", "bigportraits/ms_welina_homestuck.xml" ),
	
    Asset( "DYNAMIC_ATLAS", "bigportraits/ms_welina_xmas.xml" ),
	
	Asset( "DYNAMIC_ATLAS", "images/map_icons/welina.xml" ),
	
    Asset( "DYNAMIC_ATLAS", "images/avatars/avatar_welina.xml" ),

    Asset( "DYNAMIC_ATLAS", "images/crafting_menu_avatars/avatar_welina.xml" ),
	
    Asset( "DYNAMIC_ATLAS", "images/avatars/avatar_ghost_welina.xml" ),
	
    Asset( "DYNAMIC_ATLAS", "images/avatars/self_inspect_welina.xml" ),
	
    Asset( "DYNAMIC_ATLAS", "images/names_welina.xml" ),
	
    Asset( "DYNAMIC_ATLAS", "images/names_gold_welina.xml" ),
	

    Asset( "DYNAMIC_ATLAS", "images/inventoryimages/welina_scrapbookitems.xml" ),

    Asset( "DYNAMIC_ATLAS", softresolvefilepath("images/inventoryimages/welina_items.xml") ),
    Asset( "ATLAS_BUILD", "images/inventoryimages/welina_items.xml", 256 ),

	Asset("ANIM", "anim/welina_collar.zip"),
	Asset("ANIM", "anim/ui_welina_collar.zip"),


    Asset("ANIM", "anim/welina_voidclothhat.zip"),


    Asset("IMAGE", resolvefilepath("images/colour_cubes/welina_nightvision_cc.tex")),
    Asset("IMAGE", resolvefilepath("images/colour_cubes/welina_high.tex")),

	

    Asset("ANIM", "anim/welina_cattoy.zip"),
	Asset("ANIM", "anim/swap_welina_cattoy.zip"),
    
}



--AddAnim("wtestanim")

AddAnim("welina_hiss_anim")
AddAnim("welina_hiss_anim_gown")
AddAnim("welina_hiss_anim_doorman")
AddAnim("welina_hiss_anim_homestuck")


AddAnim("welina_puke")

--AddAnim("catcoon_basic")
--AddAnim("catcoon_actions")

AddAnim("welina_catcoon_den")
AddAnim("welina_catcoon_basic")
AddAnim("welina_catcoon_actions")


--Player collars
AddAnim("swap_collar_bomb")
AddAnim("swap_collar_spiked")
AddAnim("swap_collar_regen")
AddAnim("swap_collar_light")
AddAnim("swap_collar_glass")
-------------------------------

AddSound("lawnmower")
AddSound("monkeyball")


table.insert(Assets, Asset("SOUND", "sound/welina.fsb"))
table.insert(Assets, Asset("SOUNDPACKAGE", "sound/scotchmintz_characters.fev"))

--AddAnim("catcoonden_anims_welina")


AddMinimapAtlas("images/map_icons/welina.xml")