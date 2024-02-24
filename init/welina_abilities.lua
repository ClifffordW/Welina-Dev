
-- Hello World




    AddPrefabPostInit("catcoon", function(inst, ...)

        local function Hiss(inst, data)
            if data.damage ~= nil and data.attacker ~= nil and data.attacker.components.health ~= nil and inst.components.follower.leader and inst.components.follower.leader.prefab == "welina" then
                data.attacker.components.health:DoDelta(-data.damage * TUNING.WELINA_REFLECT_AMOUNT or 5)
                print(data.damage * TUNING.WELINA_REFLECT_AMOUNT)
                print(data.damage)
            end
        end





        if not _G.TheWorld.ismastersim then
            return inst
        end


        if not inst.components.named then
            inst:AddComponent("named")
        end




        if TUNING.WELINA_REFLECT == 1 then
            inst:ListenForEvent("attacked", Hiss)
        end



    end)


