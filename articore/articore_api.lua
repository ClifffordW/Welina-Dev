------------------------------------------------------------------------
-- modutil.lua
-- Utility library for DST mod development.
-- Drop in your mod's scripts/ folder and require it in modmain.lua:
--   require "modutil"
------------------------------------------------------------------------

------------------------------------------------------------------------
-- Cached requires — loaded once, not on every function call
------------------------------------------------------------------------


--modimport("articore/articore_defines")

local _scrapbook_prefabs   = nil
local _scrapbookdata       = nil
local _skin_affinity_info  = nil

local function get_scrapbook_prefabs()
    if not _scrapbook_prefabs then
        _scrapbook_prefabs = require("scrapbook_prefabs")
    end
    return _scrapbook_prefabs
end

local function get_scrapbookdata()
    if not _scrapbookdata then
        _scrapbookdata = require("screens/redux/scrapbookdata")
    end
    return _scrapbookdata
end

local function get_skin_affinity_info()
    if not _skin_affinity_info then
        _skin_affinity_info = GLOBAL.require("skin_affinity_info")
    end
    return _skin_affinity_info
end


------------------------------------------------------------------------
-- ########## COLOUR UTILITIES ##########
------------------------------------------------------------------------

--- Converts 0-255 RGBA to a DST colour table { r, g, b, a }
--- Alpha is already 0-1 to match DST convention.
--- @param r integer  0-255
--- @param g integer  0-255
--- @param b integer  0-255
--- @param a number   0-1  (default 1)
function RGBA(r, g, b, a)
    r = math.clamp(r, 0, 255) / 255
    g = math.clamp(g, 0, 255) / 255
    b = math.clamp(b, 0, 255) / 255
    a = (a ~= nil) and math.clamp(a, 0, 1) or 1
    return { r, g, b, a }
end

--- Converts a hex colour string to a DST colour table { r, g, b, a }
--- Accepts:
---   "#RRGGBB"   "#RRGGBBAA"
---   "RRGGBB"    "RRGGBBAA"   (hash optional)
--- @param hex string
--- @param a   number   optional alpha override 0-1
function HEX(hex, a)
    hex = hex:gsub("^#", "")
    local r = tonumber(hex:sub(1, 2), 16) or 255
    local g = tonumber(hex:sub(3, 4), 16) or 255
    local b = tonumber(hex:sub(5, 6), 16) or 255
    local ha = tonumber(hex:sub(7, 8), 16)
    -- explicit alpha arg overrides embedded alpha
    if a ~= nil then
        ha = math.clamp(a, 0, 1) * 255
    end
    ha = ha and (ha / 255) or 1
    return { r / 255, g / 255, b / 255, ha }
end


------------------------------------------------------------------------
-- ########## ASSET MANAGEMENT ##########
--
-- Every function runs softresolvefilepath first.
-- If the file isn't found in the virtual filesystem the asset is
-- skipped and a warning is printed — this prevents silent load errors
-- for assets that are optional or conditionally present.
------------------------------------------------------------------------

--- Internal helper: check file exists, warn and return false if not.
local function _check(path, label)
    if not softresolvefilepath(path) then
        print("[ARTICORE] " .. label .. ": file not found: " .. path)
        return false
    end
    return true
end

-- ── Anim ─────────────────────────────────────────────────────────────

--- Adds a guaranteed-resident ANIM asset.
--- @param anim      string   zip name without extension
--- @param subfolder string|nil  subfolder under anim/
function AddAnim(anim, subfolder)
    Assets = Assets or {}
    local path = subfolder and ("anim/" .. subfolder .. "/") or "anim/"
    local full = path .. anim .. ".zip"
    if not _check(full, "AddAnim") then return end
    table.insert(Assets, Asset("ANIM", full))
end

--- Adds a streamed/evictable DYNAMIC anim asset.
--- The engine requires a paired .dyn PKGREF sidecar for dynamic banks.
--- @param anim      string   zip name without extension
--- @param dynname   string|nil  .dyn name if different from anim name
--- @param subfolder string|nil  subfolder under anim/dynamic/
function AddDynamicAnim(anim, dynname, subfolder)
    Assets = Assets or {}
    local path = subfolder and ("anim/dynamic/" .. subfolder .. "/") or "anim/dynamic/"
    dynname    = dynname or anim
    local full = path .. anim .. ".zip"
    local dyn  = path .. dynname .. ".dyn"
    if not _check(full, "AddDynamicAnim") then return end
    table.insert(Assets, Asset("DYNAMIC_ANIM", full))
    -- PKGREF is a soft reference so we don't gate on it — it may be
    -- generated at build time and not present as a raw file.
    table.insert(Assets, Asset("PKGREF",  dyn))
