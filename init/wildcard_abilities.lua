




--This is some lame shit right here.
--SKY: It is what it is, don't sweat it.
AddPrefabPostInit("stalker_atrium", function(inst)

    inst:ListenForEvent("death", function(inst)
        local x,y,z = inst.Transform:GetWorldPosition()
        local players = TheSim:FindEntities(x, y, z, 20, { "player" })
        for k,v in pairs(AllPlayers) do
            if CLIENT_MOD_RPC and CLIENT_MOD_RPC["ModdedSkins"] and not inst.atriumdecay then
                inst:DoTaskInTime(10.29, function ()
                    
               
                    SendModRPCToClient(GetClientModRPC("ModdedSkins", "UnlockModdedSkin"), v.userid, "ms_wcard_diary_deathnote")
                end)
            end 
        end

    end)

end)


GLOBAL.TheInventory:AddGenericKVKey( "insanity_killed" )






AddScorebBadge("wildcard", "insane_skin", "winter_skin")



local staves = {"firestaff", "icestaff"}


local function ModifyStaffDamage(inst)
    if inst.components.weapon ~= nil then
        local old_getdamage = inst.components.weapon.GetDamage
        inst.components.weapon.GetDamage = function(self)
            local owner = self.inst.components.inventoryitem ~= nil and self.inst.components.inventoryitem.owner or nil
            if owner ~= nil and owner:HasTag("player") then
                if owner.prefab == "wildcard" then
                    local sanity = owner.components.sanity ~= nil and owner.components.sanity:GetPercent() or 1
                    local baseDamage = math.random(30, 35)
                    local bonusDamage = math.floor(baseDamage * (1 *1.4 - sanity))  -- Calculate bonus damage based on sanity
                    return baseDamage + bonusDamage
                end
            end
            return old_getdamage(self)  -- Call the original GetDamage function for other characters
        end
    end
end



local function ModifyDarkDamage(inst)
    if inst.components.weapon ~= nil then
        local old_getdamage = inst.components.weapon.GetDamage
        inst.components.weapon.GetDamage = function(self)
            local owner = self.inst.components.inventoryitem ~= nil and self.inst.components.inventoryitem.owner or nil
            if owner ~= nil and owner:HasTag("player") then
                if owner.prefab == "wildcard" then
                    local sanity = owner.components.sanity ~= nil and owner.components.sanity:GetPercent() or 1
                    local baseDamage = inst.components.weapon.damage or GLOBAL.TUNING.NIGHTSWORD_DAMAGE
                    local bonusDamage = math.floor(baseDamage * (1 * 1.15 - sanity))  -- Calculate bonus damage based on sanity
                    return baseDamage + bonusDamage
                end
            end
            return old_getdamage(self)  -- Call the original GetDamage function for other characters
        end
    end
end



if TUNING.WILDCARD_SHADOWWEAPONBUFF == 1 then

AddPrefabPostInit("icestaff", ModifyStaffDamage)
AddPrefabPostInit("firestaff", ModifyStaffDamage)

AddPrefabPostInit("nightsword", ModifyDarkDamage)
AddPrefabPostInit("ruins_bat", ModifyDarkDamage)
AddPrefabPostInit("batbat", ModifyDarkDamage)

end

--SKY: Nightlights ignite when Wildcard comes near them and they're low on fuel
local function NightLightIgnite(inst)
    if not GLOBAL.TheWorld.ismastersim then return end -- SKY: Fueled things are handled by only the server

    inst:AddComponent("playerprox")
    inst.components.playerprox:SetDist(6, 7)
    inst.components.playerprox:SetPlayerAliveMode(inst.components.playerprox.AliveModes.AliveOnly)
    inst.components.playerprox:SetTargetMode(inst.components.playerprox.TargetModes.AllPlayers)

    -- Ignite to threshhold and pause
    inst.components.playerprox:SetOnPlayerNear(function(inst, player)
        if player:HasTag("horrorbunnygirl") and inst.components.fueled:GetPercent() < GLOBAL.TUNING.WILDCARD_NIGHTLIGHT_THRESHHOLD then
            inst.components.fueled:SetPercent(GLOBAL.TUNING.WILDCARD_NIGHTLIGHT_THRESHHOLD)
            if inst.components.fueled.consuming then
                inst.components.fueled:StopConsuming()
            end
        end
    end)

    -- Start consuming if no more Wildcards are nearby.
    inst.components.playerprox:SetOnPlayerFar(function(inst, player)
        local x, y, z = inst.Transform:GetWorldPosition()
        local range = 6
        local ents = TheSim:FindEntities(x, y, z, range, { "horrorbunnygirl" }, { "playerghost" })
    
        if not next(ents) and not inst.components.fueled.consuming then
            inst.components.fueled:StartConsuming()
        end 
    end)
end

AddPrefabPostInit("nightlight", NightLightIgnite)