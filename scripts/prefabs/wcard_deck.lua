local assets =
{
    Asset("ANIM", "anim/wcard_deck.zip"),
    Asset("ANIM", "anim/lavaarena_portal_fx.zip"),
}

local prefabs =

{
    "lavaarena_creature_teleport_medium_fx",
    "lavaarena_portal_player_fx",

}


local appear_quotes =
{
    "Huuzzaaahh~",
    "Aha-!",
    "Missed me?",
	"Surprise!",
	"Hellooo~",
	"Presto!",
	"Dojyaaan~",
	"Abracadabra!",
	"Ta-daaa!",
	"Voilà!",
	"Alakazam",
	
}
local timing_reappear = TUNING.WILDCARD_PORTAL_FX == "maxwell_smoke" and 0.2 or 0.3
local timing = TUNING.WILDCARD_PORTAL_FX == "maxwell_smoke" and 0.2 or 0.5


local function StopInvisible(inst, reader)
    local appear_quote = appear_quotes[math.random(1,#appear_quotes)]
    
    
    
    local fx = SpawnPrefab(TUNING.WILDCARD_PORTAL_FX)
    fx.Transform:SetPosition(reader.Transform:GetWorldPosition())
    reader.SoundEmitter:SetMute(false) 
    reader:DoTaskInTime(timing_reappear, function ()
        
    
        reader:Show() 
        reader.DynamicShadow:Enable(true)

        reader.MiniMapEntity:SetEnabled(true)
        reader:RemoveTag('notarget') 
        reader:RemoveTag('noplayerindicator') 
        if reader.prefab ~= 'wes' then reader:RemoveTag('mime') end 
        
        reader.components.locomotor:SetTriggersCreep(not reader:HasTag('spiderwhisperer')) 
        ChangeToCharacterPhysics(reader)
        reader.components.grue:RemoveImmunity("invincible")



        reader.components.talker:Say(appear_quote)

        reader:RemoveEventCallback("death", StopInvisible)
    end)

end

local function onread(inst, reader)
    local disappear_time = 0.5
    
    reader.SoundEmitter:PlaySound("wildcard/characters/wildcard/snap")
    local fx = SpawnPrefab(TUNING.WILDCARD_PORTAL_FX)
    fx.Transform:SetPosition(reader.Transform:GetWorldPosition())
    
    reader:DoTaskInTime(timing, function ()
        

    
        reader.components.grue:AddImmunity("invincible")
        reader:Hide() 
        reader.DynamicShadow:Enable(false)
        reader.MiniMapEntity:SetEnabled(false) 
        reader:AddTag('notarget') 
        reader:AddTag('noplayerindicator') 
        reader:AddTag('mime') 
        reader.SoundEmitter:SetMute(true) 
        reader.components.locomotor:SetTriggersCreep(false) 
        RemovePhysicsColliders(reader)
    end)
    






    local task = reader:DoTaskInTime(disappear_time + 9, function()

        if reader:HasTag("playerghost") then return end
        StopInvisible(inst,reader) 

    end)
    reader:ListenForEvent("death", function() 
        StopInvisible(inst, reader)
        if task ~= nil then
            task:Cancel()
        end
    end)



    

    return true



end

local function onread_peruse(inst, reader)

    reader.components.talker:Say(GetString(reader, "ANNOUNCE_READ_BOOK","BOOK_GARDENING"))
    return true
end



local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
    inst.entity:AddSoundEmitter()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("wcard_deck")
    inst.AnimState:SetBuild("wcard_deck")
    inst.AnimState:PlayAnimation("idle_black")


    --inst:AddTag("molebait")



    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    --inst:AddComponent("stackable")
    --inst.components.stackable.maxsize = TUNING.STACK_SIZE_LARGEITEM
    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.atlasname = "images/inventoryimages/wcard_items.xml"
	inst.components.inventoryitem.imagename = "wcard_deck"
    --inst.components.inventoryitem:SetSinks(true)


    inst:AddComponent("book")
    inst.components.book:SetOnRead(onread)
    inst.components.book:SetOnPeruse(onread_peruse)
    inst.components.book:SetReadSanity(-15)
    inst.components.book:SetPeruseSanity(15)


    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(4)
    inst.components.finiteuses:SetUses(4)
    inst.components.finiteuses:SetOnFinished(inst.Remove)


    inst:AddComponent("fuel")
    inst.components.fuel.fuelvalue = TUNING.SMALL_FUEL


    MakeSmallBurnable(inst, TUNING.MED_BURNTIME)
    MakeSmallPropagator(inst)


    MakeHauntableLaunch(inst)


    

    return inst
end

return Prefab("wcard_deck", fn, assets, prefabs)