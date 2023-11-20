local assets =
{
    Asset("ANIM", "anim/swap_wcard_cane.zip"),
   

}

local function onequip(inst, owner)

        owner.AnimState:OverrideSymbol("swap_object", "swap_wcard_cane", "swap_wcard_cane")


    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner)

    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("swap_wcard_cane")
    inst.AnimState:SetBuild("swap_wcard_cane")
    inst.AnimState:PlayAnimation("idle")
    inst.AnimState:HideSymbol("swap_gem")

    --weapon (from weapon component) added to pristine state for optimization
    inst:AddTag("weapon")

    local swap_data = {sym_build = "swap_cane"}
    MakeInventoryFloatable(inst, "med", 0.05, {0.85, 0.45, 0.85}, true, 1, swap_data)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(TUNING.CANE_DAMAGE)

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.imagename = "wcard_cane"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/wcard_items.xml"

    inst:AddComponent("equippable")

    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)
    inst.components.equippable.walkspeedmult = TUNING.CANE_SPEED_MULT

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("wcard_cane", fn, assets)
