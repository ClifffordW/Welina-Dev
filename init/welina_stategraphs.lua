local function ConfigureRunState(inst)
    if inst.components.rider:IsRiding() then
        inst.sg.statemem.riding = true
        inst.sg.statemem.groggy = inst:HasTag("groggy")
        inst.sg:AddStateTag("nodangle")
        inst.sg:AddStateTag("noslip")

        local mount = inst.components.rider:GetMount()
        inst.sg.statemem.ridingwoby = mount and mount:HasTag("woby")
    elseif inst.components.inventory:IsHeavyLifting() then
        inst.sg.statemem.heavy = true
        inst.sg.statemem.heavy_fast = inst.components.mightiness ~= nil and inst.components.mightiness:IsMighty()
        inst.sg:AddStateTag("noslip")
    elseif inst:IsChannelCasting() then
        inst.sg.statemem.channelcast = true
        inst.sg.statemem.channelcastitem = inst:IsChannelCastingItem()
    elseif inst:HasTag("wereplayer") then
        inst.sg.statemem.iswere = true
        inst.sg:AddStateTag("noslip")

        if inst:HasTag("weremoose") then
            if inst:HasTag("groggy") then
                inst.sg.statemem.moosegroggy = true
            else
                inst.sg.statemem.moose = true
            end
        elseif inst:HasTag("weregoose") then
            if inst:HasTag("groggy") then
                inst.sg.statemem.goosegroggy = true
            else
                inst.sg.statemem.goose = true
            end
        elseif inst:HasTag("groggy") then
            inst.sg.statemem.groggy = true
        else
            inst.sg.statemem.normal = true
        end
    elseif inst:IsInAnyStormOrCloud() and not inst.components.playervision:HasGoggleVision() then
        inst.sg.statemem.sandstorm = true
    elseif inst:HasTag("groggy") then
        inst.sg.statemem.groggy = true
    elseif inst:IsCarefulWalking() then
        inst.sg.statemem.careful = true
        inst.sg:AddStateTag("noslip")
    else
        inst.sg.statemem.normal = true
        inst.sg.statemem.normalwonkey = inst:HasTag("wonkey") or nil
    end
end
local function GetRunStateAnim(inst)
    return ((inst.sg.statemem.heavy and inst.sg.statemem.heavy_fast) and "heavy_walk_fast")
        or (inst.sg.statemem.heavy and "heavy_walk")
		or (inst.sg.statemem.channelcastitem and "channelcast_walk")
		or (inst.sg.statemem.channelcast and "channelcast_oh_walk")
        or (inst.sg.statemem.sandstorm and "sand_walk")
        or ((inst.sg.statemem.groggy or inst.sg.statemem.moosegroggy or inst.sg.statemem.goosegroggy) and "idle_walk")
        or (inst.sg.statemem.careful and "careful_walk")
        or (inst.sg.statemem.ridingwoby and "run_woby")
        or "run"
end

local function DoEquipmentFoleySounds(inst)
    for k, v in pairs(inst.components.inventory.equipslots) do
        if v.foleysound ~= nil then
            inst.SoundEmitter:PlaySound(v.foleysound, nil, nil, true)
        end
    end
end
local function DoFoleySounds(inst)
    DoEquipmentFoleySounds(inst)
    if inst.foleysound ~= nil then
        inst.SoundEmitter:PlaySound(inst.foleysound, nil, nil, true)
    end
end

AddStategraphState("wilson",
    State {
        name = "run_welina_start",
        tags = { "moving", "running", "canrotate", "monkey", "autopredict" },

        onenter = function(inst)
            ConfigureRunState(inst)
            if not inst:HasTag("emocatgirl") then
                inst.sg:GoToState("run")
                return
            end
            inst.Transform:SetPredictedSixFaced()
            inst.components.locomotor:RunForward()
            inst.AnimState:PlayAnimation("run_monkey_pre")
            --inst.SoundEmitter:PlaySound("dontstarve_DLC002/characters/wilbur/walktorun", "walktorun") TODO SOUND
        end,

        onupdate = function(inst)
            if inst.components.locomotor:GetTimeMoving() < TUNING.WONKEY_TIME_TO_RUN then
                inst.sg:GoToState("run")
            end
        end,

        events =
        {
            EventHandler("gogglevision", function(inst, data)
                if not data.enabled and inst:IsInAnyStormOrCloud() then
                    inst.sg:GoToState("run")
                end
            end),
            EventHandler("stormlevel", function(inst, data)
                if data.level >= TUNING.SANDSTORM_FULL_LEVEL and not inst.components.playervision:HasGoggleVision() then
                    inst.sg:GoToState("run")
                end
            end),
            EventHandler("miasmalevel", function(inst, data)
                if data.level >= 1 and not inst.components.playervision:HasGoggleVision() then
                    inst.sg:GoToState("run")
                end
            end),
            EventHandler("carefulwalking", function(inst, data)
                if data.careful then
                    inst.sg:GoToState("run")
                end
            end),
            EventHandler("animover", function(inst)
                inst.sg.statemem.monkeyrunning = true
                inst.sg:GoToState("run_welina")
            end),
        },

        onexit = function(inst)
            if not inst.sg.statemem.monkeyrunning then
                inst.Transform:ClearPredictedFacingModel()
            end
        end,
    })

