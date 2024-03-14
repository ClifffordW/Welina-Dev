local assets =
{
    Asset("ANIM", "anim/welina_collar.zip"),
	Asset("ANIM", "anim/ui_welina_collar.zip"),
}

local prefabs =
{

}

require("writeables").AddLayout("welina_collar", 
{
    prompt = STRINGS.KITCOON_NAMING.MENU_PROMPT,
    animbank = "ui_welina_collar",
    animbuild = "ui_welina_collar",
    menuoffset = Vector3(6, -70, 0),
	maxcharacters = TUNING.KITCOON_NAMING_MAX_LENGTH,

    cancelbtn = {
        text = STRINGS.KITCOON_NAMING.MENU_CANCEL,
        cb = nil,
        control = CONTROL_CANCEL
    },
    middlebtn = {
        text = STRINGS.KITCOON_NAMING.MENU_RANDOM,
        cb = function(inst, doer, widget)
            widget:OverrideText( STRINGS.KITCOON_NAMING.NAMES[math.random(#STRINGS.KITCOON_NAMING.NAMES)] )
        end,
        control = CONTROL_MENU_MISC_2
    },
    acceptbtn = {
        text = STRINGS.KITCOON_NAMING.MENU_ACCEPT,
        cb = nil,
        control = CONTROL_ACCEPT
    },
})

local function OnUseOnKitcoon(inst, target, doer)
--[[     if target.components.follower.leader ~= nil and target.components.follower.leader.prefab == "welina" then return end 

	inst.naming_target = target

	if inst.components.writeable ~= nil then
	    inst.components.writeable:BeginWriting(doer)
	end

    if target.components.locomotor ~= nil then
        target.components.locomotor:StopMoving()
    end

	target.is_being_named = true


	if inst.onrmeove_naming_target == nil then	
		inst.onrmeove_naming_target = function(t)
			inst.components.writeable:EndWriting()
			inst.naming_target = nil
		end
	end
    inst:ListenForEvent("onremove", inst.onrmeove_naming_target, inst.naming_target) ]]

	return true
end

local function OnNamedByWriteable(inst, new_name, writer)
    if new_name ~= nil and inst.naming_target ~= nil and inst.naming_target:IsValid() and inst.naming_target.components.named ~= nil  then
        inst.naming_target.components.named:SetName(new_name, writer ~= nil and writer.userid or nil)
        if writer.components.leader ~= nil then
            writer.components.leader:AddFollower(inst.naming_target)
            inst.naming_target:AddTag("welinas_cat")
        end
    end
end

local function OnWritingEnded(inst)
	if inst.naming_target ~= nil then
		inst.naming_target.is_being_named = nil
	end
    inst:RemoveEventCallback("onremove", inst.onrmeove_naming_target, inst.naming_target)
	inst.naming_target = nil

	inst.components.useabletargeteditem:StopUsingItem()
end

local function on_stop_use(inst)

end

local function IsCatcoon(inst, target, doer)
	return target:HasTag("catcoon")
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("catnip")
    inst.AnimState:SetBuild("welina_catnip")
    inst.AnimState:PlayAnimation("idle")

    MakeInventoryFloatable(inst)

    inst:AddTag("catnip")

	inst.UseableTargetedItem_ValidTarget = IsCatcoon		-- Note: Runs on client

    inst.entity:SetPristine()
    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

--[[ 	inst:AddComponent("writeable")
	inst.components.writeable:SetDefaultWriteable(false)
	inst.components.writeable:SetAutomaticDescriptionEnabled(false)
	inst.components.writeable:SetWriteableDistance(TUNING.KITCOON_NAMING_DIST)
	inst.components.writeable:SetOnWrittenFn(OnNamedByWriteable)
	inst.components.writeable:SetOnWritingEndedFn(OnWritingEnded)
	inst.components.writeable.remove_after_write = true ]]

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "welina_catnip"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/welina_items.xml"

    inst:AddComponent("tradable")


    return inst
end

return Prefab("welina_catnip", fn, assets)
