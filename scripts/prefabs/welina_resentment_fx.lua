local assets = {
    Asset("ANIM", "anim/crystalblast_fx.zip"),
}

local RESENTMENT_FX_COLOUR = { 0.25, 0.25, 0.25 }
local TINYBYTE = 7

local function Linear(value)
    return value
end

local function EaseInCubic(x)
    return x * x * x
end

-- Booorrow from Flaire!
local function TweenValue(inst, key, from, to, time, tweenFn, finishFn, easingFn, useWallUpdate, updateWhilePaused)
    local timePassed = 0
    local current = type(from) == "table" and {} or nil
    easingFn = easingFn or Linear

    local function DoTween(_, dt)
        if not updateWhilePaused and TheNet:IsServerPaused() then
            return
        end

        timePassed = timePassed + dt
        local t = timePassed / time
        if t > 1 then t = 1 end

        if current ~= nil then
            for i, fromValue in ipairs(from) do
                current[i] = Lerp(fromValue, to[i], easingFn(t))
            end
            tweenFn(inst, current)
        else
            tweenFn(inst, Lerp(from, to, easingFn(t)))
        end

        if timePassed >= time then
            local updateLooper = inst.components.updatelooper
            if updateLooper ~= nil then
                updateLooper:RemoveOnWallUpdateFn(inst[key])
                updateLooper:RemoveOnUpdateFn(inst[key])
                inst[key] = nil
            end

            tweenFn(inst, to)
            if finishFn ~= nil then finishFn(inst) end
        end
    end

    DoTween(inst, 0)

    local updateLooper = inst.components.updatelooper or inst:AddComponent("updatelooper")
    if inst[key] ~= nil then
        updateLooper:RemoveOnWallUpdateFn(inst[key])
        updateLooper:RemoveOnUpdateFn(inst[key])
    end

    inst[key] = DoTween
    if useWallUpdate then
        updateLooper:AddOnWallUpdateFn(inst[key])
    else
        updateLooper:AddOnUpdateFn(inst[key])
    end
end

local function TweenAddColour(inst, value)
    inst.AnimState:SetAddColour(value, value, value, value)
end

local function TweenAlpha(inst, value)
    local r, g, b = unpack(RESENTMENT_FX_COLOUR)
    inst.AnimState:SetMultColour(r, g, b, value)
end

local function TweenVolume(inst, value)
    inst.SoundEmitter:SetVolume("welina_resentment_hit", value)
end

local function OnResentmentDirty(inst)
    local resentmentPercent = inst.net_welina_resentment:value() / TINYBYTE
    local fadeDelay = Lerp(0.134, 0.334, resentmentPercent)

    local t = 0.5 + resentmentPercent / 2
    inst.AnimState:SetScale(math.random() <= 0.5 and t or -t, t)

    inst:DoTaskInTime(fadeDelay / 2, TweenValue, "welina_alpha", 1, t, 0.125, TweenAlpha)
    inst:DoTaskInTime(0.25, TweenValue, "welina_alpha", t, 0, 0.15, TweenAlpha)

    local v = Lerp(0.5, 0.8, resentmentPercent)
    local flashTime = Lerp(0.15, 0.125, resentmentPercent)
    TweenValue(inst, "welina_flash", v, 0, flashTime, TweenAddColour, nil, nil, true)

    local volume = 0.167 + EaseInCubic(resentmentPercent) * 0.15
    inst.SoundEmitter:PlaySound("scotchmintz_characters/sfx/resentment_hit", "welina_resentment_hit", volume)

    inst:DoTaskInTime(fadeDelay, TweenValue, "welina_volume", volume, 0, 0.5, TweenVolume)
end

local function CommonInit()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddFollower()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    inst:AddTag("FX")

    inst.AnimState:SetBank("crystalblast")
    inst.AnimState:SetBuild("crystalblast_fx")
    inst.AnimState:SetBloomEffectHandle("shaders/anim.ksh")
    inst.AnimState:SetSaturation(0)
    inst.AnimState:SetFinalOffset(1)

    local r, g, b = unpack(RESENTMENT_FX_COLOUR)
    inst.AnimState:SetMultColour(r, g, b, 1)

    inst.AnimState:PlayAnimation("blast")
    inst.AnimState:SetTime(0.1)

    inst.net_welina_resentment = net_tinybyte(inst.GUID, "inst.net_welina_resentment", "net_welina_resentment_dirty")

    if not TheNet:IsDedicated() then
        inst:ListenForEvent("net_welina_resentment_dirty", OnResentmentDirty)
    end

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst.persists = false

    inst:DoTaskInTime(3, inst.Remove)

    return inst
end

return Prefab("welina_resentment_fx", CommonInit, assets)