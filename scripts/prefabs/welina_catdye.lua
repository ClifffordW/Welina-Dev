local assets = {


    Asset("DYNAMIC_ATLAS", softresolvefilepath("images/inventoryimages/welina_dyes.xml")),
    Asset("ATLAS_BUILD", "images/inventoryimages/welina_dyes.xml", 256),
    Asset("ANIM", "anim/catcoon_dyes/welina_catcoon_dyetransition.zip")

}

local fmodtable = require("defs.sound.fmodtable_scotchmintz_characters").Track

local function OnIgniteFn(inst)
    inst.SoundEmitter:PlaySound("dontstarve/common/blackpowder_fuse_LP", "hiss")
    DefaultBurnFn(inst)
end

local function OnExtinguishFn(inst)
    inst.SoundEmitter:KillSound("hiss")
    DefaultExtinguishFn(inst)
end

local function OnExplodeFn(inst)
    inst.SoundEmitter:KillSound("hiss")
    SpawnPrefab("explode_small").Transform:SetPosition(inst.Transform:GetWorldPosition())
end

local prefabs = {
    "welina_catdye_smoke",
    "explode_small",
}

local COLOURS = {
    black = { 0, 0, 0, 1 },
    inverted = { 1, 1, 1, 1 },
    shadow = { 0, 0, 0, 0.8 },
    catcoon = RGB(137, 145, 153)
}







--------------------------------------------------------------------------

local function ApplyDyeEffects(target, colour, target_build)
    if not target:IsValid() then
        return
    end

    -- Reset state to default first
    target.AnimState:SetSymbolMultColour("swap_hat", 1, 1, 1, 1)
    target.AnimState:SetSymbolAddColour("swap_hat", 0, 0, 0, 0)
    target.AnimState:SetSymbolMultColour("swap_welinacollar", 1, 1, 1, 1)
    target.AnimState:SetSymbolAddColour("swap_welinacollar", 0, 0, 0, 0)
    target.AnimState:SetMultColour(1, 1, 1, 1)

    -- Apply specific color modifiers
    if colour == "inverted" then
        target.AnimState:SetSymbolMultColour("swap_hat", 0, 0, 0, 1)
        target.AnimState:SetSymbolAddColour("swap_hat", 1, 1, 1, 1)
        target.AnimState:SetSymbolMultColour("swap_welinacollar", 0, 0, 0, 1)
        target.AnimState:SetSymbolAddColour("swap_welinacollar", 1, 1, 1, 1)
    elseif colour == "shadow" then
        target.AnimState:SetSymbolMultColour("swap_hat", 0, 0, 0, 1)
        target.AnimState:SetSymbolMultColour("swap_welinacollar", 0, 0, 0, 1)
        target.AnimState:SetMultColour(0, 0, 0, 0.5)
    end

    target.AnimState:SetBuild(target_build)
end

local function OnUseOnKitcoon(inst, target, doer)
    if not (inst:IsValid() and target:IsValid()) then
        return false
    end

    local leader = target.components.follower:GetLeader()
    if doer ~= leader then
        return false, "WELINACAT_SPRAY_NOTMINE"
    end

    local colour = inst.colour or "catcoon"
    local is_shadow = colour == "shadow"

    local current_build = target.AnimState:GetBuild()
    local target_build = (colour == "catcoon" or is_shadow) and "catcoon_build" or "welina_catcoon_" .. colour

    local is_already_painted = (target.AnimState:GetBuild() == target_build)
    local is_already_shadow = (target.is_slim_shady)

    if is_already_painted and (is_shadow == is_already_shadow) then
        return false, is_shadow and "WELINACAT_PAINT_FAIL_SHADOW" or "WELINACAT_PAINT_FAIL"
    end

    if is_shadow then
        target.is_slim_shady = true
    else
        target.is_slim_shady = false
    end

    target.overridebuild = target_build

    if current_build:find("inverted") then

        target.components.named:SetName(target.name:reverse())
    elseif target_build:find("inverted") then


        target.components.named:SetName(target.name:reverse())

    end

    if target.components.locomotor then
        target.components.locomotor:StopMoving()
    end

    local fx = SpawnPrefab("welina_catdye_smoke")
    if fx then
        fx.entity:SetParent(target.entity)
        local r, g, b, a = unpack(COLOURS[colour] or { 1, 1, 1, 1 })
        fx.AnimState:SetMultColour(r, g, b, a)
        fx.AnimState:SetScale(1.2, 1.2)
    end

    target.welina_is_shadow = is_shadow

    if target.welina_skin_task then
        target.welina_skin_task:Cancel()
    end

    target.welina_skin_task = target:DoTaskInTime(0.575, function()
        ApplyDyeEffects(target, colour, target_build)
        target.welina_skin_task = nil
    end)

    inst:Remove()
    return true
