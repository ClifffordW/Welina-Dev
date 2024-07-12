local assets = {
	Asset("ANIM", "anim/welina_collar.zip"),
	Asset("ANIM", "anim/ui_welina_collar.zip"),
}

local prefabs = {}

local function ReflectDamage(inst, data)
	if data.damage ~= nil and data.attacker ~= nil and data.attacker.components.health ~= nil then
		data.attacker.components.health:DoDelta(-data.damage * TUNING.WELINA_REFLECT_AMOUNT or 5)
	end
end

local function OnIgniteFn(inst)
	--inst.SoundEmitter:PlaySound("dontstarve/common/blackpowder_fuse_LP", "hiss")
	DefaultBurnFn(inst)
end

local function OnExtinguishFn(inst)
	inst.SoundEmitter:KillSound("hiss")
	DefaultExtinguishFn(inst)
end

local function OnExplodeFn(inst)
	local explode = SpawnPrefab("explode_small")
	explode.Transform:SetPosition(inst.Transform:GetWorldPosition())
	explode.Transform:SetScale(4, 4, 4)
end

-- Constants
local COLLAR_PREFIX = "welina_collar_"
--local ARMOR_COLLAR_MODIFIER = "armorcollar"
local LIGHT_COLOR = { 169 / 255, 231 / 255, 245 / 255 }
local LIGHT_RADIUS = 2
local LIGHT_INTENSITY = 0.8
local LIGHT_FALLOFF = 0.5

local function RegenCollar(owner)
	if owner.health_task then
		owner.health_task:Cancel()
		owner.health_task = nil
	end
end

-- Function to handle equip event
local function onequip(inst, owner)
	local name = inst.collarname


	owner:AddTag(name.."_collar")

	if owner:IsValid() and owner.components.health and not owner.components.health:IsDead() then
		local isplayer = owner:HasTag("player")
		if isplayer then
			local skin_build = inst:GetSkinBuild()
			if skin_build ~= nil then
				owner:PushEvent("equipskinneditem", inst:GetSkinName())
				owner.AnimState:OverrideItemSkinSymbol("swap_body", skin_build, "swap_body", inst.GUID, "torso_amulets")
			else
				owner.AnimState:OverrideSymbol("swap_body", "swap_collar_" .. name, "swap_body")
			end
		end

		if name == "bomb" then
			if not inst.BoomCollar then
				inst.BoomCollar = function()
					if inst:IsValid() and owner:IsValid() then
						inst.components.explosive:OnBurnt()
					end
				end

				owner:ListenForEvent("death", inst.BoomCollar)
			end
		elseif name == "spiked" then
			owner:ListenForEvent("attacked", ReflectDamage)
			if inst.components.fueled ~= nil then
				inst.components.fueled:StartConsuming()
			end
		elseif name == "glass" and owner.components.combat then
			owner.components.combat.damagemultiplier = isplayer and owner.components.combat.damagemultiplier + 0.2 or 3
			print(owner.components.combat.damagemultiplier)
			if inst.components.fueled ~= nil then
				inst.components.fueled:StartConsuming()
			end
		elseif name == "regen" then
			inst.currentowner_hp, inst.currentowner_maxhp = owner.components.health:GetPercent(),
				owner.components.health.maxhealth
			print(inst.currentowner_hp, inst.currentowner_maxhp)

			owner.components.health:SetMaxHealth(isplayer and inst.currentowner_maxhp * 2 or TUNING.CATCOON_LIFE * 2)
			owner.components.health:SetPercent(inst.currentowner_hp)
			owner.health_task = inst:DoPeriodicTask(5, function()
				owner.components.health:DoDelta(50)
			end)
			if inst.components.fueled ~= nil then
				inst.components.fueled:StartConsuming()
			end

			owner:ListenForEvent("death", RegenCollar)

			--[[
        elseif name == "armor" and owner.components.combat then
            owner.components.combat.externaldamagetakenmultipliers:SetModifier(owner, 0.9, ARMOR_COLLAR_MODIFIER)
            if inst.components.fueled ~= nil then
                inst.components.fueled:StartConsuming()
            end
            --]]
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
			if inst.components.fueled ~= nil then
				inst.components.fueled:StartConsuming()
			end
		end
	end
