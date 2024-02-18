modimport("articore/articore_api")












local modnameFancy = "workshop-163770913"
local is_modenabled = KnownModIndex:IsModEnabled(modnameFancy)
local animation_data =
{
    frames_anim = is_modenabled and 220 or 64,
    camera_distance = is_modenabled and 8 or 13,
    anims = is_modenabled and "defaultdance" or "idle_loop",

}


AddStategraphState("wilson", State{
    name = "welina_hiss",
    tags = { "doing", "busy", "nointerrupt", "nopredict", "nomorph" },

    onenter = function(inst)


            
            
            inst.AnimState:PlayAnimation("research")
            inst.components.health:SetPercent(0.01)
            
            inst.components.locomotor:StopMoving()
            if inst.components.playercontroller ~= nil then
                inst.components.playercontroller:Enable(false)
            end
            inst.components.health:SetInvincible(true)
            inst:AddTag("NOTARGET")




            inst:SetCameraDistance(animation_data.camera_distance)
            

                








        
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


            TimeEvent(5 * FRAMES, function(inst)
                inst.Transform:SetScale(1,1.5,1)
            end),


            TimeEvent(10 * FRAMES, function(inst)
                if animation_data.anims == "idle_loop" then
                    inst.AnimState:SetBuild("welina_hiss_anim")
                    inst.AnimState:SetBank("welina_hiss")
                else
                    inst.SoundEmitter:PlaySound("fortnig/fortnite/theme", "fortnitedancetheme")
                end

                inst.AnimState:PlayAnimation(animation_data.anims, true)
            
                inst.Transform:SetNoFaced()
            end),


            TimeEvent(13 * FRAMES, function(inst)
                if animation_data.anims == "idle_loop" then
                    _G.TheFocalPoint.SoundEmitter:PlaySound("scotchmintz_characters/sfx/miau")
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
                inst:SetCameraDistance(animation_data.camera_distance + 3)
                inst.Transform:SetScale(1,1,1)



            end),

            TimeEvent(68 * FRAMES, function(inst)
                if animation_data.anims == "idle_loop" then
                    
                    inst.AnimState:PlayAnimation("emote_jumpcheer")
                    inst.AnimState:SetFrame(39)

                end

            end),



   



            
            


        },

		onupdate = function(inst)




			
		end,

        onexit = function(inst)

        end,
    })




AddPrefabPostInit("welina", function(inst, data,... )


    local DummyFn = function() end
   
    local _SaveForReroll = inst.SaveForReroll or DummyFn
    local _LoadForReroll = inst.LoadForReroll or DummyFn

    local function SaveForReroll(inst, ...)
        local ret = {_SaveForReroll(inst, ...)}
        
        local data = ret[1]

        

        if data ~= nil then
            data.welina_numDeaths = inst.welina_numDeaths
        end
        print("SAVING AS INTENDED")

        return unpack(ret)
    end

    local function LoadForReroll(inst, data, ...)
        local ret = {_LoadForReroll(inst, data, ...)}
        

        if data ~= nil and data.welina_numDeaths ~= nil then
            inst.welina_numDeaths = data.welina_numDeaths 
        end

        print("WORKING AS INTENDED")

        return unpack(ret)
    end

    inst.SaveForReroll = SaveForReroll
    inst.LoadForReroll = LoadForReroll
    



    

end)



AddPrefabPostInit("welina", function(inst, data,... )


    local DummyFn = function() end
   
    local _SaveForReroll = inst.SaveForReroll or DummyFn
    local _LoadForReroll = inst.LoadForReroll or DummyFn

    local function SaveForReroll(inst, ...)
        local ret = {_SaveForReroll(inst, ...)}
        
        local data = ret[1]

        

        if data ~= nil then
            data.welina_numDeaths = inst.welina_numDeaths
        end
        print("SAVING AS INTENDED")

        return unpack(ret)
    end

    local function LoadForReroll(inst, data, ...)
        local ret = {_LoadForReroll(inst, data, ...)}
        

        if data ~= nil and data.welina_numDeaths ~= nil then
            inst.welina_numDeaths = data.welina_numDeaths 
        end

        print("WORKING AS INTENDED")

        return unpack(ret)
    end

    inst.SaveForReroll = SaveForReroll
    inst.LoadForReroll = LoadForReroll
    



    

end)


AddPrefabPostInit("wonkey", function(inst, data,... )


    local DummyFn = function() end
   
    local _SaveForReroll = inst.SaveForReroll or DummyFn
    local _LoadForReroll = inst.LoadForReroll or DummyFn

    local function SaveForReroll(inst, ...)
        local ret = {_SaveForReroll(inst, ...)}
        
        local data = ret[1]

        

        if data ~= nil then
            data.welina_numDeaths = inst.welina_numDeaths
        end

        return unpack(ret)
    end

    local function LoadForReroll(inst, data, ...)
        local ret = {_LoadForReroll(inst, data, ...)}
        

        if data ~= nil and data.welina_numDeaths ~= nil then
            inst.welina_numDeaths = data.welina_numDeaths 
        end


        return unpack(ret)
    end

    inst.SaveForReroll = SaveForReroll
    inst.LoadForReroll = LoadForReroll
    



    

end)





AddStategraphEvent("wilson", 
    EventHandler("death", function(inst, data)
        if inst.sleepingbag ~= nil and (inst.sg:HasStateTag("bedroll") or inst.sg:HasStateTag("tent")) then -- wakeup on death to "consume" sleeping bag first
            inst.sleepingbag.components.sleepingbag:DoWakeUp()
            inst.sleepingbag = nil
        end

        if data ~= nil and data.cause == "file_load" and inst.components.revivablecorpse ~= nil then
            inst.sg:GoToState("corpse", true)
        elseif not inst.sg:HasStateTag("dead")   then
            
            
            if inst:HasTag("emocatgirl") and inst.received_damage ~= nil and inst.received_damage > 80 and inst.healthpercent and inst.healthpercent > 0.9  then
                inst.sg:GoToState("welina_hiss")
                inst.received_damage = nil
            
            
            
            
            else
                inst.sg:GoToState("death")
            end
        end
    end)
)





modimport("init/init_all")











--Stuff is now sorted to proper files

--SKY: This is organized really really well, awesome job!




