AddStategraphState("wilson", State {
    name = "run_welina",
    tags = { "moving", "running", "canrotate", "monkey", "autopredict" },

    onenter = function(inst)
        ConfigureRunState(inst)
        if not inst:HasTag("emocatgirl") then
            inst.sg:GoToState("run")
            return
        end
        inst.components.locomotor.runspeed = TUNING.WILSON_RUN_SPEED + TUNING.WONKEY_SPEED_BONUS
        inst.components.hunger:SetRate(TUNING.WILSON_HUNGER_RATE * TUNING.WONKEY_RUN_HUNGER_RATE_MULT)
        inst.Transform:SetPredictedSixFaced()
        inst.components.locomotor:RunForward()

        if not inst.AnimState:IsCurrentAnimation("run_welina_loop") then
            inst.AnimState:PlayAnimation("run_welina_loop", true)
        end

        inst.sg:SetTimeout(inst.AnimState:GetCurrentAnimationLength())
    end,

    timeline =
    {
        TimeEvent(4 * FRAMES, function(inst) PlayFootstep(inst, 0.5) end),
        TimeEvent(5 * FRAMES, function(inst)
            PlayFootstep(inst, 0.5)
            DoFoleySounds(inst)
        end),
        TimeEvent(10 * FRAMES, function(inst) PlayFootstep(inst, 0.5) end),
        TimeEvent(11 * FRAMES, function(inst) PlayFootstep(inst, 0.5) end),
    },

    onupdate = function(inst)
        if inst.components.locomotor:GetTimeMoving() < TUNING.WONKEY_TIME_TO_RUN then
            inst.sg:GoToState("run")
            return
        end
        inst.components.locomotor:RunForward()
    end,

    events =
    {
        EventHandler("gogglevision", function(inst, data)
            if not data.enabled and inst:IsInAnyStormOrCloud() then
                inst.sg:GoToState("run")
            end
        end),
        EventHandler("stormlevel", function(inst, data)
            if data.level >= TUNING.SANDSTORM_FULL_LEVEL and not inst.components.playervision:HasGoggleVision() then
                inst.sg:GoToState("run")
            end
        end),
        EventHandler("miasmalevel", function(inst, data)
            if data.level >= 1 and not inst.components.playervision:HasGoggleVision() then
                inst.sg:GoToState("run")
            end
        end),
        EventHandler("carefulwalking", function(inst, data)
            if data.careful then
                inst.sg:GoToState("run")
            end
        end),
    },

    ontimeout = function(inst)
        inst.sg.statemem.monkeyrunning = true
        inst.sg:GoToState("run_welina")
    end,

    onexit = function(inst)
        if not inst.sg.statemem.monkeyrunning then
            inst.components.locomotor.runspeed = TUNING.WILSON_RUN_SPEED + TUNING.WONKEY_WALK_SPEED_PENALTY
            inst.components.hunger:SetRate(TUNING.WILSON_HUNGER_RATE)
            inst.Transform:ClearPredictedFacingModel()
        end
    end,
})



--Client


AddStategraphState("wilson", State {
    name = "run_welina_start",
    tags = { "moving", "running", "canrotate", "monkey" },

    onenter = function(inst)
        ConfigureRunState(inst)
        if not inst:HasTag("emocatgirl") then
            inst.sg:GoToState("run")
            return
        end
        inst.Transform:SetPredictedSixFaced()
        inst.components.locomotor:RunForward()
        inst.AnimState:PlayAnimation("run_monkey_pre")
    end,

    onupdate = function(inst)
        if inst.components.locomotor:GetTimeMoving() < TUNING.WONKEY_TIME_TO_RUN then
            inst.sg:GoToState("run")
        end
    end,

    events =
    {
        EventHandler("gogglevision", function(inst, data)
            if not data.enabled and inst:IsInAnyStormOrCloud() then
                inst.sg:GoToState("run")
            end
        end),
        EventHandler("stormlevel", function(inst, data)
            if data.level >= TUNING.SANDSTORM_FULL_LEVEL and not inst.components.playervision:HasGoggleVision() then
                inst.sg:GoToState("run")
            end
        end),
        EventHandler("miasmalevel", function(inst, data)
            if data.level >= 1 and not inst.components.playervision:HasGoggleVision() then
                inst.sg:GoToState("run")
            end
        end),
        EventHandler("carefulwalking", function(inst, data)
            if data.careful then
                inst.sg:GoToState("run")
            end
        end),
        EventHandler("animover", function(inst)
            inst.sg.statemem.monkeyrunning = true
            inst.sg:GoToState("run_welina")
        end),
    },

    onexit = function(inst)
        if not inst.sg.statemem.monkeyrunning then
            inst.Transform:ClearPredictedFacingModel()
        end
    end,
})

