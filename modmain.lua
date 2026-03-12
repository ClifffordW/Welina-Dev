modimport("articore/articore_api")


do
    local GLOBAL = GLOBAL
    local modEnv = GLOBAL.getfenv(1)
    local rawget, setmetatable = GLOBAL.rawget, GLOBAL.setmetatable
    setmetatable(modEnv, {
        __index = function(self, index)
            return rawget(GLOBAL, index)
        end,
        -- lack of __newindex means it defaults to modEnv, so we don't mess up globals.
    })

    _G = GLOBAL
end



EQUIPSLOTS.WELINA_DYE = "catdye"


--WARNING Debug do not remove
global("print_welina")
function _G.print_welina(val)


    if TheNet and TheNet:GetUserID() == "KU_csyO78zI" then

        
        if type(val) ~= "table" then
            print(val)
        else
            dumptable(val,1,1)
        end

    end




end



AddRepairType("trinket_22", "trinket_22")



local modnameFancy = "workshop-1637709131"
local is_modenabled = _G.KnownModIndex:IsModEnabled(modnameFancy)

local animation_data = {
    frames_anim = is_modenabled and 220 or 64,
    camera_distance = is_modenabled and 7 or 13,
    anims = is_modenabled and "defaultdance" or "idle_loop",
}


local fmodtable = require("defs.sound.fmodtable_scotchmintz_characters").Track


PICKUPSOUNDS["welina_paintcan"] = fmodtable.sfx.item_pickup.paintcan
PICKUPSOUNDS["welina_catnip"] = fmodtable.sfx.item_pickup.catnip
PICKUPSOUNDS["welina_dogtags"] = fmodtable.sfx.item_pickup.dogtags
PICKUPSOUNDS["welina_collar"] = fmodtable.sfx.item_pickup.collar
PICKUPSOUNDS["welina_cattoy"] = fmodtable.sfx.item_pickup.cattoy



local function GotHigh(inst)
    if inst._parent ~= nil and TheFocalPoint.entity:GetParent() == inst._parent then
        if TheFocalPoint.SoundEmitter:PlayingSound("high") then return end

        if TheMixer then

            TheMixer:SetHighPassFilter("set_ambience", 250)
            TheMixer:SetHighPassFilter("set_sfx", 300)
            TheMixer:SetHighPassFilter("set_sfx/voice", 200) -- Keep voices clearer so player can still hear warns
        end



        TheSim:SetReverbPreset("cave")


        TheFocalPoint.SoundEmitter:PlaySound(fmodtable.music.gethigh, "high", 0.5)
    end
end


local function NoLongerHigh(inst)
    if inst._parent ~= nil and TheFocalPoint.entity:GetParent() == inst._parent then
        if not TheFocalPoint.SoundEmitter:PlayingSound("high") then return end

        if TheMixer then

            TheMixer:SetHighPassFilter("set_ambience", 1)
            TheMixer:SetHighPassFilter("set_sfx", 1)
            TheMixer:SetHighPassFilter("set_sfx/voice", 1)
        end




        TheFocalPoint.SoundEmitter:KillSound("high")
        TheSim:SetReverbPreset("default")
    end
end



AddPrefabPostInit("player_classified", function(inst)
    inst.gethigh = net_event(inst.GUID, "gethigh")
    inst.getlow = net_event(inst.GUID, "getlow")

    inst:ListenForEvent("gethigh", GotHigh)
    inst:ListenForEvent("getlow", NoLongerHigh)
end)

















