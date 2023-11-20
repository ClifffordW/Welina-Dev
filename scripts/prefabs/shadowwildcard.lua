local prefabs =
{
    "shadow_despawn",
    "statue_transition_2",
    "nightmarefuel",
	"ocean_splash_med1",
	"ocean_splash_med2",
	"ocean_splash_small1",
	"ocean_splash_small2",
}

local brain = require "brains/shadowwildcardbrain"

local function OnAttacked(inst, data)
    if data.attacker ~= nil then
        if data.attacker.components.petleash ~= nil and
            data.attacker.components.petleash:IsPet(inst) then
            if inst.components.lootdropper == nil then
                inst:AddComponent("lootdropper")
            end
            inst.components.lootdropper:SpawnLootPrefab("nightmarefuel", inst:GetPosition())
            data.attacker.components.petleash:DespawnPet(inst)
        elseif data.attacker.components.combat ~= nil then
            inst.components.combat:SuggestTarget(data.attacker)
        end
    end
end

local RETARGET_MUST_TAGS = { "_combat" }
local RETARGET_CANT_TAGS = { "playerghost", "INLIMBO" }
local function retargetfn(inst)
    --Find things attacking leader
    local leader = inst.components.follower:GetLeader()
    return leader ~= nil
        and FindEntity(
            leader,
            TUNING.SHADOWWAXWELL_TARGET_DIST,
            function(guy)
                return guy ~= inst
                    and (guy.components.combat:TargetIs(leader) or
                        guy.components.combat:TargetIs(inst))
                    and inst.components.combat:CanTarget(guy)
            end,
            RETARGET_MUST_TAGS, -- see entityreplica.lua
            RETARGET_CANT_TAGS
        )
        or nil
end

local function keeptargetfn(inst, target)
    --Is your leader nearby and your target not dead? Stay on it.
    --Match KEEP_WORKING_DIST in brain
    return inst.components.follower:IsNearLeader(8)
        and inst.components.combat:CanTarget(target)
		and target.components.minigame_participator == nil
end

local function spearfn(inst)
    inst.components.health:SetMaxHealth(TUNING.SHADOWWILDCARD_DUELIST_HEALTH)
    inst.components.health:StartRegen(TUNING.SHADOWWILDCARD_DUELIST_REGEN, 2)

    inst.components.combat:SetDefaultDamage(TUNING.SHADOWWILDCARD_DUELIST_DAMAGE)
    inst.components.combat:SetAttackPeriod(TUNING.SHADOWWILDCARD_DUELIST_ATTACKPERIOD)
    inst.components.combat:SetRetargetFunction(2, retargetfn) --Look for leader's target.
    inst.components.combat:SetKeepTargetFunction(keeptargetfn) --Keep attacking while leader is near.

    return inst
end

local function nokeeptargetfn(inst)
    return false
end

local function noncombatantfn(inst)
    inst.components.combat:SetKeepTargetFunction(nokeeptargetfn)
end

local function nodebrisdmg(inst, amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb)
    return afflicter ~= nil and afflicter:HasTag("quakedebris")
end

local function OnRippleAnimOver(inst)
	if inst.pool.invalid then
		inst:Remove()
	else
		inst:Hide()
		table.insert(inst.pool, inst)
	end
end

local function CreateRipple(pool)
	local inst
	if #pool > 0 then
		inst = table.remove(pool)
		inst:Show()
	else
		inst = CreateEntity()

		inst:AddTag("FX")
		inst:AddTag("NOCLICK")
		--[[Non-networked entity]]
		inst.entity:SetCanSleep(false)
		inst.persists = false

		inst.entity:AddTransform()
		inst.entity:AddAnimState()

		inst.AnimState:SetBank("splash_weregoose_fx")
		inst.AnimState:SetBuild("splash_water_drop")
		inst.AnimState:SetLayer(LAYER_WORLD_BACKGROUND)
		inst.AnimState:SetOceanBlendParams(TUNING.OCEAN_SHADER.EFFECT_TINT_AMOUNT)

		inst.pool = pool
		inst:ListenForEvent("animover", OnRippleAnimOver)
	end

	inst.AnimState:PlayAnimation(math.random() < .5 and "no_splash" or "no_splash2")
	local scale = .6 + math.random() * .2
	inst.AnimState:SetScale(math.random() < .5 and -scale or scale, scale)

	return inst
end

local function TryRipple(inst, map)
	if not (inst:HasTag("moving") or
			inst.AnimState:IsCurrentAnimation("appear") or
			inst.AnimState:IsCurrentAnimation("disappear") or
			inst.AnimState:IsCurrentAnimation("lunge_pst")
		) then
		local x, y, z = inst.Transform:GetWorldPosition()
		if map:IsOceanAtPoint(x, 0, z) then
			CreateRipple(inst.ripple_pool).Transform:SetPosition(x, 0, z)
		end
	end
end

local function OnRemoveEntity(inst)
	for i, v in ipairs(inst.ripple_pool) do
		v:Remove()
	end
	inst.ripple_pool.invalid = true
end