end

-- Backward-compat alias used by AddCharacterSkin internally
local _AddDynamic_legacy = AddDynamicAnim

-- ── Atlas / Texture ───────────────────────────────────────────────────

--- Adds a guaranteed-resident ATLAS (loads immediately with the prefab).
--- @param atlas     string   .xml name without extension
--- @param inv       boolean  true = images/inventoryimages/
--- @param subfolder string|nil
function AddAtlas(atlas, inv, subfolder)
    Assets = Assets or {}
    local base = inv and "images/inventoryimages/" or "images/"
    local path = subfolder and (base .. subfolder .. "/") or base
    local full = path .. atlas .. ".xml"
    if not _check(full, "AddAtlas") then return end
    table.insert(Assets, Asset("ATLAS", full))
end

--- Adds a streamed/evictable DYNAMIC_ATLAS.
--- Paired with a PKGREF for the .tex so the engine can find it on demand.
--- @param atlas     string   .xml name without extension
--- @param tex       string|nil  .tex name if different from atlas name
--- @param inv       boolean  true = images/inventoryimages/
--- @param subfolder string|nil
function AddDynamicAtlas(atlas, tex, inv, subfolder)
    Assets = Assets or {}
    tex        = tex or atlas
    local base = inv and "images/inventoryimages/" or "images/"
    local path = subfolder and (base .. subfolder .. "/") or base
    local xml  = path .. atlas .. ".xml"
    local texf = path .. tex   .. ".tex"
    if not _check(xml, "AddDynamicAtlas") then return end
    table.insert(Assets, Asset("DYNAMIC_ATLAS", xml))
    table.insert(Assets, Asset("PKGREF",        texf))
end

--- Adds an ATLAS_BUILD asset.
--- This rasterises an existing atlas into a symbol at a given resolution,
--- which is how items appear on minisigns without a hand-made symbol file.
--- @param atlas      string   .xml path (full, e.g. "images/inventoryimages/myitem.xml")
--- @param resolution integer  raster resolution, typically 64 or 256
function AddAtlasBuild(atlas, resolution)
    Assets = Assets or {}
    resolution = resolution or 256
    if not _check(atlas, "AddAtlasBuild") then return end
    table.insert(Assets, Asset("ATLAS_BUILD", atlas, resolution))
end


--- Adds a guaranteed-resident ATLAS (loads immediately with the prefab).
--- @param tex     string   .xml name without extension
--- @param inv       boolean  true = images/inventoryimages/
--- @param subfolder string|nil
function AddTex(tex, inv, subfolder)
    Assets = Assets or {}
    local base = inv and "images/inventoryimages/" or "images/"
    local path = subfolder and (base .. subfolder .. "/") or base
    local full = path .. tex .. ".tex"
    if not _check(full, "AddTex") then return end
    table.insert(Assets, Asset("IMAGE", full))
end



-- ── Sound ─────────────────────────────────────────────────────────────

--- Adds just the SOUND bank (.fsb).
--- Use this when you only have an fsb and no fev event bank.
--- @param sound     string   .fsb name without extension
--- @param subfolder string|nil
function AddSoundBank(sound, subfolder)
    Assets = Assets or {}
    local path = subfolder and ("sound/" .. subfolder .. "/") or "sound/"
    local full = path .. sound .. ".fsb"
    if not _check(full, "AddSoundBank") then return end
    table.insert(Assets, Asset("SOUND", full))
end

--- Adds just the SOUNDPACKAGE event bank (.fev).
--- Use this when you only have an fev (e.g. referencing a shared fsb).
--- @param pkg       string   .fev name without extension
--- @param subfolder string|nil
function AddSoundPackage(pkg, subfolder)
    Assets = Assets or {}
    local path = subfolder and ("sound/" .. subfolder .. "/") or "sound/"
    local full = path .. pkg .. ".fev"
    if not _check(full, "AddSoundPackage") then return end
    table.insert(Assets, Asset("SOUNDPACKAGE", full))
end

--- Adds a matched SOUND (.fsb) + SOUNDPACKAGE (.fev) pair.
--- Use this when both files share the same name (most common case).
--- @param sound     string   base name without extension
--- @param soundpkg  string|nil  fev name if different from fsb name
--- @param subfolder string|nil
function AddSound(sound, soundpkg, subfolder)
    soundpkg = soundpkg or sound
    AddSoundBank(sound,   subfolder)
    AddSoundPackage(soundpkg, subfolder)