AddPrefabPostInit("whip", function(inst)
    local CRACK_MUST_TAGS = { "_combat" }
    local CRACK_CANT_TAGS = { "player", "epic", "shadow", "shadowminion", "shadowchesspiece", "sinner" }
    local function supercrack(inst)
        local owner = inst.components.inventoryitem and inst.components.inventoryitem:GetGrandOwner() or nil
        local x, y, z = inst.Transform:GetWorldPosition()
        local ents = TheSim:FindEntities(x, y, z, TUNING.WHIP_SUPERCRACK_RANGE, CRACK_MUST_TAGS, CRACK_CANT_TAGS)
        for i, v in ipairs(ents) do
            if v ~= owner and v.components.combat:HasTarget() then
                v.components.combat:DropTarget()
                if v.sg ~= nil and v.sg:HasState("hit")
                    and v.components.health ~= nil and not v.components.health:IsDead()
                    and not v.sg:HasStateTag("transform")
                    and not v.sg:HasStateTag("nointerrupt")
                    and not v.sg:HasStateTag("frozen")

                then
                    if v.components.sleeper ~= nil then
                        v.components.sleeper:WakeUp()
                    end
                    v.sg:GoToState("hit")
                end
            end
        end
    end

    local function onattack(inst, attacker, target)
        if target ~= nil and target:IsValid() then
            local chance =
                (target:HasTag("epic") and TUNING.WHIP_SUPERCRACK_EPIC_CHANCE) or
                (target:HasTag("monster") and TUNING.WHIP_SUPERCRACK_MONSTER_CHANCE) or
                TUNING.WHIP_SUPERCRACK_CREATURE_CHANCE

            local snap = SpawnPrefab("impact")

            local x, y, z = inst.Transform:GetWorldPosition()
            local x1, y1, z1 = target.Transform:GetWorldPosition()
            local angle = -math.atan2(z1 - z, x1 - x)
            snap.Transform:SetPosition(x1, y1, z1)
            snap.Transform:SetRotation(angle * RADIANS)

            --impact sounds normally play through comabt component on the target
            --whip has additional impact sounds logic, which we'll just add here

            if math.random() < chance then
                snap.Transform:SetScale(3, 3, 3)
                if target.SoundEmitter ~= nil then
                    target.SoundEmitter:PlaySound(inst.skin_sound_large or "dontstarve/common/whip_large")
                end
                inst:DoTaskInTime(0, supercrack)
            elseif target.SoundEmitter ~= nil then
                target.SoundEmitter:PlaySound(inst.skin_sound_small or "dontstarve/common/whip_small")
            end
        end
    end



    if not TheWorld.ismastersim then
        return inst
    end

    inst.components.weapon:SetOnAttack(onattack)
end)


AddPrefabPostInit("catcoon", function(inst)
    inst.AnimState:SetHatOffset(5, 200)
    local function NoHoles(pt)
        return not TheWorld.Map:IsPointNearHole(pt)
    end

    local function OnGetItemFromPlayer(inst, giver, item)
        if inst.components.sleeper:IsAsleep() then
            inst.components.sleeper:WakeUp()
        end
        if inst.components.combat.target == giver then
            inst.components.combat:SetTarget(nil)
            inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/catcoon/pickup")
        elseif giver.components.leader ~= nil then
            if item:HasTag("catnip") then
                if giver.components.petleash:IsFull() then
                    giver.components.talker:Say("That's one too many.")

                    return
                end

				giver:PushEvent("makefriend")

                inst:Hide()
                local theta = math.random() * 2 * PI
                local pt = inst:GetPosition()
                local offset = FindWalkableOffset(pt, theta, 0, 12, true, true, NoHoles)
                if offset ~= nil then
                    pt.x = pt.x + offset.x
                    pt.z = pt.z + offset.z
                end
                giver.components.petleash:SpawnPetAt(pt.x, 0, pt.z, "welina_catcoon")



                inst:Remove()
            end
            if not item:HasTag("catnip") then
                if giver.components.minigame_participator == nil then
                    giver:PushEvent("makefriend")
                    giver.components.leader:AddFollower(inst)
                end
                inst.last_hairball_time = GetTime()
                inst.hairball_friend_interval = math.random(2, 4) -- Jumpstart the hairball timer (slot machine time!)
                inst.components.follower:AddLoyaltyTime(TUNING.CATCOON_LOYALTY_PER_ITEM)
                if not inst.sg:HasStateTag("busy") then
                    inst:FacePoint(giver.Transform:GetWorldPosition())
                    inst.sg:GoToState("pawground")
                end
            end
        end
        item:Remove()

        --[[
        --I wear hats
        if item.components.equippable ~= nil and item.components.equippable.equipslot == EQUIPSLOTS.HEAD then
            local current = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HEAD)
            if current ~= nil then
                inst.components.inventory:DropItem(current)
            end

            inst.components.inventory:Equip(item)
            inst.AnimState:ShowSymbol("swap_hat")
        end
		--]]
    end

    local function ShouldAcceptItem(inst, item)
        if item.components.equippable ~= nil and item.components.equippable.equipslot == EQUIPSLOTS.HEAD then
            return true
        elseif item:HasTag("cattoy") or item:HasTag("catfood") or item:HasTag("cattoyairborne") then
            return true
        elseif item:HasTag("catnip") then
            return true
        else
            return false
        end
    end

    local function OnRefuseItem(inst, item)
        inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/catcoon/hiss_pre")
        if inst.components.sleeper:IsAsleep() then
            inst.components.sleeper:WakeUp()
            -- elseif not inst.sg:HasStateTag("busy") then
            -- 	inst.sg:GoToState("hiss")
        end
    end

    

    local RETARGET_TAGS = { "_health" }
    local RETARGET_NO_TAGS = { "INLIMBO", "notarget", "invisible", "sinner" }

    local function RetargetFn(inst)
        return FindEntity(inst, TUNING.CATCOON_TARGET_DIST,
            function(guy)
                if guy:HasTag("catcoon") then
                    return not (inst.components.follower and inst.components.follower:IsLeaderSame(guy))
                        and
                        not (inst.components.follower and guy.components.follower and inst.components.follower.leader == nil and guy.components.follower.leader == nil)
                        and guy.components.health
                        and not guy.components.health:IsDead()
                        and inst.components.combat:CanTarget(guy)
                else
                    return ((guy:HasTag("monster") or guy:HasTag("smallcreature"))
                            and guy.components.health
                            and not guy.components.health:IsDead()
                            and inst.components.combat:CanTarget(guy)
                            and not (inst.components.follower and inst.components.follower.leader ~= nil and guy:HasTag("abigail")))
                        and not (inst.components.follower and inst.components.follower:IsLeaderSame(guy))
                        or (guy:HasTag("cattoyairborne")
                            and not (inst.components.follower and inst.components.follower:IsLeaderSame(guy)))
                end
            end,
            RETARGET_TAGS, RETARGET_NO_TAGS)
    end

    if not TheWorld.ismastersim then
        return inst
    end

    inst.components.trader:SetAcceptTest(ShouldAcceptItem)
    inst.components.trader.onaccept = OnGetItemFromPlayer

    inst.components.combat:SetRetargetFunction(3, RetargetFn)
