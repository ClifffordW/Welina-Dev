local assets =
{
    Asset("ANIM", "anim/welina_collar.zip"),
    Asset("ANIM", "anim/ui_welina_collar.zip"),
}

local prefabs =
{

}

local function ReflectDamage(inst, data)
    if data.damage ~= nil and data.attacker ~= nil and data.attacker.components.health ~= nil then
        data.attacker.components.health:DoDelta(-data.damage * TUNING.WELINA_REFLECT_AMOUNT or 5)
    end
end

local function OnExplodeFn(inst)
    local explode = SpawnPrefab("explode_small")
    explode.Transform:SetPosition(inst.Transform:GetWorldPosition())
    explode.Transform:SetScale(4, 4, 4)
end


local function BoomCollar(inst, owner)

    inst.components.explosive:OnBurnt()
    SpawnPrefab("explodepulse_spawner").Transform:SetPosition(owner.Transform:GetWorldPosition())
    inst:Remove()
end




-- Constants
local COLLAR_PREFIX = "welina_collar_"
local ARMOR_COLLAR_MODIFIER = "armorcollar"
local LIGHT_COLOR = { 169 / 255, 231 / 255, 245 / 255 }
local LIGHT_RADIUS = 2
local LIGHT_INTENSITY = 0.8
local LIGHT_FALLOFF = 0.5






-- Function to handle equip event
local function onequip(inst, owner)
    local name = string.gsub(inst.prefab, COLLAR_PREFIX, "")





    if name == "bomb" then
        owner:ListenForEvent("death", function() BoomCollar(inst, owner) end)
    elseif name == "spiked" then
        owner:ListenForEvent("attacked", ReflectDamage)
    elseif name == "glass" and owner.components.combat then
        owner.components.combat.damagemultiplier = 3
    elseif name == "regen" then
        local current_hp = owner.components.health:GetPercent()
        owner.components.health:SetMaxHealth(TUNING.CATCOON_LIFE * 2)
        owner.components.health:SetPercent(current_hp)
        owner.health_task = inst:DoPeriodicTask(5, function()
            owner.components.health:DoDelta(50)
        end)
    elseif name == "armor" and owner.components.combat then
        owner.components.combat.externaldamagetakenmultipliers:SetModifier(owner, 0.9, ARMOR_COLLAR_MODIFIER)
    elseif name == "light" then
        if inst._light == nil then
            inst._light = SpawnPrefab("alterguardianhatlight")
            inst._light.entity:SetParent(owner.entity)
            inst._light.Light:SetRadius(LIGHT_RADIUS)
            inst._light.Light:SetIntensity(LIGHT_INTENSITY)
            inst._light.Light:SetFalloff(LIGHT_FALLOFF)
            inst._light.Light:SetColour(unpack(LIGHT_COLOR))
            inst._light.Light:Enable(true)
            inst._light.Light:EnableClientModulation(true)
        end
    end
end

-- Function to handle unequip event
local function onunequip(inst, owner)
    local name = string.gsub(inst.prefab, COLLAR_PREFIX, "")

    if name == "bomb" then
        owner:RemoveEventCallback("death", BoomCollar, inst)
    elseif name == "spiked" then
        owner:RemoveEventCallback("attacked", ReflectDamage)
    elseif name == "glass" and owner.components.combat then
        owner.components.combat.damagemultiplier = 0
    elseif name == "regen" then
        if owner:IsValid() and owner.components.health and owner.health_task then
            local current_hp = owner.components.health:GetPercent()
            owner.components.health:SetMaxHealth(TUNING.CATCOON_LIFE)
            owner.components.health:SetPercent(current_hp)
            owner.health_task:Cancel()
            owner.health_task = nil
        end
    elseif name == "light" then
        if inst._light and inst._light:IsValid() then
            inst._light:Remove()
            inst._light = nil
        end
    elseif name == "armor" and owner.components.combat then
        owner.components.combat.externaldamagetakenmultipliers:RemoveModifier(owner)
    end
end



local function fn_attachedcollar()
	local inst = CreateEntity()

	--[[Non-networked entity]]
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddFollower()


	inst.AnimState:SetBank("kitcoon_nametag")
	inst.AnimState:SetBuild("welina_collar")





	inst:AddComponent("highlightchild")

	inst.persists = false

	return inst
end



local function MakeCollar(name)
    local function fn()
        local inst = CreateEntity()

        inst.entity:AddTransform()
        inst.entity:AddAnimState()
        inst.entity:AddNetwork()



        MakeInventoryPhysics(inst)

        inst.AnimState:SetBank("kitcoon_nametag")
        inst.AnimState:SetBuild("welina_collar")
        inst.AnimState:PlayAnimation(name)

        MakeInventoryFloatable(inst)

        inst:AddTag("welinacatcoon_collar")


        inst.entity:SetPristine()
        if not TheWorld.ismastersim then
            return inst
        end

        inst:AddComponent("inspectable")


        inst:AddComponent("equippable")
        inst.components.equippable.equipslot = EQUIPSLOTS.BODY
        inst.components.equippable:SetOnUnequip(onunequip)
        inst.components.equippable:SetOnEquip(onequip)

        local allowed = {"sinner", "emocatgirl"}



        inst:AddComponent("inventoryitem")
        inst.components.inventoryitem.imagename = name == "spiked" and "welina_collar" or "welina_collar_" .. name
        inst.components.inventoryitem.atlasname = "images/inventoryimages/welina_items.xml"

        inst.healthtask = nil

        if name == "bomb" then
            inst:AddComponent("explosive")
            inst.components.explosive:SetOnExplodeFn(OnExplodeFn)
            inst.components.explosive.explosivedamage = 1000
            inst.components.explosive.explosiverange = 10
        end




        return inst
    end

    return Prefab("welina_collar_" .. name, fn, assets)
end

return MakeCollar("spiked"),
    MakeCollar("regen"),
    MakeCollar("bomb"),
    MakeCollar("glass"),
    MakeCollar("armor"),
    MakeCollar("light"),
    Prefab("collar_attachement", fn_attachedcollar, assets, prefabs)
