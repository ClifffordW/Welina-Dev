modimport("articore/articore_api")





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


modimport("init/init_all")





--Stuff is now sorted to proper files

--SKY: This is organized really really well, awesome job!




























