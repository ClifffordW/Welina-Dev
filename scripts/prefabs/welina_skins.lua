local prefabs = {}


table.insert(prefabs, CreatePrefabSkin("welina_none", {
	assets =
	{
		Asset( "ANIM", "anim/welina.zip" ),
		Asset( "ANIM", "anim/ghost_welina_build.zip" ),
	},

	skins = {
		normal_skin = "welina",
		ghost_skin = "ghost_welina_build",
	},

	base_prefab = "welina",
	build_name_override = "welina",

	type = "base",
	rarity = "Character",

	skin_tags = { "BASE", "WELINA"},
}))

table.insert(prefabs, CreatePrefabSkin("ms_welina_gown", {
	assets =
	{
		Asset( "DYNAMIC_ANIM", "anim/dynamic/ms_welina_gown.zip" ),
		Asset( "PKGREF", "anim/dynamic/ms_welina_gown.dyn" ),
	},

	skins = {
		normal_skin = "ms_welina_gown",
		ghost_skin = "ghost_welina_build",
	},

	base_prefab = "welina",
	build_name_override = "ms_welina_gown",

	type = "base",
	rarity = "Character",

	skin_tags = { "BASE", "WELINA"},
}))

table.insert(prefabs, CreatePrefabSkin("ms_welina_doorman", {
	assets =
	{
		Asset( "DYNAMIC_ANIM", "anim/dynamic/ms_welina_doorman.zip" ),
		Asset( "PKGREF", "anim/dynamic/ms_welina_doorman.dyn" ),
	},

	skins = {
		normal_skin = "ms_welina_doorman",
		ghost_skin = "ghost_welina_build",
	},

	base_prefab = "welina",
	build_name_override = "ms_welina_doorman",

	type = "base",
	rarity = "Character",

	skin_tags = { "BASE", "WELINA"},
}))

table.insert(prefabs, CreatePrefabSkin("ms_welina_homestuck", {
	assets =
	{
		Asset( "DYNAMIC_ANIM", "anim/dynamic/ms_welina_homestuck.zip" ),
		Asset( "PKGREF", "anim/dynamic/ms_welina_homestuck.dyn" ),
	},

	skins = {
		normal_skin = "ms_welina_homestuck",
		ghost_skin = "ghost_welina_build",
	},

	base_prefab = "welina",
	build_name_override = "ms_welina_homestuck",

	type = "base",
	rarity = "Character",

	skin_tags = { "BASE", "WELINA"},
}))


return unpack(prefabs)