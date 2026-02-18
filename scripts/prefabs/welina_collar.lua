local assets = {
	Asset("ANIM", "anim/welina_collar.zip"),
	Asset("ANIM", "anim/ui_welina_collar.zip"),

}

--[[ local function LightCollar(inst, owner)
	inst:WatchWorldState("phase", function()
		if not inst._light then
			return
		end
		if TheWorld.state.phase == "night" then
			inst._light.Light:Enable(true)
			inst.components.fueled:StartConsuming()
		else
			inst._light.Light:Enable(false)
			inst.components.fueled:StopConsuming()
		end
	end)
end ]]

local function OnIgniteFn(inst)
	--inst.SoundEmitter:PlaySound("dontstarve/common/blackpowder_fuse_LP", "hiss")
	DefaultBurnFn(inst)
end

local function OnExtinguishFn(inst)
	if inst.SoundEmitter then
		inst.SoundEmitter:KillSound("hiss")
	end
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
local LIGHT_RADIUS = 4
local LIGHT_INTENSITY = 0.8
local LIGHT_FALLOFF = 0.5

local function RegenCollar(owner)
	if owner.health_task then
		owner.health_task:Cancel()
		owner.health_task = nil
	end
end

local COLLARS = {
	spiked = {
		equip = function(inst, owner)
			if owner:HasTag("player") then
				inst.ReflectDamagePlayer = function(_, data)
					if data.damage and owner and owner.components.health then
                        local tuning = TUNING.WELINAS_SPIKED_COLLAR_MULTIPLIER[owner.prefab] or {}
                        local reflect_damage = 0

                        if owner.prefab == "welina" then
                            reflect_damage = data.damage / (TUNING.WELINA_REFLECT_AMOUNT or 1)
                        else
                            local scale = 2
                            if tuning.multiplier then
                                scale = type(tuning.multiplier) == "table" and  math.random(tuning.multiplier[1], tuning.multiplier[2]) or tuning.multiplier
                            end

                            if tuning.should_divide then
                                reflect_damage = data.damage / scale
                            else
                                reflect_damage = data.damage * scale
                            end
                        end


                        data.attacker.components.combat:GetAttacked(owner, reflect_damage)
                        
                        if inst.components.fueled then
                            local consumption = (tuning and tuning.consumption_onuse) or 80
                            if type(consumption) == "table" then
                                consumption = math.random(consumption[1], consumption[2])
                            end
                            inst.components.fueled:DoDelta(-consumption)
                        end
					end
				end
				owner:ListenForEvent("attacked", inst.ReflectDamagePlayer)
			else
				inst.ReflectDamage = function(_, data)
					if data.damage ~= nil and owner ~= nil and owner.components.health ~= nil then
						--owner.components.health:DoDelta(-data.damage * 5)
                        data.attacker.components.combat:GetAttacked(owner, data.damage * 5)
						inst.components.fueled:DoDelta(-40)
                        
					end
				end
				owner:ListenForEvent("attacked", inst.ReflectDamage)
			end
		end,
		unequip = function(inst, owner)
			if owner:HasTag("player") then
				owner:RemoveEventCallback("attacked", inst.ReflectDamagePlayer)
			else
				owner:RemoveEventCallback("attacked", inst.ReflectDamage)
			end
		end,
	},

	regen = {
		equip = function(inst, owner)
			inst.currentowner_hp = owner.components.health:GetPercent()
			owner.health_task = inst:DoPeriodicTask(2, function()
				if owner.components.health:GetPercent() == 1 then
					return
				end
				owner.components.health:DoDelta(
					owner:HasTag("player") and 10 or 50
				)
				inst.components.fueled:DoDelta(owner:HasTag("player") and -150 or -100)
			end)

			owner:ListenForEvent("death", RegenCollar)
		end,
		unequip = function(inst, owner)
			if owner.health_task then
				owner.health_task:Cancel()
				owner.health_task = nil
				owner:RemoveEventCallback("death", RegenCollar)
			end
		end,
	},

	bomb = {
		equip = function(inst, owner)
			inst.BoomCollar = function()
				if inst:IsValid() and owner:IsValid() then
					inst.components.explosive:OnBurnt()
				end
			end
			owner:ListenForEvent("death", inst.BoomCollar)
		end,
		unequip = function(inst, owner)
			owner:RemoveEventCallback("death", inst.BoomCollar)
		end,
	},

	glass = {

		equip = function(inst, owner)
			if owner.components.combat then
				owner.components.combat.externaldamagemultipliers:SetModifier(
					owner,
					owner:HasTag("player")
					and
					1.2
					or 3,
					"collar_damage_buff"
				)

                --Scrapped
--[[ 				inst.DepleteDamageCollar = function(_, data)
					
                    print(inst,owner)

                    --(TODO) change the multiplier to something bareable. Set it to whatever you want Mr ScotchMintz
                    --if owner is player and (data.weapon) if we have weapon use it's damage multiplied by 2 otherwise use default damage multiplied by 2, if not player just deplete a flat amount of fuel
                    if data  then
                        inst.components.fueled:DoDelta(owner:HasTag("player") and (data.weapon and -data.weapon.components.weapon.damage * 2 or -owner.components.combat.defaultdamage * 2) or -50)
                    end

				end
				owner:ListenForEvent("onattackother", inst.DepleteDamageCollar) ]]
			end
		end,
		unequip = function(inst, owner)
			if owner.components.combat then
				owner.components.combat.externaldamagemultipliers:RemoveModifier(owner, "collar_damage_buff")
				--owner:RemoveEventCallback("onattackother", inst.DepleteDamageCollar)
			end
		end,
	},

	light = {
		equip = function(inst, owner)
--[[ 			inst._light = SpawnPrefab("alterguardianhatlight")
			inst._light.entity:SetParent(owner.entity) ]]

			inst._light = owner:SpawnChild("alterguardianhatlight")

			inst._light.Light:SetIntensity(LIGHT_INTENSITY)
			inst._light.Light:SetFalloff(LIGHT_FALLOFF)
			inst._light.Light:SetColour(unpack(LIGHT_COLOR))

			inst._light.Light:EnableClientModulation(true)

--[[ 			if TheWorld.state.phase == "night" then
				inst._light.Light:Enable(true)
				inst.components.fueled:StartConsuming()
			else
				inst._light.Light:Enable(false)
				inst.components.fueled:StopConsuming()
			end ]]
            inst._light.Light:Enable(true)
            inst.components.fueled:StartConsuming()


			--inst:WatchWorldState("phase", LightCollar)
		end,
		unequip = function(inst, owner)

            inst.components.fueled:StopConsuming()
            if inst._light then
				inst._light:Remove()
				inst._light = nil
			end
		end,
	},
}

