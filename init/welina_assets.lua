Assets = {


    --Welina Main
    Asset( "DYNAMIC_ATLAS", "images/saveslot_portraits/welina.xml" ),

    Asset( "DYNAMIC_ATLAS", "images/selectscreen_portraits/welina.xml" ),
	
    Asset( "DYNAMIC_ATLAS", "images/selectscreen_portraits/welina_silho.xml" ),

    Asset( "DYNAMIC_ATLAS", "bigportraits/welina.xml" ),

    Asset( "DYNAMIC_ATLAS", "bigportraits/welina_none.xml" ),
    Asset( "ATLAS_BUILD", "bigportraits/welina_none.xml", 192 ),

	--Skins
    Asset( "DYNAMIC_ATLAS", "bigportraits/ms_welina_gown.xml" ),
    Asset( "DYNAMIC_ATLAS", "bigportraits/ms_welina_doorman.xml" ),
    Asset( "DYNAMIC_ATLAS", "bigportraits/ms_welina_homestuck.xml" ),
    Asset( "DYNAMIC_ATLAS", "bigportraits/ms_welina_xmas.xml" ),
	

    --Character General
    Asset( "DYNAMIC_ATLAS", "images/map_icons/welina.xml" ),
    Asset( "DYNAMIC_ATLAS", "images/avatars/avatar_welina.xml" ),
    Asset( "DYNAMIC_ATLAS", "images/crafting_menu_avatars/avatar_welina.xml" ),
    Asset( "DYNAMIC_ATLAS", "images/avatars/avatar_ghost_welina.xml" ),
    Asset( "DYNAMIC_ATLAS", "images/avatars/self_inspect_welina.xml" ),
    Asset( "DYNAMIC_ATLAS", "images/names_welina.xml" ),
    Asset( "DYNAMIC_ATLAS", "images/names_gold_welina.xml" ),
    Asset("ANIM", "anim/welina_voidclothhat.zip"),
	
    --Inventory
    Asset( "DYNAMIC_ATLAS", "images/inventoryimages/welina_scrapbookitems.xml" ),
    Asset( "DYNAMIC_ATLAS", softresolvefilepath("images/inventoryimages/welina_items.xml") ),
    Asset( "ATLAS_BUILD", "images/inventoryimages/welina_items.xml", 256 ),






    

    --Nightvision
    Asset("IMAGE", resolvefilepath("images/colour_cubes/welina_nightvision_cc.tex")),
    Asset("IMAGE", resolvefilepath("images/colour_cubes/welina_high.tex")),

	

	
    
}

















AddSoundPackage("scotchmintz_characters")
AddSoundBank("welina")
AddSoundBank("welina_music")
AddSoundBank("welina_sfx")
AddSoundBank("welina_pickup_sfx")



AddMinimapAtlas("images/map_icons/welina.xml")






local WELINA_INVENTORY = resolvefilepath("images/inventoryimages/welina_items.xml")
local WELINA_CATDYES = resolvefilepath("images/inventoryimages/welina_dyes.xml")

local _GetInventoryItemAtlas_Internal = _G.GetInventoryItemAtlas_Internal
function _G.GetInventoryItemAtlas_Internal(imagename, ...)
	return TheSim:AtlasContains(WELINA_INVENTORY, imagename) and WELINA_INVENTORY
		or TheSim:AtlasContains(WELINA_CATDYES, imagename) and WELINA_CATDYES
		or _GetInventoryItemAtlas_Internal(imagename, ...)
end

local WELINA_SCRAPBOOK = resolvefilepath("images/inventoryimages/welina_scrapbookitems.xml")
local _GetScrapbookIconAtlas_Internal = _G.GetScrapbookIconAtlas_Internal
function _G.GetScrapbookIconAtlas_Internal(imagename, ...)
    return TheSim:AtlasContains(WELINA_SCRAPBOOK, imagename) and WELINA_SCRAPBOOK
            or _GetScrapbookIconAtlas_Internal(imagename, ...)
end
