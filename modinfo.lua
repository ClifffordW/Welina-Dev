local lang_lookups = {
	modinfo_core = {
		en = {
			name = "Welina",
			new = "󰀏 What's New",
			credits = "󰀭 Credits",
			modinfo_v = "󰀩 Modinfo Version",
			mod_v = "󰀩 Mod Version",
			modinfo_module = "Articore",
			desc = "Adds Welina, the low-spirited cat girl.",
			changes = [[
			
• Fixed Issue with collar crashing with Uncomp Mode
• Updated collar functionality
• Fixed issue with riding a beefalo and vomiting


		
			]],
		},
		zh = {
			name = "韦利纳",
			new = "󰀏 日志",
			credits = "󰀭 致谢",
			modinfo_v = "󰀩 Mod信息版本",
			mod_v = "󰀔 Mod版本",
			modinfo_module = "钴",
			desc = "郁闷的猫女维琳娜补充道。",
			changes = "󰀈 模组发布",
		},
	},
	modinfo_config = {
		en = {
			name = "Welina",
			new = "󰀏 What's New",
			credits = "󰀭 Credits",
			modinfo_v = "󰀩 Modinfo Version",
			mod_v = "󰀩 Mod Version",
			modinfo_module = "Articore",
			desc = "Adds Welina, the low-spirited cat girl.",
			changes = "󰀈 Mod released",
		},
		zh = {
			name = "Welina",
			new = "󰀏 日志",
			credits = "󰀭 致谢",
			modinfo_v = "󰀩 Mod信息版本",
			mod_v = "󰀔 Mod版本",
			modinfo_module = "钴",
			desc = "Adds Welina, the low-spirited cat girl.",
			changes = "󰀈 Mod released",
		},
	},
	versiontypes = {
		en = {
			final = "[Final]",
			beta = "[Beta]",
			disc = "[Discontinued]",
			redux = "[Redux]",
			ov = "[Overhaul]",
			ea = "[Early Access]",
			dev = "[Dev Build]",
		},
		zh = {
			final = "[终版]",
			beta = "[测试版]",
			disc = "[已停产]",
			redux = "[重制版]",
			ov = "[大修]",
			ea = "[早期体验]",
			dev = "[开发版本]",
		},
	},
}

local lookup = lang_lookups.modinfo_core[locale] or lang_lookups.modinfo_core.en
local lookupconf = lang_lookups.modinfo_config[locale] or lang_lookups.modinfo_config.en

versiontype = ""
name = lookup.name
author = "mentos"
version = "1.0.8"
config = false
Language = "en"
contributors = "Cliffford W., Fairy"
write_contributors = false
credits_only = true
main_icon = "modicon"
priority = 5
api_version = 10
dst_compatible = true
dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false
all_clients_require_mod = true
client_only_mod = false
server_only_mod = false
server_filter_tags = { "character", "welina", "welina_oldvoidcowl" }

local scales = {}
for i = 1, 20 do
	scales[i] = { description = "x" .. i / 10, data = i / 10 }
end

local pos = {}
pos[1] = { description = "Default", data = 0 }
for i = 2, 15 do
	pos[i] = { description = "+" .. i .. "0", data = i * 10 }
end

local opt_Empty = { { description = "", data = 0 } }
local function Title(title, hover)
	return {
		name = title,
		hover = hover,
		options = opt_Empty,
		default = 0,
	}
end

local SEPARATOR = Title("")
modinfo_ver = lookup.modinfo_module

