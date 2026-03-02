local assets =
{
    Asset("ANIM", "anim/welina_nametag.zip"),
    Asset("ANIM", "anim/ui_welina_collar.zip"),

    
}

local prefabs =
{

}

STRINGS.NAMES.WELINA_CATDYE_BLACK = "Dye"


local function OnEquip(inst, owner)
    if owner then

        print(inst.colour)
        owner.AnimState:SetBuild("welina_catcoon_"..inst.colour)


    end
end

local function OnUnequip(inst, owner)
    owner.AnimState:SetBuild("catcoon_build")


end


local function commonfn(type)
	-- Functions which are performed both on Client and Server start here.
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddNetwork()
	inst.entity:AddSoundEmitter()

	MakeInventoryPhysics(inst)

	-- Add minimap icon. Remember about its XML in modmain.lua!
	--local minimap = inst.entity:AddMiniMapEntity()
	--minimap:SetIcon("custom_hat.tex")

	--[[ ANIMSTATE ]]
	--
	-- This is the name visible on the top of hierarchy in Spriter.
	inst.AnimState:SetBank("cattoy")
	-- This is the name of your compiled*.zip file.
	inst.AnimState:SetBuild("welina_cattoy")
	-- This is the animation name while item is on the ground.

	inst.AnimState:PlayAnimation("idle")

    
	inst:AddTag("welinacatcoon_dye")

	MakeInventoryFloatable(inst, "small", 0.1, 1.12)

	inst.entity:SetPristine()

	--inst.foleysound = "dontstarve/movement/foley/bushhat"

	if not TheWorld.ismastersim then
		-- If we're not the host - stop performing further functions.
		-- Only server functions below.
		return inst
	end


    inst.colour = type



	inst:AddComponent("equippable")
	inst.components.equippable.equipslot = EQUIPSLOTS.WELINA_DYE
	inst.components.equippable:SetOnEquip(OnEquip)
	inst.components.equippable:SetOnUnequip(OnUnequip)
	inst.components.equippable.restrictedtag = "sinner"



    inst:AddComponent("inspectable")
    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.imagename = "welina_cattoy"
	inst.components.inventoryitem.atlasname = resolvefilepath("images/inventoryimages/welina_items.xml")



	MakeHauntableLaunch(inst)

	return inst
end







local function black()
	local inst = commonfn("black")





	if not TheWorld.ismastersim then
		return inst
	end









	return inst
end
return Prefab("welina_catdye_black", black, assets)