local function MakeMinion(prefab, tool, hat, master_postinit)
    local assets =
    {
        Asset("ANIM", "anim/wildcard_minion.zip"),
        Asset("SOUND", "sound/maxwell.fsb"),
        Asset("ANIM", "anim/"..tool..".zip"),
		
		Asset("ANIM", "anim/waxwell_minion_spawn.zip"),
		Asset("ANIM", "anim/waxwell_minion_appear.zip"),
		Asset("ANIM", "anim/splash_weregoose_fx.zip"),
		Asset("ANIM", "anim/splash_water_drop.zip"),
    }

    local function fn()
        local inst = CreateEntity()

        inst.entity:AddTransform()
        inst.entity:AddAnimState()
        inst.entity:AddSoundEmitter()
        inst.entity:AddNetwork()

        MakeGhostPhysics(inst, 1, 0.5)

        inst.Transform:SetFourFaced(inst)

        inst.AnimState:SetBank("wilson")
        inst.AnimState:SetBuild("wildcard_minion")
        inst.AnimState:PlayAnimation("minion_spawn")
        inst.AnimState:SetMultColour(0, 0, 0, .5)
		inst.AnimState:UsePointFiltering(true)
		
		inst.AnimState:AddOverrideBuild("waxwell_minion_spawn")
		inst.AnimState:AddOverrideBuild("waxwell_minion_appear")

        if tool ~= nil then
            inst.AnimState:OverrideSymbol("swap_object", tool, tool)
            inst.AnimState:Hide("ARM_normal")
        else
            inst.AnimState:Hide("ARM_carry")
        end

        if hat ~= nil then
            inst.AnimState:OverrideSymbol("swap_hat", hat, "swap_hat")
            inst.AnimState:Hide("HAIR_NOHAT")
            inst.AnimState:Hide("HAIR")
        else
            inst.AnimState:Hide("HAT")
            inst.AnimState:Hide("HAIR_HAT")
        end

        inst:AddTag("scarytoprey")
        inst:AddTag("shadowminion")
        inst:AddTag("NOBLOCK")

        inst:SetPrefabNameOverride("shadowwildcard")
		
		if not TheNet:IsDedicated() then
			inst.ripple_pool = {}
			inst:DoPeriodicTask(.6, TryRipple, math.random() * .6, TheWorld.Map)
			inst.OnRemoveEntity = OnRemoveEntity
		end

        inst.entity:SetPristine()

        if not TheWorld.ismastersim then
            return inst
        end

        inst:AddComponent("locomotor")
        inst.components.locomotor.runspeed = TUNING.SHADOWWILDCARD_SPEED
	    inst.components.locomotor:SetTriggersCreep(false)
        inst.components.locomotor.pathcaps = { ignorecreep = true }
        inst.components.locomotor:SetSlowMultiplier(.6)

        inst:AddComponent("health")
        inst.components.health:SetMaxHealth(TUNING.SHADOWWILDCARD_WORKER_HEALTH)
        inst.components.health.nofadeout = true
        inst.components.health.redirect = nodebrisdmg

        inst:AddComponent("combat")
        inst.components.combat.hiteffectsymbol = "torso"
        inst.components.combat:SetRange(2)

        inst:AddComponent("follower")
        inst.components.follower:KeepLeaderOnAttacked()
        inst.components.follower.keepdeadleader = true
        inst.components.follower.keepleaderduringminigame = true

        inst:SetBrain(brain)
        inst:SetStateGraph("SGshadowwildcard")

        inst:ListenForEvent("attacked", OnAttacked)

        if master_postinit ~= nil then
            master_postinit(inst)
        end

        return inst
    end

    return Prefab(prefab, fn, assets, prefabs)
end

--------------------------------------------------------------------------

local function NoHoles(pt)
    return not TheWorld.Map:IsPointNearHole(pt)
end

local function onbuilt(inst, builder)
    local theta = math.random() * 2 * PI
    local pt = builder:GetPosition()
    local radius = math.random(3, 6)
    local offset = FindWalkableOffset(pt, theta, radius, 12, true, true, NoHoles)
    if offset ~= nil then
        pt.x = pt.x + offset.x
        pt.z = pt.z + offset.z
    end
    builder.components.petleash:SpawnPetAt(pt.x, 0, pt.z, inst.pettype)
    inst:Remove()
end

local function MakeBuilder(prefab)
    --These shadows are summoned this way because petleash needs to
    --be the component that summons the pets, not the builder.
    local function fn()
        local inst = CreateEntity()

        inst.entity:AddTransform()

        inst:AddTag("CLASSIFIED")

        --[[Non-networked entity]]
        inst.persists = false

        --Auto-remove if not spawned by builder
        inst:DoTaskInTime(0, inst.Remove)

        if not TheWorld.ismastersim then
            return inst
        end

        inst.pettype = prefab
        inst.OnBuiltFn = onbuilt

        return inst
    end

    return Prefab(prefab.."_builder", fn, nil, { prefab })
end

--------------------------------------------------------------------------

return  MakeMinion("wcard_shadowlumber", "swap_axe", nil, noncombatantfn),
		MakeMinion("wcard_shadowminer", "swap_pickaxe", nil, noncombatantfn),
		MakeMinion("wcard_shadowdigger", "swap_shovel", nil, noncombatantfn),
		MakeMinion("wcard_shadowduelist", "swap_nightmaresword_shadow", nil, spearfn),
		MakeBuilder("wcard_shadowlumber"),
		MakeBuilder("wcard_shadowminer"),
		MakeBuilder("wcard_shadowdigger"),
		MakeBuilder("wcard_shadowduelist")
