local groupid = 666 

local prefabs = {}

table.insert(prefabs, CreatePrefabSkin("ms_wcard_diary_deathnote", {
	assets = {
		Asset("DYNAMIC_ANIM", "anim/dynamic/ms_wcard_diary_deathnote.zip"),
		Asset("PKGREF", "anim/dynamic/ms_wcard_diary_deathnote.dyn"),
	},
	base_prefab = "wcard_diary",
	build_name_override = "ms_wcard_diary_deathnote",
	type = "item",
	rarity = "ModLocked",
    
    condition = { --Adding conditions for our locked skins(Only one condition exists so far!)
	--no_gift = true
    },

	skin_tags = { "DIARY", "DEATHNOTE" },
	release_group = groupid,
}))



return unpack(prefabs)