end


------------------------------------------------------------------------
-- ########## FONT UTILITIES ##########
------------------------------------------------------------------------

--- Registers a custom talking font for a character.
--- Handles the full pipeline: unload stale → build prefab → load →
--- register fallbacks → assign to talker component.
--- Uses SimPostInit (safe; TheSim is ready, no world needed).
--- @param prefab string  character prefab name
function AddCharFont(prefab)
    local font_global = "TALKINGFONT_" .. prefab:upper()
    _G.global(font_global)
    _G[font_global] = "talkingfont_" .. prefab

    local charfont = _G[font_global]
    if not charfont then
        print("[ARTICORE] AddCharFont: failed to resolve font global for " .. prefab)
        return
    end

    -- SimPostInit: TheSim exists, runs before any world load
    AddSimPostInit(function()
        local font_path = _G.resolvefilepath("fonts/talkingfont_" .. prefab .. ".zip")
        if not font_path then
            print("[ARTICORE] AddCharFont: font file not found for " .. prefab)
            return
        end

        -- Clean up any previously loaded version
        TheSim:UnloadFont(charfont)
        TheSim:UnloadPrefabs({ prefab .. "_font" })

        local font_assets = { Asset("FONT", font_path) }
        local font_prefab = _G.Prefab(
            prefab .. "_font",
            function() return _G.CreateEntity() end,
            font_assets
        )
        _G.RegisterPrefabs(font_prefab)
        TheSim:LoadPrefabs({ prefab .. "_font" })
        TheSim:LoadFont(font_path, charfont)
        TheSim:SetupFontFallbacks(charfont, _G.DEFAULT_FALLBACK_TABLE_OUTLINE)
    end)

    -- Also register in the global Assets list so it travels with the mod
    Assets = Assets or {}
    table.insert(Assets, Asset("FONT", "fonts/talkingfont_" .. prefab .. ".zip"))

    -- Assign font to the character's talker component
    AddPrefabPostInit(prefab, function(inst)
        if inst and inst.components and inst.components.talker then
            inst.components.talker.font = charfont
        end
    end)
end

--- Registers a generic (non-talking) font for UI use.
--- Safe to call from modmain; font is available after SimPostInit.
--- @param name      string  the global name you'll reference it by e.g. "MYFONT"
--- @param zip_path  string  path to the font zip e.g. "fonts/myfont.zip"
--- @param fallback  table|nil  fallback table, defaults to DEFAULT_FALLBACK_TABLE
function AddFont(name, zip_path, fallback)
    Assets = Assets or {}
    table.insert(Assets, Asset("FONT", zip_path))

    _G.global(name)

    AddSimPostInit(function()
        local resolved = _G.resolvefilepath(zip_path)
        if not resolved then
            print("[ARTICORE] AddFont: font file not found: " .. zip_path)
            return
        end

        _G[name] = name:lower()  -- convention: global "MYFONT" → engine name "myfont"
        TheSim:LoadFont(resolved, _G[name])
        TheSim:SetupFontFallbacks(
            _G[name],
            fallback or _G.DEFAULT_FALLBACK_TABLE or {}
        )
    end)
end


------------------------------------------------------------------------
-- ########## CHARACTER MANAGEMENT ##########
------------------------------------------------------------------------

--- Registers a character prefab + all associated strings.
--- @param character     string   prefab name
--- @param name          string   display name
--- @param gender        string   e.g. "MALE" "FEMALE" "NEUTRAL"
--- @param title         string   selection screen title
--- @param quote         string   character quote (without quotes)
--- @param skindesc      string   default skin description
--- @param map           string   minimap icon identifier
--- @param speech        string   speech file prefix
--- @param survivability string   e.g. "MILD" "AVERAGE" "GRIM"
--- @param addprefabs    boolean  also register character.."_none" prefab
--- @param hasvoidclothface boolean  add voidcloth hat anim
function AddCharacter(
    character, name, gender, title, quote,
    skindesc, map, speech, survivability,
    addprefabs, hasvoidclothface
)
    AddPrefab(character)
    if addprefabs then
        AddPrefab(character .. "_none")
    end

    if hasvoidclothface then
        Assets = Assets or {}
        table.insert(Assets, Asset("ANIM", "anim/" .. character .. "_voidclothhat.zip"))
    end

    STRINGS.CHARACTER_NAMES[character]                  = name
    STRINGS.CHARACTER_TITLES[character]                 = title
    STRINGS.CHARACTER_QUOTES[character]                 = '"' .. quote .. '"'
    STRINGS.SKIN_DESCRIPTIONS[character .. "_none"]     = skindesc
    STRINGS.SKIN_NAMES[character .. "_none"]            = name
    STRINGS.CHARACTER_SURVIVABILITY[character]          = survivability
    STRINGS.NAMES[string.upper(character)]              = name
    STRINGS.CHARACTERS[string.upper(character)]         = require("speech_" .. speech)

    AddMinimapAtlas("images/map_icons/" .. character .. ".xml")

    local skin_modes = {
        { type = "ghost_skin", anim_bank = "ghost", idle_anim = "idle", scale = 0.75, offset = { 0, -25 } }
    }
    AddModCharacter(character, gender, skin_modes)
