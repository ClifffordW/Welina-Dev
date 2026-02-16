local assets =
{
    Asset("ANIM", "anim/welina_catnip.zip"),
	Asset("ANIM", "anim/ui_welina_collar.zip"),
}

local prefabs =
{

}




require("writeables").AddLayout("welina_catnip", 
{
    prompt = STRINGS.KITCOON_NAMING.MENU_PROMPT,
    animbank = "ui_welina_collar",
    animbuild = "ui_welina_collar",
    menuoffset = Vector3(6, -70, 0),
	maxcharacters = TUNING.KITCOON_NAMING_MAX_LENGTH,

    cancelbtn = {
        text = STRINGS.KITCOON_NAMING.MENU_CANCEL,
        cb = nil,
        control = CONTROL_CANCEL
    },
    middlebtn = {
        text = STRINGS.KITCOON_NAMING.MENU_RANDOM,
        cb = function(inst, doer, widget)
            widget:OverrideText( STRINGS.KITCOON_NAMING.NAMES[math.random(#STRINGS.KITCOON_NAMING.NAMES)] )
        end,
        control = CONTROL_MENU_MISC_2
    },
    acceptbtn = {
        text = STRINGS.KITCOON_NAMING.MENU_ACCEPT,
        cb = nil,
        control = CONTROL_ACCEPT
    },
})

local function OnUseOnKitcoon(inst, target, doer)
    if target.components.follower.leader ~= nil and target.components.follower.leader.prefab == "welina" then return end 

	inst.naming_target = target

	if inst.components.writeable ~= nil then
	    inst.components.writeable:BeginWriting(doer)
	end

    if target.components.locomotor ~= nil then
        target.components.locomotor:StopMoving()
    end

	target.is_being_named = true


	if inst.onrmeove_naming_target == nil then	
		inst.onrmeove_naming_target = function(t)
			inst.components.writeable:EndWriting()
			inst.naming_target = nil
		end
	end
    inst:ListenForEvent("onremove", inst.onrmeove_naming_target, inst.naming_target)

	return true
end

local function OnNamedByWriteable(inst, new_name, writer)
    if new_name ~= nil and inst.naming_target ~= nil and inst.naming_target:IsValid() and inst.naming_target.components.named ~= nil  then
        inst.naming_target.components.named:SetName(new_name, writer ~= nil and writer.userid or nil)
        if writer.components.leader ~= nil then
            writer.components.leader:AddFollower(inst.naming_target)
            inst.naming_target:AddTag("welinas_cat")
        end
    end
end

local function OnWritingEnded(inst)
	if inst.naming_target ~= nil then
		inst.naming_target.is_being_named = nil
	end
    inst:RemoveEventCallback("onremove", inst.onrmeove_naming_target, inst.naming_target)
	inst.naming_target = nil

	inst.components.useabletargeteditem:StopUsingItem()
end

local function on_stop_use(inst)

end

local function IsCatcoon(inst, target, doer)
	return target:HasTag("sinner")
end


local NV_COLOURCUBES =
{
    autumn =
    {
        day = resolvefilepath("images/colour_cubes/welina_high.tex"),
        dusk = resolvefilepath("images/colour_cubes/welina_high.tex"),
        night = resolvefilepath("images/colour_cubes/welina_high.tex"),
        full_moon = "images/colour_cubes/snow_cc.tex"
    },
    winter =
    {
        day = resolvefilepath("images/colour_cubes/welina_high.tex"),
        dusk = resolvefilepath("images/colour_cubes/welina_high.tex"),
        night = resolvefilepath("images/colour_cubes/welina_high.tex"),
        full_moon = "images/colour_cubes/snow_cc.tex"
    },
    spring =
    {
        day = resolvefilepath("images/colour_cubes/welina_high.tex"),
        dusk = resolvefilepath("images/colour_cubes/welina_high.tex"),
        night = resolvefilepath("images/colour_cubes/welina_high.tex"),--"images/colour_cubes/spring_night_cc.tex",
        full_moon = "images/colour_cubes/snow_cc.tex"
    },
    summer =
    {
        day = resolvefilepath("images/colour_cubes/welina_high.tex"),
        dusk = resolvefilepath("images/colour_cubes/welina_high.tex"),
        night = resolvefilepath("images/colour_cubes/welina_high.tex"),
        full_moon = resolvefilepath("images/colour_cubes/welina_high.tex"),
    },
}

local function SetCatnipped(inst, enable)

    local season = TheWorld.state.season

    if  inst.components.debuffable:HasDebuff("catnipbuff") then
        --inst.components.playervision:ForceNightVision(true)
        inst.components.playervision:SetCustomCCTable(NV_COLOURCUBES[season])


    else
        --inst.components.playervision:ForceNightVision(false)
        inst.components.playervision:SetCustomCCTable(nil)



        
    end


   
        

    
    

end 

--[[
local function WatchCatnipState(inst)
    if  inst.components.debuffable:HasDebuff("catnipbuff") then
        inst:WatchWorldState( "isday", SetCatnipped)
        inst:WatchWorldState( "isdusk", SetCatnipped)
        inst:WatchWorldState( "isnight", SetCatnipped)
        inst:WatchWorldState( "iscaveday", SetCatnipped)
        inst:WatchWorldState( "iscavedusk", SetCatnipped)
        inst:WatchWorldState( "iscavenight", SetCatnipped)
        inst:WatchWorldState(  "season", SetCatnipped)

    else


        inst:StopWatchingWorldState( "isday", SetCatnipped)
        inst:StopWatchingWorldState( "isdusk", SetCatnipped)
        inst:StopWatchingWorldState( "isnight", SetCatnipped)
        inst:StopWatchingWorldState( "iscaveday", SetCatnipped)
        inst:StopWatchingWorldState( "iscavedusk", SetCatnipped)
        inst:StopWatchingWorldState( "iscavenight", SetCatnipped)
        inst:StopWatchingWorldState(  "season", SetCatnipped)
    end

end
--]]
local function CatnipEaten(inst, eater)
    
    if eater.prefab == "welina" then
        

        
        eater:AddDebuff("catnipbuff", "catnipbuff")
--[[         if TUNING.WELINA_CATNIP_MUSIC == 1 then
            SetCatnipped(eater, true)
        end ]]
		

        eater.components.talker:Say("Oh- this ain't good.")
        eater.components.health:DeltaPenalty(-0.5)
        eater.components.grogginess:AddGrogginess(2, 7)

    else
        eater.components.talker:Say("Blegh")
    end

end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("catnip")
    inst.AnimState:SetBuild("welina_catnip")
    inst.AnimState:PlayAnimation("idle")

    --inst.AnimState:SetScale(.75,1)

    MakeInventoryFloatable(inst)

    inst:AddTag("catnip")

	inst.UseableTargetedItem_ValidTarget = IsCatcoon		-- Note: Runs on client

    inst.entity:SetPristine()
    if not TheWorld.ismastersim then
        return inst
    end


    inst:AddComponent("edible")
    inst.components.edible.hungervalue = TUNING.CALORIES_TINY
    inst.components.edible.healthvalue = TUNING.HEALING_TINY
    inst.components.edible.foodtype = FOODTYPE.VEGGIE
    inst.components.edible:SetOnEatenFn(CatnipEaten)


    inst:AddComponent("inspectable")
--[[ 
	inst:AddComponent("writeable")
	inst.components.writeable:SetDefaultWriteable(false)
	inst.components.writeable:SetAutomaticDescriptionEnabled(false)
	inst.components.writeable:SetWriteableDistance(TUNING.KITCOON_NAMING_DIST)
	inst.components.writeable:SetOnWrittenFn(OnNamedByWriteable)
	inst.components.writeable:SetOnWritingEndedFn(OnWritingEnded)
	inst.components.writeable.remove_after_write = true ]]

    inst:AddComponent("inventoryitem")


    inst:AddComponent("tradable")

--[[     inst:AddComponent("useabletargeteditem")
    inst.components.useabletargeteditem:SetOnUseFn(OnUseOnKitcoon)
    inst.components.useabletargeteditem:SetOnStopUseFn(on_stop_use) ]]


    return inst
end




--CatnipBuff
local function OnTick(inst, target)
    if target.components.health ~= nil and
        not target.components.health:IsDead() and
        not target:HasTag("playerghost") then
        target.components.health:DoDelta(2, nil, "catnip")

        if target and target.player_classified and TUNING.WELINA_CATNIP_MUSIC == 1 then
            target.player_classified.gethigh:push()
        end


    else
        inst.components.debuff:Stop()
    end
end

local function KnockHerOut(target)
    if target.components.sanity:GetPercent() == 0 then
        target.components.grogginess:AddGrogginess(3, 2)

        target:RemoveEventCallback("sanitydelta", KnockHerOut)
--[[         if TUNING.WELINA_CATNIP_MUSIC == 1 then
            SetCatnipped(target, false)
        end ]]




    end
end

local function OnAttached(inst, target)
    inst.entity:SetParent(target.entity)
    inst.Transform:SetPosition(0, 0, 0) --in case of loading
    inst.task = inst:DoPeriodicTask(5, OnTick, nil, target)

    --SetCatnipped(target)
    --WatchCatnipState(target)

    target.components.sanity.dapperness = -1.20
    target.components.locomotor:SetExternalSpeedMultiplier(inst, "catnipboost", TUNING.WELINA_MOVESPEED * 1.1)






    inst:ListenForEvent("death", function()
        inst.components.debuff:Stop()
        target.components.sanity.dapperness = 0
        target.components.locomotor:RemoveExternalSpeedMultiplier(target, "catnipboost")

       -- SetCatnipped(target)
       -- WatchCatnipState(target)
        
        if target and target.player_classified then
            target.player_classified.getlow:push()
        end
        
    end, target)



    

    inst:ListenForEvent("knockedout", function()
        inst.components.debuff:Stop()
        target.components.sanity.dapperness = 0
        target.components.locomotor:RemoveExternalSpeedMultiplier(target, "catnipboost")
       -- SetCatnipped(target)
       -- WatchCatnipState(target)

        if target and target.player_classified then
            target.player_classified.getlow:push()
        end

    end, target)


    target:ListenForEvent("sanitydelta", KnockHerOut)



  


end

local function OnTimerDone(inst, data)
    if data.name == "catnipover" then
        inst.components.debuff:Stop()
    end
end

local function OnExtended(inst, target)
    inst.components.timer:StopTimer("catnipover")
    inst.components.timer:StartTimer("catnipover", 999999999)
    inst.task:Cancel()
    inst.task = inst:DoPeriodicTask(5, OnTick, nil, target)
end

local function fn_catnip()
    local inst = CreateEntity()

    if not TheWorld.ismastersim then
        --Not meant for client!
        inst:DoTaskInTime(0, inst.Remove)

        return inst
    end

    inst.entity:AddTransform()

    --[[Non-networked entity]]
    --inst.entity:SetCanSleep(false)
    inst.entity:Hide()
    inst.persists = false

    inst:AddTag("CLASSIFIED")

    inst:AddComponent("debuff")
    inst.components.debuff:SetAttachedFn(OnAttached)
    inst.components.debuff:SetDetachedFn(inst.Remove)
    inst.components.debuff:SetExtendedFn(OnExtended)
    inst.components.debuff.keepondespawn = true

    inst:AddComponent("timer")
    inst.components.timer:StartTimer("regenover", TUNING.JELLYBEAN_DURATION)
    inst:ListenForEvent("timerdone", OnTimerDone)

    return inst
end










return Prefab("welina_catnip", fn, assets),
 Prefab("catnipbuff", fn_catnip, assets)
