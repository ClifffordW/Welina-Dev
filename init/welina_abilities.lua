-- Hello World




AddPrefabPostInit("catcoon", function(inst, ...)
    local DummyFn = function() end
    local _Load = inst.Load or DummyFn

    local function OnLoad(inst)
        inst:DoTaskInTime(0.5, function()
            if inst and inst.components.follower.leader and inst.components.follower.leader.prefab == "welina" and inst.components.named.name ~= nil and not inst:HasTag("welinas_cat") then
                inst:AddTag("welinas_cat")
            end
        end)

        return _Load
    end



    local OnGetItemFromPlayer = inst.OnGetItemFromPlayer or DummyFn
    inst.OnGetItemFromPlayer = function(inst, giver, item, ...)
        local ret = OnGetItemFromPlayer(inst, giver, item, ...)

if TUNING.WELINA_CATCOONHATS == 1 then
        --I wear hats
        if item.components.equippable ~= nil and item.components.equippable.equipslot == EQUIPSLOTS.HEAD then
            local current = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HEAD)
            if current ~= nil then
                inst.components.inventory:DropItem(current)
            end
            inst.components.inventory:Equip(item)
            inst.AnimState:Show("hat")
        end

        return ret
    end


    
    local ShouldAcceptItem = inst.ShouldAcceptItem or DummyFn
    inst.ShouldAcceptItem = function(inst, item, ...)
        local ret = ShouldAcceptItem(inst, item, ...)


        if item:HasTag("cattoy") or item:HasTag("catfood") or item:HasTag("cattoyairborne") or item:HasTag("hat") then
            return true
        else
            return false
        end

        return ret
    end
end







    local function Hiss(inst, data)
        if data.damage ~= nil and data.attacker ~= nil and data.attacker.components.health ~= nil and inst.components.follower.leader and inst.components.follower.leader.prefab == "welina" then
            data.attacker.components.health:DoDelta(-data.damage * TUNING.WELINA_REFLECT_AMOUNT or 5)
            print(data.damage * TUNING.WELINA_REFLECT_AMOUNT)
            print(data.damage)
        end
    end


	if TUNING.WELINA_CATCOONHATS == 1 then
		inst.AnimState:SetHatOffset(0, 80)
	end

    if not _G.TheWorld.ismastersim then
        return inst
    end


    if not inst.components.named then
        inst:AddComponent("named")
    end


    inst.components.trader:SetAcceptTest(inst.ShouldAcceptItem)
    inst.components.trader.onaccept = inst.OnGetItemFromPlayer




    if TUNING.WELINA_REFLECT == 1 then
        inst:ListenForEvent("attacked", Hiss)
    end

    inst.OnLoad = OnLoad
end)
