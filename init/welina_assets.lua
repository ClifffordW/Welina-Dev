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







AddDynamicAtlas("welina_hud")
AddAnim("ui_welina_cat_2x1")








AddAnim("welina_catdye")

AddSoundPackage("scotchmintz_characters")
AddSoundBank("9lives")
AddSoundBank("cattoy")
AddSoundBank("cliff_shenanigans")
AddSoundBank("welina")
AddSoundBank("pickups")


AddMinimapAtlas("images/map_icons/welina.xml")






local ASSET_LUT = require("defs.atlas.invimages")

for atlas, textures in pairs(ASSET_LUT) do
    local atlas_path = resolvefilepath("images/inventoryimages/"..atlas..".xml")
    for _, tex_name in pairs(textures) do
        RegisterInventoryItemAtlas(atlas_path, tex_name..".tex")
        
        -- Scrapbook hate ya
        if atlas == "welina_scrapbookitems" then
            RegisterScrapbookIconAtlas(atlas_path, tex_name..".tex")
        end
    end
end