end

--- Sets the ability bullet points in the character description.
--- @param character string
--- @param first     string|nil
--- @param second    string|nil
--- @param third     string|nil
function CharacterAbility(character, first, second, third)
    local lines = {}
    if first  and first  ~= "" then table.insert(lines, "* " .. first)  end
    if second and second ~= "" then table.insert(lines, "* " .. second) end
    if third  and third  ~= "" then table.insert(lines, "* " .. third)  end
    STRINGS.CHARACTER_DESCRIPTIONS[character] = table.concat(lines, "\n")
end

-- Backward-compat alias for the old typo
CharacterAbillity = CharacterAbility

--- Sets the "about me" blurb for a character.
--- @param character string
--- @param text      string
function AddAboutMe(character, text)
    STRINGS.CHARACTER_ABOUTME[character] = text
end

--- Registers a skin for a character.
--- @param character   string   base character prefab
--- @param skin        string   skin identifier
--- @param name        string
--- @param description string
--- @param quote       string
--- @param modded      boolean  true = skin is its own prefab (not character_skin)
--- @param dynamicskin boolean  use DYNAMIC asset instead of ANIM
--- @param addprefabs  boolean  register the prefab
function AddCharacterSkin(character, skin, name, description, quote, modded, dynamicskin, addprefabs)
    local charname = modded and skin or (character .. "_" .. skin)

    if addprefabs then
        PrefabFiles = PrefabFiles or {}
        table.insert(PrefabFiles, charname)
    end

    STRINGS.SKIN_NAMES[charname]        = name
    STRINGS.SKIN_DESCRIPTIONS[charname] = description
    STRINGS.SKIN_QUOTES[charname]       = '"' .. quote .. '"'

    if dynamicskin then
        AddDynamicAnim(charname)
    else
        AddAnim(charname)
    end

    local PREFAB_SKINS       = GLOBAL.PREFAB_SKINS
    local skin_affinity_info = get_skin_affinity_info()

    PREFAB_SKINS[character]       = PREFAB_SKINS[character]       or {}
    skin_affinity_info[character] = skin_affinity_info[character] or {}

    table.insert(PREFAB_SKINS[character],       charname)
    table.insert(skin_affinity_info[character], charname)
end

--- Defines an extra skin mode (e.g. a transformed state) for a character.
--- @param name        string   character prefab
--- @param mode1       string   skin mode type identifier
--- @param hasclothing boolean  whether this mode receives clothing skins
function AddSkinMode(name, mode1, hasclothing)
    if not mode1 then return end

    local skin_mode = { type = mode1, play_emotes = true }
    table.insert(GLOBAL.MODCHARACTERMODES[name], 1, skin_mode)

    if hasclothing then
        table.insert(GLOBAL.SKIN_TYPES_THAT_RECEIVE_CLOTHING, mode1)
    end
end

--- Overrides the scoreboard badge rendering for a character.
--- @param prefab  string
--- @param state1  string  skin mode for state 1
--- @param state2  string  skin mode for state 2
--- @param state3  string  skin mode for state 3
function AddScoreBadge(prefab, state1, state2, state3)
    local old_badge = GLOBAL.GetPlayerBadgeData

    GLOBAL.GetPlayerBadgeData = function(character, ghost, s1, s2, s3)
        if character ~= prefab then
            return old_badge(character, ghost, s1, s2, s3)
        end

        if ghost then
            return "ghost", "idle", "ghost_skin", 0.15, -55
        end

        local mode = (s1 and state1) or (s2 and state2) or (s3 and state3) or "normal_skin"
        return "wilson", "idle_loop_ui", mode, 0.23, -50
    end
