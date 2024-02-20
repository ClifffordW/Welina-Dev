modimport("articore/articore_api")












local modnameFancy = "workshop-1637709131"
local is_modenabled = KnownModIndex:IsModEnabled(modnameFancy)




local animation_data = 
{
    frames_anim = is_modenabled and 220 or 64,
    camera_distance = is_modenabled and 7 or 13,
    anims = is_modenabled and "defaultdance" or "idle_loop",
}












AddStategraphState("wilson", State {
    name = "welina_hiss",
    tags = { "doing", "busy", "nointerrupt", "nopredict", "nomorph" },

    onenter = function(inst)

        




        if animation_data.anims == "idle_loop" then
            inst.AnimState:PlayAnimation("research")
        end
        
        inst.components.health:SetPercent(0.01)

        inst.components.locomotor:StopMoving()
        if inst.components.playercontroller ~= nil then
            inst.components.playercontroller:Enable(false)
        end
        inst.components.health:SetInvincible(true)
        inst:AddTag("NOTARGET")




        inst:SetCameraDistance(animation_data.camera_distance)

        local x, y, z = inst.Transform:GetWorldPosition()

        local panic_ents = TheSim:FindEntities(x, y, z, 20)

        for k, v in pairs(panic_ents) do
            
            if v.components.combat then
                v.components.combat:DropTarget()
            end
            



            if v.components.hauntable then
                v.components.hauntable:Panic(10)
            end
        end
    end,
    events = {



        EventHandler("animqueueover", function(inst)
            if inst.AnimState:AnimDone() then
                inst.sg:GoToState("idle")
            end
        end),

    },

    timeline =
    {





        TimeEvent(10 * FRAMES, function(inst)
            if animation_data.anims == "idle_loop" then
                inst.AnimState:SetBuild("welina_hiss_anim")
                inst.AnimState:SetBank("welina_hiss")
            else
                inst.SoundEmitter:PlaySound("fortnig/fortnite/theme", "fortnitedancetheme")
            end

            inst.AnimState:PlayAnimation(animation_data.anims, animation_data.anims == "idle_loop" and true or false) 

            inst.Transform:SetNoFaced()
        end),


        TimeEvent(13 * FRAMES, function(inst)
            if animation_data.anims == "idle_loop" then
                inst.SoundEmitter:PlaySound("scotchmintz_characters/sfx/miau")
            end
        end),


        TimeEvent(62 * FRAMES, function(inst)
            inst.sg:RemoveStateTag("busy")
        end),


        TimeEvent(animation_data.frames_anim * FRAMES, function(inst)
            inst:RemoveTag("NOTARGET")
            inst.AnimState:SetBuild("welina")
            inst.AnimState:SetBank("wilson")
            inst.components.locomotor:StopMoving()
            if inst.components.playercontroller ~= nil then
                inst.components.playercontroller:Enable(true)
            end
            inst.components.health:SetInvincible(false)
            inst:Show()
            inst.Transform:SetFourFaced()
            inst.components.inventory:Open()
            inst:SetCameraDistance(animation_data.camera_distance + 8)
        end),

        TimeEvent(68 * FRAMES, function(inst)
            if animation_data.anims == "idle_loop" then
                inst.AnimState:PlayAnimation("emote_jumpcheer")
                inst.AnimState:SetFrame(40)
                inst.AnimState:SetDeltaTimeMultiplier(0.85)
            end
        end),



        TimeEvent(72 * FRAMES, function(inst)
            if animation_data.anims == "idle_loop" then
                inst.AnimState:SetDeltaTimeMultiplier(1)
            end
        end),










    },

    onupdate = function(inst)

    end,

    onexit = function(inst)

    end,
})




AddPrefabPostInit("welina", function(inst, data, ...)
    local DummyFn = function() end

    local _SaveForReroll = inst.SaveForReroll or DummyFn
    local _LoadForReroll = inst.LoadForReroll or DummyFn

    local function SaveForReroll(inst, ...)
        local ret = { _SaveForReroll(inst, ...) }

        local data = ret[1]



        if data ~= nil then
            data.welina_numDeaths = inst.welina_numDeaths
        end
        print("SAVING AS INTENDED")

        return unpack(ret)
    end

    local function LoadForReroll(inst, data, ...)
        local ret = { _LoadForReroll(inst, data, ...) }


        if data ~= nil and data.welina_numDeaths ~= nil then
            inst.welina_numDeaths = data.welina_numDeaths
        end
        
        if inst.welina_numDeaths and inst.net_welina_numDeaths then
            inst.net_welina_numDeaths:set(inst.welina_numDeaths)
        end
      

        print("WORKING AS INTENDED")

        return unpack(ret)
    end



    inst.SaveForReroll = SaveForReroll
    inst.LoadForReroll = LoadForReroll
end)



