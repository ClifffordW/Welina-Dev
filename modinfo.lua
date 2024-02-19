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
			
󰀈 Release
		
			]]
        },
        zh = {
            name = "通配符",
            new = "󰀏 日志",
            credits = "󰀭 致谢",
            modinfo_v = "󰀩 Mod信息版本",
            mod_v = "󰀔 Mod版本",
            modinfo_module = "钴",
            desc = "添加了通配符，疯狂的魔法兔子。",
            changes = "󰀈 修复了语音配置问题",
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
version = "1.0.0"
config = false
Language = "en"
contributors = "Cliffford W."
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
server_filter_tags = { "character", "welina" }

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
		options =
		{
			{description = "10", data = 10, hover="Hard Mode 󰀀"},
			{description = "30", data = 30},
			{description = "50", data = 50},
			{description = "80", data = 80, hover="Default 󰀡"},
			{description = "100", data = 100},
			{description = "150", data = 150},
			{description = "200", data = 200, hover="Easy Mode 󰀍"},
		},
		default = 80
	},
	
	{
		name = "WELINA_SANITY",
		label = "Welinas Max Sanity",
		hover = "How much sanity Welina has by default.",
		options =
		{
			{description = "50", data = 50, hover="Hard Mode 󰀀"},
			{description = "80", data = 80},
			{description = "120", data = 120, hover="Default 󰀡"},
			{description = "150", data = 150},
			{description = "200", data = 200, hover="Easy Mode 󰀍"},
		},
		default = 120
	},
	
	{
		name = "WELINA_HUNGER",
		label = "Welinas Max Hunger",
		hover = "How much hunger Welina has by default.",
		options =
		{
			{description = "50", data = 50, hover="Hard Mode 󰀀"},
			{description = "90", data = 90},
			{description = "100", data = 100},
			{description = "150", data = 150, hover="Default 󰀡"},
			{description = "180", data = 180},
			{description = "200", data = 200, hover="Easy Mode 󰀍"}, 
		},
		default = 150
	},
	
	{
		name = "WELINA_HUNGERDRAIN",
		label = "Welinas Hunger Drain",
		hover = "How fast Welina loses hunger.",
		options =
		{
			{description = "0.5", data = 0.5},
			{description = "0.6", data = 0.6},
			{description = "0.7", data = 0.7},
			{description = "0.8", data = 0.8},
			{description = "0.9", data = 0.9},
			{description = "1", data = 1, hover="Default 󰀡"},
			{description = "1.1", data = 1.1},
			{description = "1.2", data = 1.2},
			{description = "1.3", data = 1.3},
			{description = "1.4", data = 1.4},
			
		},
		default = 1
	},


	{
		name = "WELINA_DAMAGE",
		label = "Welinas Damage Multiplier",
		hover = "How hard Welina hits.",
		options =
		{
			{description = "0.7", data = 0.7},
			{description = "0.8", data = 0.8},
			{description = "0.9", data = 0.9},
			{description = "1", data = 1, hover="Default 󰀡"},
			{description = "1.1", data = 1.1},
			{description = "1.2", data = 1.2},
			{description = "1.5", data = 1.5},
			
		},
		default = 1
	},



	{
		name = "WELINA_MOVESPEED",
		label = "Welinas Move Speed",
		hover = "How fast Welina runs.",
		options =
		{
			{description = "0.8", data = 0.8},
			{description = "0.9", data = 0.9},
			{description = "1", data = 1, hover="Default 󰀡"},
			{description = "1.1", data = 1.1},
			{description = "1.2", data = 1.2},
			{description = "1.3", data = 1.3},
			{description = "1.4", data = 1.4},
			
		},
		default = 1
	},
	
	Title("Abillities 󰀩"),
	
	{
		name = "WELINA_OSP",
		label = "Welinas One Shot Protection",
		hover = "Disable or enable Welina hissing when taking a fatal hit at above 90% health.",
		options =
		{
			{description = "Enabled", data = 1, hover="Default 󰀡"},
			{description = "Disabled", data = 0},
		},
		default = 1
	},
	
	{
		name = "WELINA_OSP_THRESHOLD",
		label = "Welinas One Shot Protection Threshold",
		hover = "At what percentage of health should OSP still be active.",
		options =
		{
			{description = "50", data = 50},
			{description = "60", data = 60},
			{description = "70", data = 70},
			{description = "80", data = 80},
			{description = "90", data = 90, hover="Default 󰀡"},
			
		},
		default = 90
	},
	
	{
		name = "WELINA_ASOCIALITY",
		label = "Welinas Asociality",
		hover = "Disable or enable Welina becoming weaker when near other players or followers.",
		options =
		{
			{description = "Enabled", data = 1, hover="Default 󰀡"},
			{description = "Disabled", data = 0},
		},
		default = 1
	},
	
	{
		name = "WELINA_REFLECT",
		label = "Welinas Edgyness",
		hover = "Disable or enable Welina reflecting damage.",
		options =
		{
			{description = "Enabled", data = 1, hover="Default 󰀡"},
			{description = "Disabled", data = 0},
		},
		default = 1
	},
	
		{
		name = "WELINA_REFLECT_AMOUNT",
		label = "Welinas Edgyness Strenght",
		hover = "Amount of damage reflected back to attacker",
		options =
		{
			{description = "x2", data = 2},
			{description = "x3", data = 3},
			{description = "x4", data = 4},
			{description = "x5", data = 5, hover="Default 󰀡"},
			{description = "x6", data = 6},
			{description = "x7", data = 7},
			{description = "x8", data = 8},
		},
		default = 5
	},
	


	Title(lookup.mod_v..": "..version),
	Title(lookup.modinfo_v..": "..modinfo_ver)

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