local function OnEquip(inst, owner)
	local effect = COLLARS[inst.collarname]
	if effect and effect.equip then
		effect.equip(inst, owner)
	end

	local dontconsumehere = {
		["regen"] = true,
		["spiked"] = true,
		["light"] = true,
	}

	local isplayer = owner:HasTag("player")
    local skin_build = inst:GetSkinBuild()
	if isplayer then
		
		if skin_build ~= nil then
			owner:PushEvent("equipskinneditem", inst:GetSkinName())
			owner.AnimState:OverrideItemSkinSymbol("swap_body", skin_build, "swap_body", inst.GUID, "torso_amulets")
		else
			owner.AnimState:OverrideSymbol("swap_body", "swap_collar_" .. inst.collarname, "swap_body")
		end

    else

		if skin_build ~= nil then
			owner:PushEvent("equipskinneditem", inst:GetSkinName())
			owner.AnimState:OverrideItemSkinSymbol("swap_welinacollar", skin_build, "swap_body", inst.GUID, "torso_amulets")
		else
			owner.AnimState:OverrideSymbol("swap_welinacollar", "swap_collar_" .. inst.collarname, "swap_body")
		end

        

	end

	if inst.components.fueled ~= nil and not dontconsumehere[inst.collarname] then
		inst.components.fueled:StartConsuming()
	end
end

local function OnUnequip(inst, owner)
    owner.AnimState:ClearOverrideSymbol("swap_body")
	local effect = COLLARS[inst.collarname]
	if effect and effect.unequip then
		effect.unequip(inst, owner)
	end
end

local function MakeCollar(name)
	local function fn()
		local inst = CreateEntity()
		inst.entity:AddTransform()
		inst.entity:AddAnimState()
		inst.entity:AddNetwork()

		inst.AnimState:SetBank("welina_collar_item")
		inst.AnimState:SetBuild("welina_collar")
		inst.AnimState:PlayAnimation(name)

		MakeInventoryPhysics(inst)
		MakeInventoryFloatable(inst)

		inst:AddTag("welinacatcoon_collar")

		if not TheWorld.ismastersim then
			return inst
		end

		local hasneckslot = KnownModIndex:IsModEnabled("workshop-375850593") and EQUIPSLOTS.NECK or EQUIPSLOTS.BODY

		inst:AddComponent("inspectable")
		inst:AddComponent("equippable")
		inst.components.equippable.equipslot = hasneckslot

		inst.components.equippable:SetOnEquip(OnEquip)
		inst.components.equippable:SetOnUnequip(OnUnequip)
		inst.components.equippable.restrictedtag = "welinacollar_wearer"
        
        if name ~= "bomb" then
            inst:AddComponent("fueled")
            inst.components.fueled:InitializeFuelLevel(2400)
            inst.components.fueled:SetDepletedFn(inst.Remove)
        end
		

		inst:AddComponent("inventoryitem")


		if name == "bomb" then
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

local function fn_attachedcollar()
	local inst = CreateEntity()

	--[[Non-networked entity]]
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddFollower()

	inst.AnimState:SetBank("welina_collar_item")
	inst.AnimState:SetBuild("welina_collar")

	inst:AddComponent("highlightchild")

	inst.persists = false

	return inst
end

return MakeCollar("spiked"),
	MakeCollar("regen"),
	MakeCollar("bomb"),
	MakeCollar("glass"),
	MakeCollar("light"),
	Prefab("collar_attachement", fn_attachedcollar, assets)