AddPlayerPostInit(function(inst, data, ...)

    if inst.prefab ~= "welina" then
        GLOBAL.TheFocalPoint.SoundEmitter:SetParameter("deathbell", "health", 1)

        local DummyFn = function() end

        local _SaveForReroll = inst.SaveForReroll or DummyFn
        local _LoadForReroll = inst.LoadForReroll or DummyFn

        local function SaveForReroll(inst, ...)
            local ret = { _SaveForReroll(inst, ...) }

            local data = ret[1]



            if data ~= nil then
                data.welina_numDeaths = inst.welina_numDeaths
            end
            print("SAVING AS INTENDED")

            return unpack(ret)
        end

        local function LoadForReroll(inst, data, ...)
            local ret = { _LoadForReroll(inst, data, ...) }


            if data ~= nil and data.welina_numDeaths ~= nil then
                inst.welina_numDeaths = data.welina_numDeaths
            end
            if inst.welina_numDeaths and inst.net_welina_numDeaths then
                inst.net_welina_numDeaths:set(inst.welina_numDeaths)
            end

            print("WORKING AS INTENDED")

            return unpack(ret)
        end

        local _OnSave = inst.Save or DummyFn
        local _OnLoad = inst.OnLoad or DummyFn
        function OnSave(inst, data)

            local ret = _OnSave(inst, data)

            data.welina_numDeaths = inst.welina_numDeaths and inst.welina_numDeaths or nil

            return ret
        end
        
        function OnLoad(inst, data)

            local ret = _OnLoad(inst, data)

            if data and data.welina_numDeaths ~= nil then
                inst.welina_numDeaths = data.welina_numDeaths
        
    
        
            end

            return ret
        end
    
    
    
    

        inst.SaveForReroll = SaveForReroll
        inst.LoadForReroll = LoadForReroll

    





        inst.OnSave = OnSave
        inst.OnLoad = OnLoad

    end
end)


--[[ AddPrefabPostInit("wonkey", function(inst, data, ...)
    local DummyFn = function() end

    local _SaveForReroll = inst.SaveForReroll or DummyFn
    local _LoadForReroll = inst.LoadForReroll or DummyFn

    local function SaveForReroll(inst, ...)
        local ret = { _SaveForReroll(inst, ...) }

        local data = ret[1]



        if data ~= nil then
            data.welina_numDeaths = inst.welina_numDeaths
        end

        return unpack(ret)
    end

    local function LoadForReroll(inst, data, ...)
        local ret = { _LoadForReroll(inst, data, ...) }


        if data ~= nil and data.welina_numDeaths ~= nil then
            inst.welina_numDeaths = data.welina_numDeaths
        end


        return unpack(ret)
    end


    function OnSave(inst, data)
        data.welina_numDeaths = inst.welina_numDeaths and inst.welina_numDeaths or nil
    end
    
    function OnLoad(inst, data)
        if data and data.welina_numDeaths ~= nil then
            inst.welina_numDeaths = data.welina_numDeaths
    

    
        end
    end




    inst.OnSave = OnSave
    inst.OnLoad = OnLoad
    inst.SaveForReroll = SaveForReroll
    inst.LoadForReroll = LoadForReroll
end) ]]












modimport("init/init_all")





if TUNING.WELINA_OSP == 1 then
    local function MayKill(self, amount)
        if self.currenthealth + amount <= 0 then
            return true
        end
    end

    AddComponentPostInit("health", function(self)
        if not _G.TheWorld.ismastersim then return end

        local _DoDelta = self.DoDelta
        --(self:HasTag("wathom") and self:HasTag("amped")
        function self:DoDelta(amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb, ...)
            local currentpercent = self:GetPercent()

            if MayKill(self, amount) and self.inst:HasTag("emocatgirl") and currentpercent > TUNING.WELINA_OSP_THRESHOLD then
                --self:SetInvincible(true)

                self:SetCurrentHealth(0.015)
                self.inst.sg:GoToState("welina_hiss")
            else
                return _DoDelta(self, amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb, ...)
            end
        end
    end)

end






--Stuff is now sorted to proper files

--SKY: This is organized really really well, awesome job!