configuration_options = {




	Title("Stats 󰀓"),
	{
		name = "WELINA_HEALTH",
		label = "Welinas Max HP",
		hover = "How much health Welina has by default.",
		options = {
			{ description = "10", data = 10, hover = "Hard Mode 󰀀" },
			{ description = "30", data = 30 },
			{ description = "50", data = 50 },
			{ description = "80", data = 80, hover = "Default 󰀡" },
			{ description = "100", data = 100 },
			{ description = "150", data = 150 },
			{ description = "200", data = 200, hover = "Easy Mode 󰀍" },
		},
		default = 80,
	},

	{
		name = "WELINA_SANITY",
		label = "Welinas Max Sanity",
		hover = "How much sanity Welina has by default.",
		options = {
			{ description = "50", data = 50, hover = "Hard Mode 󰀀" },
			{ description = "80", data = 80 },
			{ description = "120", data = 120, hover = "Default 󰀡" },
			{ description = "150", data = 150 },
			{ description = "200", data = 200, hover = "Easy Mode 󰀍" },
		},
		default = 120,
	},

	{
		name = "WELINA_HUNGER",
		label = "Welinas Max Hunger",
		hover = "How much hunger Welina has by default.",
		options = {
			{ description = "50", data = 50, hover = "Hard Mode 󰀀" },
			{ description = "90", data = 90 },
			{ description = "100", data = 100 },
			{ description = "150", data = 150, hover = "Default 󰀡" },
			{ description = "180", data = 180 },
			{ description = "200", data = 200, hover = "Easy Mode 󰀍" },
		},
		default = 150,
	},

	{
		name = "WELINA_HUNGERDRAIN",
		label = "Welinas Hunger Drain",
		hover = "How fast Welina loses hunger.",
		options = {
			{ description = "0.5", data = 0.5 },
			{ description = "0.6", data = 0.6 },
			{ description = "0.7", data = 0.7 },
			{ description = "0.8", data = 0.8 },
			{ description = "0.9", data = 0.9 },
			{ description = "1", data = 1, hover = "Default 󰀡" },
			{ description = "1.1", data = 1.1 },
			{ description = "1.2", data = 1.2 },
			{ description = "1.3", data = 1.3 },
			{ description = "1.4", data = 1.4 },
		},
		default = 1,
	},

	{
		name = "WELINA_DAMAGE",
		label = "Welinas Damage Multiplier",
		hover = "How hard Welina hits.",
		options = {
			{ description = "0.7", data = 0.7 },
			{ description = "0.8", data = 0.8 },
			{ description = "0.9", data = 0.9 },
			{ description = "1", data = 1, hover = "Default 󰀡" },
			{ description = "1.1", data = 1.1 },
			{ description = "1.2", data = 1.2 },
			{ description = "1.5", data = 1.5 },
		},
		default = 1,
	},

	{
		name = "WELINA_MOVESPEED",
		label = "Welinas Move Speed",
		hover = "How fast Welina runs.",
		options = {
			{ description = "0.8", data = 0.8 },
			{ description = "0.9", data = 0.9 },
			{ description = "1", data = 1, hover = "Default 󰀡" },
			{ description = "1.1", data = 1.1 },
			{ description = "1.2", data = 1.2 },
			{ description = "1.3", data = 1.3 },
			{ description = "1.4", data = 1.4 },
		},
		default = 1,
	},

	{
		name = "WELINA_SANITY_MULT",
		label = "Welinas Negative Sanity Multiplier",
		hover = "Welinas resistance to sanity drain auras.",
		options = {
			{ description = ".10", data = 0.10 },
			{ description = ".25", data = 0.25 },
			{ description = ".50", data = 0.50, hover = "Default 󰀡" },
			{ description = ".65", data = 0.65 },
			{ description = ".75", data = 0.75 },
			{ description = ".85", data = 0.85 },
			{ description = "1", data = 1 },
		},
		default = 0.50,
	},

	Title("Abillities 󰀩"),

	{
		name = "WELINA_9LIVES",
		label = "Welina 9 Lives",
		hover = "Should Welinas 9th death be permanent?",
		options = {
			{ description = "Enabled", data = 1, hover = "Default 󰀡" },
			{ description = "Disabled", data = 0 },
		},
		default = 1,
	},
	{
		name = "WELINA_OSP",
		label = "Welinas OSP",
		hover = "Disable or enable Welina hissing when taking a fatal hit at above 90% health.",
		options = {
			{ description = "Enabled", data = 1, hover = "Default 󰀡" },
			{ description = "Disabled", data = 0 },
		},
		default = 1,
	},

	{
		name = "WELINA_OSP_THRESHOLD",
		label = "Welinas OSP Threshold",
		hover = "At what percentage of health should OSP still be active.",
		options = {
			{ description = "50", data = 0.5 },
			{ description = "60", data = 0.6 },
			{ description = "70", data = 0.7 },
			{ description = "80", data = 0.8, hover = "Default 󰀡" },
			{ description = "90", data = 0.9 },
		},
		default = 0.8,
	},

	{
		name = "WELINA_REFLECT",
		label = "Welinas Edgyness",
		hover = "Disable or enable Welina reflecting damage.",
		options = {
			{ description = "Enabled", data = 1, hover = "Default 󰀡" },
			{ description = "Disabled", data = 0 },
		},
		default = 1,
	},

	{
		name = "WELINA_INSOMNIA",
		label = "Welinas Insomnia",
		hover = "Disable or enable Welina not being able to sleep.",
		options = {
			{ description = "Enabled", data = 1, hover = "Default 󰀡" },
			{ description = "Disabled", data = 0 },
		},
		default = 1,
	},

	{
		name = "WELINA_REFLECT_AMOUNT",
		label = "Welinas Edgyness Strength",
		hover = "Amount of damage reflected back to attacker.",
		options = {
			{ description = "x2", data = 2 },
			{ description = "x3", data = 3 },
			{ description = "x4", data = 4 },
			{ description = "x5", data = 5 },
			{ description = "x6", data = 6, hover = "Default 󰀡" },
			{ description = "x7", data = 7 },
			{ description = "x8", data = 8 },
		},
		default = 6,
	},

	{
		name = "WELINA_RESENTMENT",
		label = "Welinas Resentfulness",
		hover = "How much of the damage Welina has taken is added to her attack.",
		options = {
			{ description = "10%", data = 0.1 },
			{ description = "20%", data = 0.2 },
			{ description = "30%", data = 0.3 },
			{ description = "40%", data = 0.4, hover = "Default 󰀡" },
			{ description = "50%", data = 0.5 },
			{ description = "60%", data = 0.6 },
			{ description = "70%", data = 0.7 },
		},
		default = 0.4,
	},
	
		{
		name = "WELINA_RESENTMENT_MAX_HP",
		label = "Resentfulness HP Trauma",
		hover = "Disable or enable Welina taking max health damage when hit.",
		options = {
			{ description = "Enabled", data = 1, hover = "Default 󰀡" },
			{ description = "Disabled", data = 0 },
		},
		default = 1,
	},

	{
		name = "WELINA_RESENTMENT_MAX_HP_PENALTY_MULT",
		label = "Resentfulness HP Penalty Amount",
		hover = "How much of the damage Welina has taken is subtracted from maximum health.",
		options = {
			{ description = "10%", data = 0.1 },
			{ description = "20%", data = 0.2, hover = "Default 󰀡"  },
			{ description = "30%", data = 0.3 },
			{ description = "40%", data = 0.4 },
			{ description = "50%", data = 0.5 },
			{ description = "60%", data = 0.6 },
			{ description = "70%", data = 0.7 },
		},
		default = 0.2,
	},

	{
		name = "WELINA_RESENTMENT_MAX_HP_PENALTY_MULT_BOSS",
		label = "Boss Resentfulness HP Penalty Amount",
		hover = "Only applies for bosses. How much of the damage Welina has taken is subtracted from maximum health.",
		options = {
			{ description = "10%", data = 0.1, hover = "Default 󰀡"  },
			{ description = "20%", data = 0.2 },
			{ description = "30%", data = 0.3 },
			{ description = "40%", data = 0.4 },
			{ description = "50%", data = 0.5 },
			{ description = "60%", data = 0.6 },
			{ description = "70%", data = 0.7 },
		},
		default = 0.1,
	},

	{
		name = "WELINA_WATERPENALTY",
		label = "Welinas Wetness Penalty",
		hover = "Disable or enable Welina becoming weaker when wet.",
		options = {
			{ description = "Enabled", data = 1},
			{ description = "Disabled", data = 0, hover = "Default 󰀡"  },
		},
		default = 1,
	},

	{
		name = "WELINA_MAXEDIBLEGARBAGE",
		label = "Max Edible Garbage",
		hover = "Set how much garbage can Welina eat before she vomits.",
		options = {
			{ description = "3", data = 3},
			{ description = "4", data = 4},
			{ description = "5", data = 5},
			{ description = "6", data = 6},
			{ description = "7", data = 7},
			{ description = "8", data = 8},
			{ description = "9", data = 9},
			{ description = "10", data = 10},
		},
		default = 3,
	},

	
	Title("Extra Abillities 󰀩"),
	
	{
		name = "WELINA_NIGHTVISION",
		label = "Welinas Nightvision",
		hover = "Disable or enable Welina having nightvision.",
		options = {
			{ description = "Enabled", data = 1},
			{ description = "Disabled", data = 0, hover = "Default 󰀡"  },
		},
		default = 0,
	},
	
	{
		name = "WELINA_CRAFTABLE_DENS",
		label = "Craftable Catcoon Dens",
		hover = "Disable or enable Welina having the ability to craft catcoon dens.",
		options = {
			{ description = "Enabled", data = 1},
			{ description = "Disabled", data = 0, hover = "Default 󰀡"  },
		},
		default = 0,
	},
--[[
	Title("Miscellaneous 󰀩"),
	{
		name = "MOVING_CATTOY_EYES",
		label = "Moving Catcoon Toy Eyes",
		hover = "",
		options = {
			{ description = "Enabled", data = 1 },
			{ description = "Disabled", data = 0 },

		},
		default = 0,
	},
--]]
	Title("Cliffford's Shenanigans 󰀩"),
	--[[	
	{
		name = "WELINA_CATCOONHATS",
		label = "Hatted Catcoons",
		hover = "Enable or disable catcoons wearing hats (May be broken).",
		options =
		{
			{description = "Enabled", data = 1},
			{description = "Disabled", data = 0, hover="Default 󰀡"},
		},
		default = 0
	},
--]]

	{
		name = "WELINA_LASTLIFE_MUSIC",
		label = "Last Life Music",
		hover = "Welinas final life sfx.",
		options = {
			{ description = "Default", data = "scotchmintz_characters/sfx/welina_bell", hover = "Default 󰀡" },
			{ description = "Fork In The Road", data = "scotchmintz_characters/sfx/welina_bell_forkintheroad" },
		},
		default = "scotchmintz_characters/sfx/welina_bell",
	},

	{
		name = "WELINA_CATCOON_LAWNMOWER",
		label = "Catcoon Lawnmower",
		hover = "Give your catcoon Turf-raiser helm and enjoy the sounds!.",
		options = {
			{ description = "Enable", data = 1 },
			{ description = "Disable", data = 0, hover = "Default 󰀡" },
		},
		default = 0,
	},

	{
		name = "WELINA_CATNIP_MUSIC",
		label = "Catnip Music",
		hover = "Adds some nice music after consuming catnip!.",
		options = {
			{ description = "Enable", data = 1 },
			{ description = "Disable", data = 0, hover = "Default 󰀡" },
		},
		default = 0,
	},


	Title(lookup.mod_v .. ": " .. version),
	Title(lookup.modinfo_v .. ": " .. modinfo_ver),
}

