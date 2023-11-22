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



return unpack(prefabs)