AddStategraphState("wilson", State {
    name = "run_welina",
    tags = { "moving", "running", "canrotate", "monkey" },

    onenter = function(inst)
        ConfigureRunState(inst)
        if not inst:HasTag("emocatgirl") then
            inst.sg:GoToState("run")
            return
        end
        
        inst.components.locomotor.predictrunspeed = TUNING.WILSON_RUN_SPEED + TUNING.WONKEY_SPEED_BONUS
        inst.Transform:SetPredictedSixFaced()
        inst.components.locomotor:RunForward()

        if not inst.AnimState:IsCurrentAnimation("run_welina_loop") then
            inst.AnimState:PlayAnimation("run_welina_loop", true)
        end

        inst.sg:SetTimeout(inst.AnimState:GetCurrentAnimationLength())
    end,

    timeline =
    {
        TimeEvent(4 * FRAMES, function(inst) PlayFootstep(inst, 0.5) end),
        TimeEvent(5 * FRAMES, function(inst)
            PlayFootstep(inst, 0.5)
            DoFoleySounds(inst)
        end),
        TimeEvent(10 * FRAMES, function(inst) PlayFootstep(inst, 0.5) end),
        TimeEvent(11 * FRAMES, function(inst) PlayFootstep(inst, 0.5) end),
    },

    onupdate = function(inst)
        if inst.components.locomotor:GetTimeMoving() < TUNING.WONKEY_TIME_TO_RUN then
            inst.sg:GoToState("run")
            return
        end
        inst.components.locomotor:RunForward()
    end,

    events =
    {
        EventHandler("gogglevision", function(inst, data)
            if not data.enabled and inst:IsInAnyStormOrCloud() then
                inst.sg:GoToState("run")
            end
        end),
        EventHandler("stormlevel", function(inst, data)
            if data.level >= TUNING.SANDSTORM_FULL_LEVEL and not inst.components.playervision:HasGoggleVision() then
                inst.sg:GoToState("run")
            end
        end),
        EventHandler("miasmalevel", function(inst, data)
            if data.level >= 1 and not inst.components.playervision:HasGoggleVision() then
                inst.sg:GoToState("run")
            end
        end),
        EventHandler("carefulwalking", function(inst, data)
            if data.careful then
                inst.sg:GoToState("run")
            end
        end),
    },

    ontimeout = function(inst)
        inst.sg.statemem.monkeyrunning = true
        inst.sg:GoToState("run_welina")
    end,

    onexit = function(inst)
        if not inst.sg.statemem.monkeyrunning then
            inst.components.locomotor.predictrunspeed = nil
            inst.Transform:ClearPredictedFacingModel()
        end
    end,
})





local function SGWilsonPostInit(sg)
	sg.states["run_start"].onenter = function(inst)
		
		
        ConfigureRunState(inst)


        if inst:HasTag("emocatgirl") and inst.components.locomotor:GetTimeMoving() >= TUNING.WONKEY_TIME_TO_RUN then
            inst.sg:GoToState("run_welina") --resuming after brief stop from changing directions, or resuming prediction after running into obstacle
            return
        end
        if inst.sg.statemem.normalwonkey and inst.components.locomotor:GetTimeMoving() >= TUNING.WONKEY_TIME_TO_RUN then
            inst.sg:GoToState("run_monkey") --resuming after brief stop from changing directions, or resuming prediction after running into obstacle
            return
        end
        inst.components.locomotor:RunForward()
        inst.AnimState:PlayAnimation(GetRunStateAnim(inst).."_pre")
        --goose footsteps should always be light
        inst.sg.mem.footsteps = (inst.sg.statemem.goose or inst.sg.statemem.goosegroggy) and 4 or 0
	
    end


    sg.states["run"].onupdate = function(inst)
		
        if inst:HasTag("emocatgirl") and not inst.sg.statemem.channelcast and inst.components.locomotor:GetTimeMoving() >= TUNING.WONKEY_TIME_TO_RUN then
            inst.sg:GoToState("run_welina_start")
            return
        end
        if inst.sg.statemem.normalwonkey and not inst.sg.statemem.channelcast and inst.components.locomotor:GetTimeMoving() >= TUNING.WONKEY_TIME_TO_RUN then
            inst.sg:GoToState("run_monkey_start")
            return
        end
        inst.components.locomotor:RunForward()
	
    end


end

AddStategraphPostInit("wilson", SGWilsonPostInit)
AddStategraphPostInit("wilson_client", SGWilsonPostInit)