end

-- Backward-compat alias for old double-b typo
AddScorebBadge = AddScoreBadge

--- Plays custom lobby music when a specific character is selected.
--- @param music      string   FMOD sound path
--- @param prefab     string   character prefab name
--- @param hasreverb  boolean  whether to apply reverb (panel index 2)
function AddCharLobbyMusic(music, prefab, hasreverb)
    if not music or not prefab then return end

    AddClassPostConstruct("screens/redux/lobbyscreen", function(self)
        local old_update   = self.OnUpdate
        local old_stopmsc  = self.StopLobbyMusic

        self.OnUpdate = function(self, ...)
            old_update(self, ...)

            local root = self.panel and self.panel.character_scroll_list
            if not root then return end

            local character = root:GetCharacter()
            local snd       = TheFrontEnd:GetSound()

            if character == prefab then
                if not snd:PlayingSound("characterselect") then
                    snd:PlaySound(music, "characterselect")
                    snd:SetVolume("characterselect", 1)
                end
                -- Reverb: panel index 2 = in-game lobby panel
                if hasreverb then
                    local rv = (self.current_panel_index == 2) and 0.19 or 0.09
                    snd:SetParameter("characterselect", "reverb", rv)
                end
            else
                if snd:PlayingSound("characterselect") then
                    snd:SetVolume("characterselect", 0)
                end
            end
        end

        self.StopLobbyMusic = function(self, ...)
            old_stopmsc(self, ...)
            TheFrontEnd:GetSound():KillSound("characterselect")
        end
    end)
end


------------------------------------------------------------------------
-- ########## WORLD / PREFAB UTILITIES ##########
------------------------------------------------------------------------

--- Registers a prefab file and sets its display/recipe strings.
--- @param prefab      string
--- @param name        string|nil   defaults to "Thingamabob"
--- @param craftstring string|nil
function AddPrefab(prefab, name, craftstring)
    PrefabFiles = PrefabFiles or {}
    table.insert(PrefabFiles, prefab)
    STRINGS.NAMES[string.upper(prefab)]      = name        or "Thingamabob"
    STRINGS.RECIPE_DESC[string.upper(prefab)] = craftstring or "Thingamabob"
end

--- Registers an upgrade type and wires up the upgrader component.
--- @param upgrade  string  upgrade type name (will be uppercased)
--- @param material string  associated material prefab
function AddUpgradeType(upgrade, material)
    if not upgrade or not material then
        print("[ARTICORE] AddUpgradeType: missing upgrade or material")
        return
    end

    upgrade = string.upper(upgrade)
    UPGRADETYPES[upgrade] = material

    AddPrefabPostInit(material, function(inst)
        if inst and inst.AddComponent then
            inst:AddComponent("upgrader")
            inst.components.upgrader.upgradetype = UPGRADETYPES[upgrade]
        end
    end)

    AddPlayerPostInit(function(player)
        if player and player.AddTag then
            player:AddTag(material .. "_upgradeuser")
        end
    end)
end

--- Registers a repair type and wires up the repairer component.
--- @param repair   string
--- @param material string
function AddRepairType(repair, material)
    if not repair or not material then
        print("[ARTICORE] AddRepairType: missing repair or material")
        return
    end

    repair = string.upper(repair)
    GLOBAL.MATERIALS[repair] = material

    AddPrefabPostInit(material, function(inst)
        if inst and inst.AddComponent then
            inst:AddComponent("repairer")
            inst.components.repairer.repairmaterial = GLOBAL.MATERIALS[repair]
        end
    end)
end


function AddRecipeFilter_2(atlas, name, tex, filtername, custompath, index)

	local function GetCraftingMenuAtlas()
		return resolvefilepath(custompath and "images/"..custompath.."/"..atlas..".xml" or "images/"..atlas..".xml")
	end

	if name then
		name = string.upper(name)
	end

	-- Define a new filter object
	local custom_filter = {
		name = name,
		atlas = GetCraftingMenuAtlas,
		image = tex..".tex",
	}

	-- Adding custom filters
	AddRecipeFilter(custom_filter, index or nil)
	STRINGS.UI.CRAFTING_FILTERS[name] = filtername -- Name displayed in the production column


end


------------------------------------------------------------------------
-- ########## SCRAPBOOK ##########
------------------------------------------------------------------------

