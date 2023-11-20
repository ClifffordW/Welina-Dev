local lang_lookups = {
    modinfo_core = {
        en = {
            name = "Wildcard",
            new = "󰀏 What's New",
            credits = "󰀭 Credits",
            modinfo_v = "󰀩 Modinfo Version",
            mod_v = "󰀩 Mod Version",
            modinfo_module = "Articore",
            desc = "Adds Wildcard, the insane magical bunny.",
            changes = [[
			
󰀈 New Wildcard skin - The Courtier

󰀈 New Mechanic - Mental Fatigue

󰀈 New Magic Trick - Rabbification

󰀈 Additional Configs
		
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
            name = "Wildcard",
            new = "󰀏 What's New",
            credits = "󰀭 Credits",
            modinfo_v = "󰀩 Modinfo Version",
            mod_v = "󰀩 Mod Version",
            modinfo_module = "Articore",
            desc = "Adds Wildcard, the insane magical bunny.",
            changes = "󰀈 Mod released",
        },
        zh = {
            name = "通配符",
            new = "󰀏 日志",
            credits = "󰀭 致谢",
            modinfo_v = "󰀩 Mod信息版本",
            mod_v = "󰀔 Mod版本",
            modinfo_module = "钴",
            desc = "添加了通配符，疯狂的魔法兔子。",
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
version = "1.2.2"
config = false
Language = "en"
contributors = "Cliffford W., Skylarr"
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
server_filter_tags = { "character", "wildcard" }

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
		name = "WILDCARD_HEALTH",
		label = "Wildcards Max HP",
		hover = "How much health Wildcard has by default.",
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
		name = "WILDCARD_SANITY",
		label = "Wildcards Max Sanity",
		hover = "How much sanity Wildcard has by default.",
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
		name = "WILDCARD_HUNGER",
		label = "Wildcards Max Hunger",
		hover = "How much hunger Wildcard has by default.",
		options =
		{
			{description = "50", data = 50, hover="Hard Mode 󰀀"},
			{description = "90", data = 90},
			{description = "100", data = 100, hover="Default 󰀡"},
			{description = "150", data = 150},
			{description = "200", data = 200, hover="Easy Mode 󰀍"}, 
		},
		default = 100
	},
	
	{
		name = "WILDCARD_HUNGERDRAIN",
		label = "Wildcards Hunger Drain",
		hover = "How fast Wildcard loses hunger.",
		options =
		{
			{description = "0.5", data = 0.5},
			{description = "0.6", data = 0.6},
			{description = "0.7", data = 0.7},
			{description = "0.8", data = 0.8},
			{description = "0.9", data = 0.9, hover="Default 󰀡"},
			{description = "1", data = 1},
			{description = "1.1", data = 1.1},
			{description = "1.2", data = 1.2},
			{description = "1.3", data = 1.3},
			{description = "1.4", data = 1.4},
			
		},
		default = 0.9
	},


	{
		name = "WILDCARD_DAMAGE",
		label = "Wildcards Damage Multiplier",
		hover = "How hard Wildcard hits.",
		options =
		{
			{description = "0.7", data = 0.7},
			{description = "0.8", data = 0.8},
			{description = "0.9", data = 0.9, hover="Default 󰀡"},
			{description = "1", data = 1},
			{description = "1.1", data = 1.1},
			{description = "1.2", data = 1.2},
			{description = "1.5", data = 1.5},
			
		},
		default = 0.9
	},



	{
		name = "WILDCARD_MOVESPEED",
		label = "Wildcards Move Speed",
		hover = "How fast Wildcard runs.",
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
	
		{
		name = "WILDCARD_DAPPERNESS",
		label = "Wildcards Dapperness",
		hover = "Amount of passive sanity regen.",
		options =
		{
			{description = "None", data = 0},
			{description = "Tiny", data = 0.02},
			{description = "Small", data = 0.03},
			{description = "Medium", data = 0.05},
			{description = "Medarge", data = 0.07},
			{description = "Large", data = 0.11, hover="Default 󰀡"},
			{description = "Huge", data = 0.33},
			{description = "Ultra", data = 0.66},
			
		},
		default = 0.11
	},
	


	Title("Abillities 󰀩"),
	
	{
		name = "WILDCARD_DIET",
		label = "Wildcards Nightmare Diet",
		hover = "Disable or enable Wildcards nightmare fuel diet.",
		options =
		{
			{description = "Enabled", data = 1, hover="Default 󰀡"},
			{description = "Disabled", data = 0},
		},
		default = 1
	},
	
		{
		name = "WILDCARD_DIET_EXCEPTIONS",
		label = "Wildcards Diet Exceptions",
		hover = "Choose what other food groups should Wildcard be able to eat.",
		options =
		{
			{description = "1", data = 1},
			{description = "0", data = 0, hover="Default 󰀡"},
			
		},
		default = 1
	},
	
	{
		name = "WILDCARD_SHADOWWEAPONBUFF",
		label = "Wildcards Shadow Weapon DMG Buff",
		hover = "Disable or enable Wildcards damage boost with shadow weapons.",
		options =
		{
			{description = "Enabled", data = 1, hover="Default 󰀡"},
			{description = "Disabled", data = 0},
		},
		default = 1
	},

	{
		name = "WILDCARD_INSOMNIA",
		label = "Wildcards Insomnia",
		hover = "Disable or enable Wildcards insomnia.",
		options =
		{
			{description = "Enabled", data = 1, hover="Default 󰀡"},
			{description = "Disabled", data = 0},
		},
		default = 1
	},
	
	{
		name = "WILDCARD_MONSTER",
		label = "Wildcards Monstrosity",
		hover = "Disable or enable Wildcard being considered a monster by other creature.",
		options =
		{
			{description = "Enabled", data = 1, hover="Default 󰀡"},
			{description = "Disabled", data = 0},
		},
		default = 1
	},
	--[[
	{
		name = "WILDCARD_PORTAL",
		label = "Wildcards Portal",
		hover = "Pick your FX for when using Wildcard's Deck.",
		options =
		{
			{description = "Forge Player", data = "lavaarena_portal_player_fx", hover="Default 󰀡"},
			{description = "Forge Creature", data = "lavaarena_creature_teleport_medium_fx"},
		},
		default = "lavaarena_portal_player_fx"
	},
	--]]
	
	{
		name = "WILDCARD_LITERACY",
		label = "Wildcards Literacy",
		hover = "Disable or enable Wildcard being able to read Wickerbottoms book.",
		options =
		{
			{description = "Enabled", data = 1, hover="Default 󰀡"},
			{description = "Disabled", data = 0},
		},
		default = 1
	},
	
	{
		name = "WILDCARD_STAFFSANITY",
		label = "Wildcards Staff Resistance",
		hover = "How much sanity Wildcard loses when using staves.",
		options =
		{
			{description = "0.1", data = 0.1},
			{description = "0.2", data = 0.2},
			{description = "0.3", data = 0.3},
			{description = "0.4", data = 0.4},
			{description = "0.5", data = 0.5},
			{description = "0.6", data = 0.6, hover="Default 󰀡"},
			{description = "0.7", data = 0.7},
			{description = "0.8", data = 0.8},
			{description = "0.9", data = 0.9},
			{description = "1", data = 1},
		},
		default = 0.6
	},
	
	{
		name = "WILDCARD_BRAINTRAUMA",
		label = "Wildcards Brain Trauma",
		hover = "Disable or enable Wildcard dying at 0 sanity.",
		options =
		{
			{description = "Enabled", data = 1, hover="Default 󰀡"},
			{description = "Disabled", data = 0},
		},
		default = 1
	},
	
		{
		name = "WILDCARD_MENTALFATIGUE",
		label = "Wildcards Mental Fatigue",
		hover = "Disable or enable Wildcard dying after one minute of induced insanity.",
		options =
		{
			{description = "Enabled", data = 1, hover="Default 󰀡"},
			{description = "Disabled", data = 0},
		},
		default = 1
	},
	
		{
		name = "WILDCARD_MENTALFATIGUE_TIMER",
		label = "Mental Fatigue Countdown",
		hover = "Amount of time you're allowed to spend in induced insanity before dying.",
		options =
		{
			{description = "30 seconds", data = 900},
			{description = "60 seconds", data = 1800, hover="Default 󰀡"},
			{description = "120 seconds", data = 3600},
			{description = "180 seconds", data = 5400},

			
		},
		default = 1800
	},
	
		{
		name = "WILDCARD_RABBIFICATION",
		label = "Wildcards Rabbification Trick",
		hover = "Disable or enable Wildcards punches rabbifiying her targets.",
		options =
		{
			{description = "Enabled", data = 1, hover="Default 󰀡"},
			{description = "Disabled", data = 0},
		},
		default = 1
	},
	
	{
		name = "WILDCARD_NIGHTLIGHT_THRESHHOLD",
		label = "Wildcards Night Light Threshold",
		hover = "What percent a Night Light will be ignited to and held at while Wildcard is nearby.",
		options =
		{
			{description = "1%", data = 0.01},
			{description = "5%", data = 0.05},
			{description = "10%", data = 0.1},
			{description = "20%", data = 0.2},
			{description = "30%", data = 0.3, hover="Default 󰀡"},
			{description = "40%", data = 0.4},
			{description = "50%", data = 0.5},
			{description = "60%", data = 0.6},
			{description = "70%", data = 0.7},
			{description = "80%", data = 0.8},
			{description = "90%", data = 0.9},
			{description = "100%", data = 1},
			
		},
		default = 0.3
	},

	

	{
		name = "WILDCARD_FUEL_HUNGERDRAIN",
		label = "Wildcards Nightmare Fuel Burn",
		hover = "How many Nightmare Fuel's Wildcard can be holding at once before she begins draining hunger faster.",
		options =
		{
			{description = "0", data = 0},
			{description = "5", data = 5},
			{description = "10", data = 10},
			{description = "20", data = 20},
			{description = "40", data = 40, hover="Default 󰀡"},
			{description = "60", data = 60},
			{description = "80", data = 80},
			{description = "120", data = 120},
			{description = "160", data = 160},
			{description = "200", data = 200},
			
		},
		default = 40
	},
	
	{
		name = "WILDCARD_EXTRADROPS",
		label = "Wildcards Extra Fuel Drop",
		hover = "Disable or enable Wildcards chance of getting extra nightmare fuel when killing nightmares.",
		options =
		{
			{description = "1", data = 1},
			{description = "0", data = 0, hover="Default 󰀡"},
			
		},
		default = 1
	},
	

	Title("Shadow Clones 󰀖"),

	{
		name = "SHADOWWILDCARD_WORKER_HEALTH",
		label = "Worker Bunny Health",
		hover = "How much health the worker bunnies have.",
		options =
		{
			{description = "1", data = 1},
			{description = "50", data = 50},
			{description = "100", data = 100},
			{description = "150", data = 150},
			{description = "180", data = 180},
			{description = "200", data = 200, hover="Default 󰀡"},
			{description = "250", data = 250},
			{description = "300", data = 300},
			
		},
		default = 200
	},
	
	
	{
		name = "SHADOWWILDCARD_DUELIST_HEALTH",
		label = "Duelist Bunny Health",
		hover = "How much health the duelist bunny has.",
		options =
		{
			{description = "150", data = 150},
			{description = "180", data = 180},
			{description = "200", data = 200, hover="Default 󰀡"},
			{description = "250", data = 250},
			{description = "300", data = 300},
			
		},
		default = 200
	},
	
	{
		name = "SHADOWWILDCARD_DUELIST_REGEN",
		label = "Duelist Bunny Regen",
		hover = "How much health the duelist bunny regens per 2 seconds.",
		options =
		{
			{description = "10", data = 10},
			{description = "25", data = 25},
			{description = "50", data = 50, hover="Default 󰀡"},
			{description = "100", data = 100},
			{description = "150", data = 150},
			
		},
		default = 50
	},
	
		{
		name = "SHADOWWILDCARD_DUELIST_DAMAGE",
		label = "Duelist Bunny Damage",
		hover = "How much damage the duelist bunny does per hit.",
		options =
		{
			{description = "48", data = 48},
			{description = "58", data = 58},
			{description = "68", data = 68, hover="Default 󰀡"},
			{description = "78", data = 78},
			{description = "88", data = 88},
			
		},
		default = 68
	},
	
	{
		name = "SHADOWWILDCARD_DUELIST_ATTACKPERIOD",
		label = "Duelist Bunny Attack Rate",
		hover = "Cooldown between each attack for the duelist bunny.",
		options =
		{
			{description = "1", data = 1},
			{description = "1.5", data = 1.5},
			{description = "2", data = 2, hover="Default 󰀡"},
			{description = "2.5", data = 2.5},
			{description = "3", data = 3},
			
		},
		default = 2
	},
	
	{
		name = "SHADOWWILDCARD_SPEED",
		label = "Shadow Bunny Move Speed",
		hover = "How fast the shadow bunnies run.",
		options =
		{
			{description = "0.8", data = 4},
			{description = "0.9", data = 5},
			{description = "1", data = 6, hover="Default 󰀡"},
			{description = "1.1", data = 7},
			{description = "1.2", data = 8},
			{description = "1.3", data = 9},
		},
		default = 6
	},

	{
		name = "SHADOWWILDCARD_COST",
		label = "Shadow Bunny Crafting Cost",
		hover = "The amount of nightmare fuel required to craft shadow bunnies.",
		options =
		{
			{description = "1", data = 1},
			{description = "2", data = 2, hover="Default 󰀡"},
			{description = "3", data = 3},
			{description = "4", data = 4},
			{description = "5", data = 5},
			{description = "6", data = 6},
		},
		default = 2
	},



	Title("Misc 󰀏"),
	
		{
			name = "WILDCARD_VOICE",
			label = "Wildcards Voice",
			hover = "The voice Wildcard uses in game.",
			options =
			{
				{description = "Default", data = "wildcard"},
				{description = "Cliff's Version", data = "wildcard_cliff"},

			},
			default = "wildcard"
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