end

local function IsKitcoon(inst, target, doer)
    return target:HasTag("sinner")
end


--------------------------------------------------------------------------

local function commonfn(colour_name, overrideanim)
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
    inst.entity:AddSoundEmitter()

    STRINGS.NAMES["WELINA_CATDYE_" .. colour_name:upper()] = colour_name:sub(1, 1):upper() .. colour_name:sub(2) .. " Dye"

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("welina_catdye")
    inst.AnimState:SetBuild("welina_catdye")
    inst.AnimState:PlayAnimation("idle_" .. (overrideanim or colour_name))
    inst.Transform:SetPosition(0, 9, 0)

    if colour_name == "shadow" then
        inst.AnimState:SetMultColour(0, 0, 0, .5)
    end

    inst:AddTag("welinacatcoon_dye")

    -- Dedicated slot tag (if you have a custom slot)
    -- inst:AddTag("nopunch") 

    inst.UseableTargetedItem_ValidTarget = IsKitcoon

    inst.pickupsound = "welina_paintcan"

    MakeInventoryFloatable(inst, "small", 0.1, 1.12)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst.colour = colour_name

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")

    if not TheSim:AtlasContains(softresolvefilepath("images/inventoryimages/welina_dyes.xml"), "welina_catdye_" .. colour_name .. ".tex") then
        inst.components.inventoryitem.imagename = "welina_catdye_black"
        inst.components.inventoryitem.atlasname = softresolvefilepath("images/inventoryimages/welina_dyes.xml")
    end

    MakeMediumBurnable(inst, 3 + math.random() * 3)
    MakeSmallPropagator(inst)
    --V2C: Remove default OnBurnt handler, as it conflicts with
    --explosive component's OnBurnt handler for removing itself
    inst.components.burnable:SetOnBurntFn(nil)
    inst.components.burnable:SetOnIgniteFn(OnIgniteFn)
    inst.components.burnable:SetOnExtinguishFn(OnExtinguishFn)

    inst:AddComponent("explosive")
    inst.components.explosive:SetOnExplodeFn(OnExplodeFn)
    inst.components.explosive.explosivedamage = TUNING.GUNPOWDER_DAMAGE

    inst:AddComponent("useabletargeteditem")
    inst.components.useabletargeteditem:SetOnUseFn(OnUseOnKitcoon)


    --[[     inst:AddComponent("equippable")
        inst.components.equippable.equipslot = EQUIPSLOTS.WELINA_DYE or EQUIPSLOTS.BODY
        inst.components.equippable:SetOnEquip(OnEquip)
        --inst.components.equippable:SetOnUnequip(OnUnequip)
        inst.components.equippable.restrictedtag = "sinner" ]]

    MakeHauntableLaunch(inst)

    return inst
end

-- FX Prefab
local function smokefn()
    local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
    inst.entity:AddSoundEmitter()

    inst:AddTag("FX")
    inst:AddTag("NOCLIP")

    inst.AnimState:SetBuild("welina_catcoon_dyetransition")
    inst.AnimState:SetBank("welina_catcoon_dyetransition")
    inst.AnimState:PlayAnimation("transition")
    inst.AnimState:HideSymbol("mask")
    inst.AnimState:HideSymbol("streaks")

    inst.AnimState:SetDeltaTimeMultiplier(0)
    inst:Hide()

    inst:DoTaskInTime(0.575, function()


        inst:Show()
        inst.AnimState:SetDeltaTimeMultiplier(1.2)
    end)

    inst.SoundEmitter:PlaySound(fmodtable.sfx.spray, "soundfx")

    inst.entity:SetPristine()
    if not TheWorld.ismastersim then
        return inst
    end

    inst.persists = false
    inst:ListenForEvent("animover", inst.Remove)

    return inst
end

--------------------------------------------------------------------------

-- Helper to create the specific color functions
local function MakeDye(name, overrideanim)
    return Prefab("welina_catdye_" .. name, function()
        return overrideanim and commonfn(name, overrideanim) or commonfn(name)
    end, assets, prefabs)
end
--NOTES(C4W to Mentos) second parameter is a fallback if the paint can doesnt exist
return MakeDye("black"),
MakeDye("inverted"),
MakeDye("catcoon"),
MakeDye("shadow", "black"),
MakeDye("gold"),
MakeDye("blue"),

Prefab("welina_catdye_smoke", smokefn, assets)