--- Adds an item to the scrapbook.
--- @param prefab       string
--- @param category     string   "creature"|"item"|"food"|"giant"|"thing"|"POI"
--- @param subcat       string|nil
--- @param description  string|nil   defaults to "PLACEHOLDER"
--- @param is_burnable  number|nil   fuel value if burnable
--- @param bank         string   anim bank
--- @param build        string   anim build
--- @param anim         string   idle anim name
--- @param atlas        string   inventory atlas name (without path/extension)
function AddScrapbookItem(prefab, category, subcat, description, is_burnable, bank, build, anim, atlas)
    -- Validate prefab file is registered
    if PrefabFiles then
        local found = false
        for _, v in ipairs(PrefabFiles) do
            if v == prefab then found = true break end
        end
        if not found then
            print("[ARTICORE] AddScrapbookItem: prefab not registered: " .. tostring(prefab))
            return
        end
    end

    local valid_categories = { creature=true, item=true, food=true, giant=true, thing=true, POI=true }
    category = valid_categories[category] and category or "thing"
    subcat   = (subcat and subcat ~= "") and subcat or nil

    local scrapbook_prefabs = get_scrapbook_prefabs()
    local scrapbookdata     = get_scrapbookdata()

    STRINGS.SCRAPBOOK.SPECIALINFO[string.upper(prefab)] = description or "PLACEHOLDER"

    local entry = {
        subcat      = subcat,
        fueltype    = is_burnable and "BURNABLE" or nil,
        fuelvalue   = is_burnable or nil,
        burnable    = is_burnable ~= nil,
        build       = build,
        bank        = bank,
        anim        = anim or "idle",
        specialinfo = string.upper(prefab),
        name        = prefab,
        prefab      = prefab,
        tex         = prefab .. ".tex",
        type        = "item",
        deps        = {},
        notes       = {},
    }

    if entry.subcat then
        local key = string.upper(entry.subcat)
        if STRINGS.SCRAPBOOK.SUBCATS[key] == nil then
            STRINGS.SCRAPBOOK.SUBCATS[key] = entry.subcat
        end
    end

    RegisterScrapbookIconAtlas(
        resolvefilepath("images/inventoryimages/" .. atlas .. ".xml"),
        entry.tex
    )

    scrapbook_prefabs[prefab] = true
    scrapbookdata[prefab]     = entry
end


------------------------------------------------------------------------
-- ########## UI UTILITIES ##########
------------------------------------------------------------------------

--- Returns the current animation playing on an inst's AnimState.
--- Only works on PC (not console).
--- @param input entity|nil  defaults to mouse-hovered entity or ThePlayer
function GetCurrentAnimation(input)
    if IsConsole() then
        print("[ARTICORE] GetCurrentAnimation: not supported on console")
        return
    end
    local inst = input or ConsoleWorldEntityUnderMouse() or ThePlayer
    if not inst then return end
    return string.match(inst.entity:GetDebugString(), "anim: ([^ ]+) ")
end

--- Plays the talking dial animation on a UIAnim widget for a random duration.
--- @param widget   UIAnim
--- @param charvoice string  character prefab name for voice lookup
function UIAnim_Talk(widget, charvoice)
    if not widget or not widget.GetAnimState then return end

    local voice_overrides = {
        wathgrithr = "dontstarve_DLC001",
        webber     = "dontstarve_DLC001",
        wanda      = "wanda2",
        wonkey     = "monkeyisland",
        waxwell    = "dontstarve/characters/maxwell",
    }

    local base  = voice_overrides[charvoice] or "dontstarve"
    local char  = (charvoice == "waxwell") and "maxwell" or charvoice
    -- local path  = base .. "/characters/" .. char .. "/talk_LP"

    widget:GetAnimState():PlayAnimation("dial_loop", true)

    widget.inst:DoTaskInTime(math.random(2, 5), function()
        widget:GetAnimState():PlayAnimation("idle_loop", true)
    end)
end

--- Hides the MOTD/banner panel on the main menu.
function HideMenuPanel()
    AddClassPostConstruct("widgets/redux/mainmenu_motdpanel", function(self)
        if self.config and self.config.bg then
            self.config.bg:Hide()
        end

        local old_loaded = self.OnImagesLoaded
        if old_loaded then
            self.OnImagesLoaded = function(self, ...)
                old_loaded(self, ...)
                if self.config and self.config.bg then
                    self.config.bg:Hide()
                end
            end
        end
    end)

    AddClassPostConstruct("screens/redux/multiplayermainscreen", function(self)
        if self.banner_root then
            self.banner_root:Hide()
        end
    end)
end