end

-- Function to handle unequip event
local function onunequip(inst, owner)


	local name = inst.collarname


	owner:RemoveTag(name.."_collar")
	local isplayer = owner:HasTag("player")

	if isplayer then
		owner.AnimState:ClearOverrideSymbol("swap_body")
		local skin_build = inst:GetSkinBuild()
		if skin_build ~= nil then
			owner:PushEvent("unequipskinneditem", inst:GetSkinName())
		end
	end

	if name == "bomb" then
		if inst.BoomCollar ~= nil then
			owner:RemoveEventCallback("death", inst.BoomCollar)
			inst.BoomCollar = nil
		end
	elseif name == "spiked" then
		owner:RemoveEventCallback("attacked", ReflectDamage)
		if inst.components.fueled ~= nil then
			inst.components.fueled:StopConsuming()
		end
	elseif name == "glass" and owner.components.combat then
		owner.components.combat.damagemultiplier = 1
		if inst.components.fueled ~= nil then
			inst.components.fueled:StopConsuming()
		end
	elseif name == "regen" then
		if
			owner:IsValid()
			and owner.components.health
			and not owner.components.health:IsDead()
			and owner.health_task
		then
			owner.components.health:SetMaxHealth(isplayer and inst.currentowner_maxhp or TUNING.CATCOON_LIFE)
			owner.components.health:SetPercent(inst.currentowner_hp)
			owner.health_task:Cancel()
			owner.health_task = nil
			if inst.components.fueled ~= nil then
				inst.components.fueled:StopConsuming()
			end

			inst.currentowner_hp, inst.currentowner_maxhp = nil, nil
			owner:RemoveEventCallback("death", RegenCollar)
		end
	elseif name == "light" then
		if inst._light and inst._light:IsValid() then
			inst._light:Remove()
			inst._light = nil
		end
		if inst.components.fueled ~= nil then
			inst.components.fueled:StopConsuming()
		end
		--[[
    elseif name == "armor" and owner.components.combat then
        owner.components.combat.externaldamagetakenmultipliers:RemoveModifier(owner)
		if inst.components.fueled ~= nil then
			inst.components.fueled:StopConsuming()
		end
		--]]
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
		inst.components.equippable.restrictedtag = "welinacollar_wearer"

		inst:AddComponent("fueled")
		--inst.components.fueled.fueltype = FUELTYPE.USAGE
		inst.components.fueled:InitializeFuelLevel(480 * 5)
		inst.components.fueled:SetDepletedFn(inst.Remove)

		--local allowed = {"sinner"}

		inst:AddComponent("inventoryitem")
		inst.components.inventoryitem.imagename = name == "spiked" and "welina_collar" or "welina_collar_" .. name
		inst.components.inventoryitem.atlasname = "images/inventoryimages/welina_items.xml"

		inst.healthtask = nil

		if name == "bomb" then
			MakeSmallBurnable(inst, 3 + math.random() * 3)
			MakeSmallPropagator(inst)
			--V2C: Remove default OnBurnt handler, as it conflicts with
			--explosive component's OnBurnt handler for removing itself
			inst.components.burnable:SetOnBurntFn(nil)
			inst.components.burnable:SetOnIgniteFn(OnIgniteFn)
			inst.components.burnable:SetOnExtinguishFn(OnExtinguishFn)

			inst:AddComponent("explosive")
			inst.components.explosive:SetOnExplodeFn(OnExplodeFn)
			inst.components.explosive.explosivedamage = 1000
			inst.components.explosive.explosiverange = 10
		end

		inst.collarname = name

		return inst
	end

	return Prefab("welina_collar_" .. name, fn, assets)
end

return MakeCollar("spiked"),
	MakeCollar("regen"),
	MakeCollar("bomb"),
	MakeCollar("glass"),
	-- MakeCollar("armor"),
	MakeCollar("light"),
	Prefab("collar_attachement", fn_attachedcollar, assets, prefabs)
