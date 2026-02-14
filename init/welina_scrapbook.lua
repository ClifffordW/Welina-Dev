-- Scrapbook code done by LeWasp: https://steamcommunity.com/id/mpinheiro19
-- Common Dependencies.
local _G = GLOBAL
local require = _G.require
local resolvefilepath = _G.resolvefilepath
local ScrapbookPrefabs = require("scrapbook_prefabs")
local ScrapbookData = require("screens/redux/scrapbookdata")
local ScrapbookScreen = require("screens/redux/scrapbookscreen")

-- Perishable References.
--[[
	TUNING.PERISH_SUPERFAST  = 1440  - 3  DAYS
	TUNING.PERISH_FAST       = 2880  - 6  DAYS
	TUNING.PERISH_FASTISH    = 3840  - 8  DAYS
	TUNING.PERISH_MED        = 4800  - 10 DAYS
	TUNING.PERISH_SLOW       = 7200  - 15 DAYS
	TUNING.PERISH_PRESERVED  = 9600  - 20 DAYS
	TUNING.PERISH_SUPERSLOW  = 19200 - 40 DAYS
	TUNING.RABBIT_PERISHTIME = 2400  - 5  DAYS
]]
--

-- Fuel References.
--[[
	TUNING.TINY_FUEL      = 7.5
	TUNING.SMALL_FUEL     = 15
	TUNING.MED_FUEL       = 45
	TUNING.MED_LARGE_FUEL = 90
	TUNING.LARGE_FUEL     = 180
	TUNING.HUGE_FUEL      = 270
]]
--

STRINGS.SCRAPBOOK.SPECIALINFO.WELINA_CATNIP = "Feed yourself to go on a nice trip gives you a speed boost but you fall asleep when you run out of sanity!\nGive it to catcoon to befriend it.. forever!"
STRINGS.SCRAPBOOK.SPECIALINFO.WELINA_CATTOY = "Very special item to keep the kitty busy."

STRINGS.SCRAPBOOK.SPECIALINFO.WELINA_COLLAR_SPIKED = "Very spiky collar. Makes the wearer reflect damage back to the attacker however does not mitigate damage.\nConsumes fuel only when reflecting damage."
STRINGS.SCRAPBOOK.SPECIALINFO.WELINA_COLLAR_REGEN = "Rejuvenating Collar makes the wearer recover HP.\nConsumes fuel only when recovering HP."
STRINGS.SCRAPBOOK.SPECIALINFO.WELINA_COLLAR_BOMB = "Collar go Boom!"
STRINGS.SCRAPBOOK.SPECIALINFO.WELINA_COLLAR_GLASS = "Damage enhancing collar. Gives the wearer bigger damage multiplier if worn by Welina's Catcoon it gives even more.\nConsumes fuel only when attacking."
STRINGS.SCRAPBOOK.SPECIALINFO.WELINA_COLLAR_LIGHT = "Collar that enlightens your path!\nConsumes fuel only at night."


local SCRAPBOOK_ITEMS = {

	welina_catnip = {
		name = "welina_catnip",
		type = "item",
		tex = "welina_catnip.tex",
		prefab = "welina_catnip",
		burnable = false,
		bank = "catnip",
		build = "welina_catnip",
		anim = "idle",
		specialinfo    = "WELINA_CATNIP",
		animoffsetx = 0,
		animoffsety = 0,
		depts = {"welina", "catcoon"},
        hungervalue = TUNING.CALORIES_TINY,
        healthvalue = TUNING.HEALING_TINY,
        sanityvalue = 0,

        foodtype = "VEGGIE"

	},



	welina_cattoy = {
		name = "welina_cattoy",
		type = "item",
		tex = "welina_cattoy.tex",
		prefab = "welina_cattoy",
		burnable = false,
		bank = "cattoy",
		build = "welina_cattoy",
		anim = "idle",
		deps = {"welina_catcoon"},
		specialinfo    = "WELINA_CATTOY",
	},

	--Collars

	welina_collar_spiked = {
		name = "welina_collar_spiked",
		type = "item",
		tex = "welina_collar_spiked.tex",
		prefab = "welina_collar_spiked",
		burnable = false,
		bank = "kitcoon_nametag",
		build = "welina_collar",
		anim = "spiked",
		deps = {"welina_catcoon"},
		specialinfo    = "WELINA_COLLAR_SPIKED",
	},

	welina_collar_spiked = {
		name = "welina_collar_spiked",
		type = "item",
		tex = "welina_collar_spiked.tex",
		prefab = "welina_collar_spiked",
		subcat = "clothing",
		burnable = false,
		bank = "kitcoon_nametag",
		build = "welina_collar",
		anim = "spiked",
		deps = {"welina_catcoon"},
		specialinfo    = "WELINA_COLLAR_SPIKED",
	},

	welina_collar_regen = {
		name = "welina_collar_regen",
		type = "item",
		tex = "welina_collar_regen.tex",
		prefab = "welina_collar_regen",
		subcat = "clothing",
		burnable = false,
		bank = "kitcoon_nametag",
		build = "welina_collar",
		anim = "regen",
		deps = {"welina_catcoon"},
		specialinfo    = "WELINA_COLLAR_REGEN",
	},


	welina_collar_bomb = {
		name = "welina_collar_bomb",
		type = "item",
		tex = "welina_collar_bomb.tex",
		prefab = "welina_collar_bomb",
		subcat = "clothing",
		burnable = false,
		bank = "kitcoon_nametag",
		build = "welina_collar",
		anim = "bomb",
		deps = {"welina_catcoon"},
		specialinfo    = "WELINA_COLLAR_BOMB",
	},

	welina_collar_glass = {
		name = "welina_collar_glass",
		type = "item",
		tex = "welina_collar_glass.tex",
		prefab = "welina_collar_glass",
		subcat = "clothing",
		burnable = false,
		bank = "kitcoon_nametag",
		build = "welina_collar",
		anim = "glass",
		deps = {"welina_catcoon"},
		specialinfo    = "WELINA_COLLAR_GLASS",
	},

		welina_collar_light = {
		name = "welina_collar_light",
		type = "item",
		tex = "welina_collar_light.tex",
		prefab = "welina_collar_light",
		subcat = "clothing",
		burnable = false,
		bank = "kitcoon_nametag",
		build = "welina_collar",
		anim = "light",
		deps = {"welina_catcoon"},
		specialinfo    = "WELINA_COLLAR_LIGHT",
	},

	





}

local scrapbook_extras =

{
	welina_catcoonden = {
			name = "welina_catcoonden",
			type = "thing",
			subcat = "structure",
			tex = "welina_catcoonden.tex",
			prefab = "welina_catcoonden",
			burnable = false,
			bank = "catcoon_den",
			build = "welina_catcoon_den",
			anim = "idle",
			deps = {"catcoon"}
		}
}



if TUNING.WELINA_CRAFTABLE_DENS == 1 then
    for name, data in pairs(scrapbook_extras) do
        SCRAPBOOK_ITEMS[name] = data
    end
end

-- Register the entries in the Scrapbook.
local function AddExtraScrapBookItem(sbdata, sbprefab, sbtable)
	for k, v in pairs(sbtable) do
		sbprefab[k] = true
		sbdata[k] = v
	end
end

-- Add our entries to the Scrapbook.
AddExtraScrapBookItem(ScrapbookData, ScrapbookPrefabs, SCRAPBOOK_ITEMS)