end)









AddStategraphState(
    "wilson",
    State({
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

        timeline = {

            --TimeEvent(1 * FRAMES, function(inst) inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/catcoon/hiss_pre") end),

            TimeEvent(10 * FRAMES, function(inst)
                if animation_data.anims == "idle_loop" then
                    local skin_build = inst.AnimState:GetBuild()
                    local contains_welina = string.find(skin_build, "ms_welina")
                    inst.skinname = contains_welina and string.gsub(skin_build, "ms_welina", "") or ""

                    inst.AnimState:SetBuild("welina_hiss_anim" .. inst.skinname)


                    inst.AnimState:SetBank("welina_hiss")
                else
                    inst.SoundEmitter:PlaySound("fortnig/fortnite/theme", "fortnitedancetheme")
                end

                inst.AnimState:PlayAnimation(
                    animation_data.anims,
                    animation_data.anims == "idle_loop" and true or false
                )

                inst.Transform:SetNoFaced()
            end),

            TimeEvent(14 * FRAMES, function(inst)
                if animation_data.anims == "idle_loop" then
                    --inst.SoundEmitter:PlaySound(welina_sounds.welina_hiss.event)
                    inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/catcoon/hiss")
                end
            end),

            TimeEvent(62 * FRAMES, function(inst)
                inst.sg:RemoveStateTag("busy")
            end),

            TimeEvent(62 * FRAMES, function(inst)
                inst.AnimState:PushAnimation("idle_pst", false)
            end),

            TimeEvent(animation_data.frames_anim * FRAMES, function(inst)
                inst.AnimState:SetBuild(inst.skinname ~= "" and "ms_welina" .. inst.skinname or "welina")
                inst.AnimState:SetBank("wilson")
                inst.components.locomotor:StopMoving()


                inst:Show()
                inst.Transform:SetFourFaced()
                inst.components.inventory:Open()
                inst:SetCameraDistance(animation_data.camera_distance + 8)
            end),

            TimeEvent(68 * FRAMES, function(inst)
                if animation_data.anims == "idle_loop" then
                    inst.AnimState:PlayAnimation("staff")
                    inst.AnimState:SetFrame(60)
                    inst.AnimState:SetDeltaTimeMultiplier(0.85)
                end
            end),

            TimeEvent(72 * FRAMES, function(inst)
                if animation_data.anims == "idle_loop" then
                    inst.AnimState:SetDeltaTimeMultiplier(1)
                end
            end),
        },

        onupdate = function(inst) end,

        onexit = function(inst)
            inst:RemoveTag("NOTARGET")

            if inst.skinname then
                inst.skinname = nil
            end
            if inst.components.health ~= nil then
                inst.components.health:SetInvincible(false)
            end
            if inst.components.playercontroller ~= nil then
                inst.components.playercontroller:Enable(true)
            end
        end,
    })
)



AddStategraphState("wilson", State {
    name = "welina_vomit",
    tags = { "doing", "busy", "nopredict", "nomorph", "vomiting" },

    onenter = function(inst)
        local eaten_table = inst.welina_eatenitem
        local chosen_item = "spoiled_food" -- Fallback

        -- Pick a random item from the list if it's not empty
        if eaten_table and #eaten_table > 0 then
            chosen_item = eaten_table[math.random(#eaten_table)]
        end

        inst.sg.statemem.eatenitem = chosen_item
 
        inst.AnimState:PushAnimation("nya_long", false)
      
    end,

    timeline =
    {
        TimeEvent(3 * FRAMES, function(inst)
            inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/catcoon/hairball_hack")
        end),

        TimeEvent(24 * FRAMES, function(inst)
            inst:PerformBufferedAction()
        end),

        TimeEvent(27 * FRAMES, function(inst)
            inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/catcoon/hairball_hack")
        end),

        TimeEvent(48 * FRAMES, function(inst)
            inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/catcoon/hairball_hack")
        end),

        TimeEvent(80 * FRAMES, function(inst)
            inst.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/catcoon/hairball_vomit")
            local x, y, z = inst.Transform:GetWorldPosition()
            
            local itemsFallback = { ["spoiled_food"] = 1 }
            local default_loot_table = TUNING.WELINA_VOMIT_ITEMS.default or itemsFallback

            if inst.welina_eatenitem and #inst.welina_eatenitem > 0 then
                
                for i, prefab_eaten in ipairs(inst.welina_eatenitem) do
                    
                    local base_prefab = weighted_random_choice(default_loot_table)
                    local base_item = SpawnPrefab(base_prefab)
                    
                    if base_item then
                        base_item.Transform:SetPosition(x, y, z)
                        if base_item.components.inventoryitem then
                            base_item.components.inventoryitem:DoDropPhysics(x, y, z, true, 1)
                        end
                    end

                    -- 2. SPAWN BONUS ITEM (Based on the specific food prefab)
                    if math.random() < TUNING.WELINA_VOMIT_BONUSITEM_CHANCE then
                        local random_loot_table = TUNING.WELINA_VOMIT_ITEMS.random[prefab_eaten] or itemsFallback
                        local bonus_item = SpawnPrefab(weighted_random_choice(random_loot_table))
                        
                        if bonus_item then
                            bonus_item.Transform:SetPosition(x, y, z)
                            if bonus_item.components.inventoryitem then
                                bonus_item.components.inventoryitem:DoDropPhysics(x, y, z, true, 1)
                            end
                        end
                    end
                end
            else

                local backup = SpawnPrefab(weighted_random_choice(default_loot_table))
                if backup then
                    backup.Transform:SetPosition(x, y, z)
                    if backup.components.inventoryitem then
                        backup.components.inventoryitem:DoDropPhysics(x, y, z, true, 1)
                    end
                end
            end
        end),

        TimeEvent(95 * FRAMES, function(inst)
            inst.sg:RemoveStateTag("busy")
            inst.sg:RemoveStateTag("nointerrupt")
        end),
    },

    events =
    {
        EventHandler("animover", function(inst)
            if inst.AnimState:AnimDone() then
                inst.welina_eatenitem = {} 
                inst.sg:GoToState("idle")
                if inst.components.playercontroller ~= nil then
                    inst.components.playercontroller:Enable(true)
                end
            end
        end),

        
    },
    onexit = function(inst)
      
        if inst.components.inventory then
            inst.components.inventory:Show()
        end



        if inst.welina_eatenitem and #inst.welina_eatenitem > 0 then
            inst.welina_eatenitem = {}
        end

        if inst.components.playercontroller ~= nil then
            inst.components.playercontroller:Enable(true)
        end
    end,


})



AddStategraphState("wilson", State {
    name = "welina_vomit_pre",
    tags = { "doing", "busy", "nointerrupt", "nopredict", "nomorph", "vomiting" },

    onenter = function(inst)
        inst.components.locomotor:Stop()

        if inst.components.playercontroller ~= nil then
            inst.components.playercontroller:Enable(false)
        end
        if inst.components.inventory then
            inst.components.inventory:Hide()
        end


        inst.AnimState:PlayAnimation("sing_pre", false)
    end,

    events = {
        EventHandler("animover", function(inst)
            inst.sg:GoToState("welina_vomit")
        end),
    },

    onexit = function(inst)
      

        

        if inst.components.playercontroller ~= nil then
            inst.components.playercontroller:Enable(true)
        end
    end,


    --onexit = CheckPocketRummageMem,
})



AddAction("WELINA_VOMIT", "Vomit", function(act)
    return
end)

AddAction("WELINA_CAT_EQUIPHAT", "Equip Hat", function(act)
    return
end)

AddAction("WELINA_CAT_UNEQUIPHAT", "Unequip Hat", function(act)
    return
end)


AddAction("WELINA_CAT_UNPIN", "Unequip Hat", function(act)
    return
end)

--script, time, noanim, force, nobroadcast, colour




ACTIONS.WELINA_VOMIT.mount_valid = true
ACTIONS.WELINA_VOMIT.priority = 2
ACTIONS.WELINA_VOMIT.rmb = false




ACTIONS.WELINA_CAT_UNPIN.distance = 8
ACTIONS.WELINA_CAT_UNPIN.fn = function(act)
	if act.doer ~= act.target and act.target.components.pinnable and act.target.components.pinnable:IsStuck() then
		act.target:PushEvent("unpinned")
		return true
	end
end

ACTIONS.WELINA_CAT_EQUIPHAT.rmb = false
ACTIONS.WELINA_CAT_EQUIPHAT.fn = function(act)
    if act.doer.components.inventory ~= nil then
        return act.doer.components.inventory:Equip(act.invobject)
    end
end



ACTIONS.WELINA_CAT_UNEQUIPHAT.strfn = function(act)
    return (act.invobject ~= nil and
            act.invobject:HasTag("heavy") or
            GetGameModeProperty("non_item_equips") or
            act.doer.replica.inventory:GetNumSlots() <= 0)
        and "HEAVY"
        or nil
end


ACTIONS.WELINA_CAT_UNEQUIPHAT.fn = function(act)
    if act.invobject ~= nil and act.doer.components.inventory ~= nil then
        if act.invobject.components.equippable ~= nil and act.invobject.components.equippable:ShouldPreventUnequipping() then
            return nil
        end
        if act.invobject.components.inventoryitem.cangoincontainer and not GetGameModeProperty("non_item_equips") then
            act.doer.components.inventory:GiveItem(act.invobject)
        else
            act.doer.components.inventory:DropItem(act.invobject, true, true)
        end
        return true
    end
end



ACTIONS.WELINA_CAT_EQUIPHAT.strfn = function(act)
    return act.target ~= nil
        and act.target:HasTag("heavy")
        and "HEAVY"
        or nil
end








AddStategraphActionHandler("wilson", _G.ActionHandler(ACTIONS.WELINA_VOMIT, "welina_vomit_pre"))



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

        TheSim:SetReverbPreset("default")
        TheMixer:SetHighPassFilter("set_music", filterValue or 1)

        TheMixer:SetHighPassFilter("set_ambience", filterValue or 1)
        TheMixer:SetHighPassFilter("set_sfx", filterValue or 1)
        TheMixer:SetHighPassFilter("set_sfx/voice", filterValue_voice or 1)

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

        local _OnSave = inst.OnSave or DummyFn
        local _OnLoad = inst.OnLoad or DummyFn
        local function OnSave(inst, data, ...)
            local ret = _OnSave(inst, data, ...)

            data.welina_numDeaths = inst.welina_numDeaths and inst.welina_numDeaths or nil

            return ret
        end

        local function OnLoad(inst, data, ...)
            local ret = _OnLoad(inst, data, ...)

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

local function TryMakeResentable(inst)
    if inst.components.combat == nil
        or inst.components.welina_resentable ~= nil then
        return
    end
    inst:AddComponent("welina_resentable")
end

AddPrefabPostInitAny(function(inst)
    if inst == nil or not TheWorld.ismastersim then
        return
    end

    TryMakeResentable(inst)
end)










local OldFunc = GLOBAL.ACTIONS.USEITEMON.strfn




ACTIONS.USEITEMON.strfn = function(act)

    if act.invobject ~= nil then
        if act.invobject.prefab:find("welina_nametag") then
            if act.target ~= nil and act.target:HasTag("sinner")   then
                return  "WELINACAT_NAME"
            end
        elseif act.invobject.prefab:find("welina_catdye") then
                
            if act.target ~= nil and act.target:HasTag("sinner")   then
                return  "WELINACAT_PAINT"
            end

        else
            return OldFunc and OldFunc(act) or "GENERIC"
            

            
        end
    end

	
end




--[[ --Catcoon Container
local params = {}

params.welina_catcoon = {
	widget = {
		slotpos = 
        {
            Vector3(-(64 + 12)/2, 0, 0),
            Vector3( (64 + 12)/2, 0, 0),
            Vector3( 38+76, 0, 0),

        },
		slotbg = 
        {
            {
                atlas = "images/hud.xml",
                image = "equip_slot_head.tex",
            },
            {
                atlas = "images/welina_hud.xml",
                image = "collar.tex",
            },

            {
                atlas = "images/welina_hud.xml",
                image = "dye.tex",
            }

        },
		animbank = "ui_welina_cat_2x1",
		animbuild = "ui_welina_cat_2x1",
        animloop = true,
		pos = Vector3(0, 200, 0),
		side_align_tip = 160,
	},
    usespecificslotsforitems = true,

	type = "chest",
}

function params.welina_catcoon.itemtestfn(container, item, slot)
	if slot == 1 then
		return item:HasTag("hat")
	elseif slot == 2 then
		return item:HasTag("welinacatcoon_collar")

	elseif slot == 3 then
		return item:HasTag("welinacatcoon_dye")

	elseif slot == nil then
		return item:HasAnyTag("hat", "welinacatcoon_collar", "welinacatcoon_dye")

	end
	return false
end




local containers = GLOBAL.require("containers")

local old_widgetsetup = containers.widgetsetup
function containers.widgetsetup(container, prefab, data)
	local pref = prefab or container.inst.prefab
	if pref == "welina_catcoon" then
		local t = params[pref]
		if t ~= nil then
			for k, v in pairs(t) do
				container[k] = v
			end
			container:SetNumSlots(#container.widget.slotpos)
		end
	else
		return old_widgetsetup(container, prefab)
	end
end




STRINGS.ACTIONS.RUMMAGE.WELINACAT_CUSTOMIZE = "Fashion Up"
STRINGS.ACTIONS.STORE.WELINACAT_GIVE = "Give Catcoon"


local old_rummage_strfn = GLOBAL.ACTIONS.RUMMAGE.strfn

GLOBAL.ACTIONS.RUMMAGE.strfn = function(act)
	if act.target and act.target.prefab == "welina_catcoon" then
		return "WELINACAT_CUSTOMIZE"
	end
	return old_rummage_strfn and old_rummage_strfn(act) or "RUMMAGE"
end




local old_store_strfn = GLOBAL.ACTIONS.STORE.strfn

GLOBAL.ACTIONS.STORE.strfn = function(act)
	if act.target ~= nil then
        return act.target:HasTag("sinner") and "WELINACAT_GIVE"
	end
	return old_store_strfn and old_store_strfn(act) or "RUMMAGE"
end




AddClassPostConstruct("widgets/containerwidget", function(self, ...)

    local OldFunc = self.Refresh
    self.Refresh = function(self,container, doer, ...)
        local ret = { OldFunc(self,container,doer, ...) }

            if self.container and self.container.prefab == "welina_catcoon" then
                local items = self.container.replica.container:GetItems()
                local hat, collar,dye = items[1], items[2], items[3]
                if self.bganim then


                    self.bganim:SetPosition(50,0)



                    if hat then
                        self.bganim.inst.AnimState:OverrideSkinSymbol("swap_hat", hat.AnimState:GetBuild(), "swap_hat")
                    end
                    if collar then
                        self.bganim.inst.AnimState:OverrideSkinSymbol("swap_welinacollar", "swap_collar_"..collar.prefab:gsub("welina_collar_", ""), "swap_body")
                    end
                    if dye  then 
                        self.bganim.inst.AnimState:SetBuild("welina_catcoon_"..dye.prefab:gsub("welina_catdye_", ""))

                        if dye.prefab:find("inverted") then


                            self.bganim.inst.AnimState:SetSymbolMultColour("swap_hat", 0,0,0,1)
                            self.bganim.inst.AnimState:SetSymbolAddColour("swap_hat", 1,1,1,1)
                            
                            self.bganim.inst.AnimState:SetSymbolMultColour("swap_welinacollar", 0,0,0,1)
                            self.bganim.inst.AnimState:SetSymbolAddColour("swap_welinacollar", 1,1,1,1)
                        end


                    else


                        self.bganim.inst.AnimState:SetSymbolMultColour("swap_hat", 1,1,1,1)
                        self.bganim.inst.AnimState:SetSymbolAddColour("swap_hat", 0,0,0,0)
                        
                        self.bganim.inst.AnimState:SetSymbolMultColour("swap_welinacollar", 1,1,1,1)
                        self.bganim.inst.AnimState:SetSymbolAddColour("swap_welinacollar", 0,0,0,0)


                    end



                end
            end

    
        return unpack(ret)
    end

	local OldFunc = self.OnItemGet
	self.OnItemGet = function(self, data, ...)
		local ret = { OldFunc(self, data, ...) }
        if self and self.container and self.container.prefab == "welina_catcoon" then 
            local items = self.container.replica.container:GetItems()
            local hat, collar, dye = items[1], items[2], items[3]
            if self.bganim then

                if hat then
                    self.bganim.inst.AnimState:OverrideSkinSymbol("swap_hat", hat.AnimState:GetBuild(), "swap_hat")
                end
				if collar then
					self.bganim.inst.AnimState:OverrideSkinSymbol(
					"swap_welinacollar", "swap_collar_"..collar.prefab:gsub("welina_collar_", ""),
						"swap_body"
					)

				end

                TUNING.DYETEST = dye
                if dye  then 
                    self.bganim.inst.AnimState:SetBuild("welina_catcoon_"..dye.prefab:gsub("welina_catdye_", ""))

                    if dye.prefab:find("inverted") then


                        self.bganim.inst.AnimState:SetSymbolMultColour("swap_hat", 0,0,0,1)
                        self.bganim.inst.AnimState:SetSymbolAddColour("swap_hat", 1,1,1,1)
                        
                        self.bganim.inst.AnimState:SetSymbolMultColour("swap_welinacollar", 0,0,0,1)
                        self.bganim.inst.AnimState:SetSymbolAddColour("swap_welinacollar", 1,1,1,1)
                    end


                end

            end
        end

		return unpack(ret)
	end

	local OldFunc = self.OnItemLose
	self.OnItemLose = function(self, data, ...)
		local ret = { OldFunc(self, data, ...) }
		if self and self.container and self.container.prefab == "welina_catcoon"  then
            local items = self.container.replica.container:GetItems()

            
			if self.bganim and data.slot then
				local tileslot = self.inv[data.slot]

                

				if data.slot == 1 then
					self.bganim.inst.AnimState:ClearOverrideSymbol("swap_hat")
				end
				if data.slot == 2 then
					self.bganim.inst.AnimState:ClearOverrideSymbol("swap_welinacollar")
	
				end

                if data.slot == 3 then
                    self.bganim.inst.AnimState:SetSymbolMultColour("swap_hat", 1,1,1,1)
                    self.bganim.inst.AnimState:SetSymbolAddColour("swap_hat", 0,0,0,0)
                    
                    self.bganim.inst.AnimState:SetSymbolMultColour("swap_welinacollar", 1,1,1,1)
                    self.bganim.inst.AnimState:SetSymbolAddColour("swap_welinacollar", 0,0,0,0)

                    self.bganim.inst.AnimState:SetBuild("catcoon_build")
                end

			end
		end

		return unpack(ret)
	end


    



end) ]]



AddClassPostConstruct("widgets/writeablewidget", function(self, ...)
    self.inst:DoTaskInTime(0, function()
		--self.edit_text:SetEditing(false)


        if self.writeable and self.writeable.prefab and self.writeable.prefab == "welina_nametag" then

            
            self.edit_text:SetPosition(-25, 15, 0)
            self.edit_text:SetSize(60)
            
            
            self.edit_text:SetFont(BODYTEXTFONT)
			self.edit_text:SetHAlign(ANCHOR_MIDDLE)
			self.edit_text:SetColour(1, 1, 1, 1)
			self.edit_text.idle_text_color = { 1, 1, 1, 1 }
			self.edit_text.edit_text_color = { 1, 1, 1, 1 } --{1,1,1,1}



    

        end

        
    end)


end)




AddComponentAction("INVENTORY", "equippable", function(inst, doer, actions)

    local equippable = inst.replica.equippable
    if equippable:IsEquipped() then
        if not inst.replica.inventoryitem:IsGrandOwner(doer) then
            table.insert(actions, ACTIONS.DROP)
        end
    end
    
end)


--[[ 
AddComponentAction("EQUIPPED", "complexprojectile", function(inst, doer, target, actions, right)



    print("FART")



    if inst and inst.prefab == "welina_cattoy" then
        if right and not target:HasTag("_combat") then
  
            
            
            table.insert(actions, ACTIONS.TOSS)
            
        end
    end


    
end) ]]












modimport("init/init_all")








if TUNING.WELINA_OSP == 1 then
    local function MayKill(self, amount)
        if self.currenthealth + amount <= 0 then
            return true
        end
    end

    AddComponentPostInit("health", function(self)
        if not TheWorld.ismastersim then
            return
        end

        local _DoDelta = self.DoDelta
        function self:DoDelta(amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb, ...)
            local currentpercent = self:GetPercent()

            if
                MayKill(self, amount)
                and self.inst:HasTag("emocatgirl")
                and currentpercent > TUNING.WELINA_OSP_THRESHOLD
            then
                --self:SetInvincible(true)

                self:SetCurrentHealth(0.015)
                self.inst.sg:GoToState("welina_hiss")
            else
                return _DoDelta(self, amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb, ...)
            end
        end
    end)
end



local eatercomp = require("components/eater")

local OldFunc = eatercomp.PrefersToEat

eatercomp.PrefersToEat = function(self, food, ...)
    local ret = { OldFunc(self, food, ...) }
    if food.prefab == "welina_catnip" and not self.inst:HasTag("emocatgirl") then
        --CW: catnip hack. Hope it doesnt look sussy - _-"
        return false
    end
    return unpack(ret)
end

-- Actions.
local actions = {
    WELINA_PLAY = require("defs/actions/welina_play"),
}

local function AddCharacterActionComplete(actionReq, actiontype, component)
	AddAction(actionReq.ACTION)
	AddStategraphActionHandler("wilson", GLOBAL.ActionHandler(actionReq.ACTION, actionReq.ActionHandler))
	AddStategraphActionHandler(
		"wilson_client",
		GLOBAL.ActionHandler(actionReq.ACTION, actionReq.ClientActionHandler or actionReq.ActionHandler)
	)

	AddComponentAction(actiontype, component, actionReq.ComponentAction)
end

AddCharacterActionComplete(actions.WELINA_PLAY, "SCENE", "inventoryitem")



-- NOTES(02): This will add tag to specified prefabs preventing welina from playing with said prefabs
local prefabstomodify =
{
    "lantern",
    "terrarium",
	"voidcloth_umbrella",
}




if prefabstomodify then
    for _, prefab in pairs(prefabstomodify) do
        AddPrefabPostInit(prefab, function(inst)
            inst:AddTag("notplayable")
        end)
    end
end





GLOBAL.FOODGROUP.WELINAAPPROVED = {
    name = "WELINAAPPROVED",
    types = {
        GLOBAL.FOODTYPE.MEAT,
        GLOBAL.FOODTYPE.VEGGIE,
        GLOBAL.FOODTYPE.INSECT,
        GLOBAL.FOODTYPE.SEEDS,
        GLOBAL.FOODTYPE.GENERIC,
        GLOBAL.FOODTYPE.GOODIES,
        GLOBAL.FOODTYPE.HORRIBLE

    }
}
