local assets =
{
    Asset("ANIM", "anim/welina_hiss_anim.zip"),
    --Asset("SOUND", "sound/wickerbottom_rework.fsb")
}

local SLOWDOWN_MUST_TAGS = { "locomotor" }
local SLOWDOWN_CANT_TAGS = { "player", "flying", "playerghost", "INLIMBO", "spider", "spider_warrior" }

local function OnUpdate(inst, x, y, z)
    for i, v in ipairs(TheSim:FindEntities(x, y, z, 4.5, SLOWDOWN_MUST_TAGS, SLOWDOWN_CANT_TAGS)) do
        local is_follower = v.components.follower ~= nil and v.components.follower.leader ~= nil and v.components.follower.leader:HasTag("player")
        if v.components.locomotor ~= nil and not is_follower then
            v.components.locomotor:PushTempGroundSpeedMultiplier(0.30, WORLD_TILES.MUD)
        end
    end
end

local function OnInit(inst)
    local x, y, z = inst.Transform:GetWorldPosition()

    if inst.task ~= nil then
        inst.task:Cancel()
    end
    inst.task = inst:DoPeriodicTask(0, OnUpdate, nil, x, y, z)
    OnUpdate(inst, x, y, z)

   -- inst.SoundEmitter:PlaySound("wickerbottom_rework/book_spells/web")
end

local function Despawn(inst)
    inst.AnimState:PlayAnimation("despawn")
    inst:ListenForEvent("animover", inst.Remove)
end

local function fn()
    local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.Transform:SetRotation(math.random(1, 360))
    inst.Transform:SetScale(1, 1, 1)

    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    inst:AddTag("NOCLICK")

    inst.AnimState:SetBank ("welina_hiss")
    inst.AnimState:SetBuild("welina_hiss_anim")
    inst.AnimState:PlayAnimation("fx")
    inst.AnimState:SetLayer(LAYER_BACKGROUND)
    inst.AnimState:SetSortOrder(3)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:DoTaskInTime(10, Despawn)
    inst.persists = false
    inst:DoTaskInTime(0, OnInit)

    return inst
end

return Prefab("welina_hiss", fn, assets)