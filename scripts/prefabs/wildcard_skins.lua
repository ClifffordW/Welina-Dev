

local prefabs = {}





table.insert(prefabs, CreatePrefabSkin("wildcard_none", {
	assets =
	{
		Asset( "ANIM", "anim/wildcard.zip" ),
		Asset( "ANIM", "anim/wildcard_dark.zip" ),
		Asset( "ANIM", "anim/wildcard_winter.zip" ),
		Asset( "ANIM", "anim/ghost_wildcard_build.zip" ),
	},

	skins = {
		normal_skin = "wildcard",
		insane_skin = "wildcard_dark",
		winter_skin = "wildcard_winter",
		ghost_skin = "ghost_wildcard_build",
	},

	base_prefab = "wildcard",
	build_name_override = "wildcard",

	type = "base",
	rarity = "Character",

	skin_tags = { "BASE", "WILDCARD"},
}))




table.insert(prefabs, CreatePrefabSkin("ms_wildcard_goth", {
	assets = {

 
	
		Asset( "DYNAMIC_ANIM", "anim/dynamic/ms_wildcard_goth_dark.zip" ),
		Asset( "PKGREF", "anim/dynamic/ms_wildcard_goth_dark.dyn" ),
		
		Asset( "DYNAMIC_ANIM", "anim/dynamic/ms_wildcard_goth_winter.zip" ),
		Asset( "PKGREF", "anim/dynamic/ms_wildcard_goth_winter.dyn" ),
		
		Asset( "ANIM", "anim/ghost_wildcard_build.zip" ),
	},
	skins = {
		normal_skin = "ms_wildcard_goth",
		ghost_skin = "ghost_wildcard_build",
		insane_skin = "ms_wildcard_goth_dark", 
		winter_skin = "ms_wildcard_goth_winter",
	},


	base_prefab = "wildcard",
	build_name_override = "ms_wildcard_goth",

	type = "base",
	rarity = "ModMade",

	skin_tags = { "BASE", "WILDCARD"},
}))



table.insert(prefabs, CreatePrefabSkin("ms_wildcard_dealer", {
	assets = {

 
	
		Asset( "DYNAMIC_ANIM", "anim/dynamic/ms_wildcard_dealer_dark.zip" ),
		Asset( "PKGREF", "anim/dynamic/ms_wildcard_dealer_dark.dyn" ),
		
		Asset( "DYNAMIC_ANIM", "anim/dynamic/ms_wildcard_dealer_winter.zip" ),
		Asset( "PKGREF", "anim/dynamic/ms_wildcard_dealer_winter.dyn" ),
		
		Asset( "ANIM", "anim/ghost_wildcard_build.zip" ),
	},
	skins = {
		normal_skin = "ms_wildcard_dealer",
		ghost_skin = "ghost_wildcard_build",
		insane_skin = "ms_wildcard_dealer_dark", 
		winter_skin = "ms_wildcard_dealer_winter",
	},


	base_prefab = "wildcard",
	build_name_override = "ms_wildcard_dealer",

	type = "base",
	rarity = "ModMade",

	skin_tags = { "BASE", "WILDCARD"},
}))

return unpack(prefabs)