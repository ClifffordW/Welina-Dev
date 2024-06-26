local assets =
{
    Asset("ANIM", "anim/welina_hiss_anim.zip"),
    --Asset("SOUND", "sound/wickerbottom_rework.fsb")
}


local function PlayHissAnim(proxy)
    local inst = CreateEntity()

    inst:AddTag("FX")
    --[[Non-networked entity]]
    inst.entity:SetCanSleep(false)
    inst.persists = false

    inst.entity:AddTransform()
    inst.entity:AddAnimState()

    inst.Transform:SetFromProxy(proxy.GUID)

    inst.AnimState:SetBank("welina_hiss")
    inst.AnimState:SetBuild("welina_hiss_anim")
    inst.AnimState:PlayAnimation("idle_loop", true)
    inst.AnimState:SetFinalOffset(3)

    --inst:ListenForEvent("animover", inst.Remove)
end


local function FxAttachToOwner(inst, owner)
	inst.entity:SetParent(owner.entity)
	inst.Follower:FollowSymbol(owner.GUID, "swap_object", nil, nil, nil, true, nil, 0, 2)
	inst.components.highlightchild:SetOwner(owner)
	if owner.components.colouradder ~= nil then
		owner.components.colouradder:AttachChild(inst)
	end

	--Dedicated server does not need to spawn the local fx
	if not TheNet:IsDedicated() then
		FxOnEntityReplicated(inst)
	end
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddNetwork()

    inst:AddTag("FX")

    --Dedicated server does not need to spawn the local fx
    if not TheNet:IsDedicated() then
        --Delay one frame so that we are positioned properly before starting the effect
        --or in case we are about to be removed
        inst:DoTaskInTime(0, PlayHissAnim)
    end

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    
    inst.persists = false
    --inst:DoTaskInTime(1, inst.Remove)
    inst.AttachToOwner = FxAttachToOwner

    return inst
end

return Prefab("welina_hiss", fn, assets)