--[[
mod_dependencies = {
    {--[API] Modded Skins
        workshop = "workshop-2812783478",
    },
}
--]]

icon_atlas = main_icon .. ".xml"
icon = main_icon .. ".tex"

lookup_v = lang_lookups.versiontypes[locale] or lang_lookups.versiontypes.en
versiontype = lookup_v[versiontype] or ""

if versiontype ~= "" then
	name = name .. "\n" .. versiontype
end

folder_name = folder_name or "workshop-"
if not folder_name:find("workshop-") then
	name = name .. " - GitHub Ver."
end

old_author = author
if contributors ~= "" and contributors ~= nil and write_contributors then
	author = author .. " and " .. contributors
end

desc = lookup.desc
changelog = lookup.new .. "\n" .. lookup.changes
credits = lookup.credits .. ": " .. contributors
mark2 = lookup.modinfo_v .. ": " .. modinfo_ver

if write_contributors or credits_only and contributors ~= "" then
	descfill = desc .. "\n" .. credits .. "\n\n" .. lookup.mod_v .. ": " .. version .. "\n\n" .. changelog .. "\n\n"
else
	descfill = desc .. "\n 󰀝 " .. lookup.mod_v .. ": " .. version .. "\n\n" .. changelog .. "\n\n\n\n"
end

description = descfill
description = description
