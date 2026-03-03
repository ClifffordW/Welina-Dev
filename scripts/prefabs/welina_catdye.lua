local assets = {

 
    Asset( "DYNAMIC_ATLAS", softresolvefilepath("images/inventoryimages/welina_dyes.xml") ),
    Asset( "ATLAS_BUILD", "images/inventoryimages/welina_dyes.xml", 256 ),
	Asset("ANIM", "anim/catcoon_dyes/welina_catcoon_dyetransition.zip")

}


local fmodtable = require("defs.sound.fmodtable_scotchmintz_characters").Track



local function OnIgniteFn(inst)
    inst.SoundEmitter:PlaySound("dontstarve/common/blackpowder_fuse_LP", "hiss")
    DefaultBurnFn(inst)
end

local function OnExtinguishFn(inst)
    inst.SoundEmitter:KillSound("hiss")
    DefaultExtinguishFn(inst)
end

local function OnExplodeFn(inst)
    inst.SoundEmitter:KillSound("hiss")
    SpawnPrefab("explode_small").Transform:SetPosition(inst.Transform:GetWorldPosition())
end

local prefabs = {
    "welina_catdye_smoke",
	 "explode_small",
}

local COLOURS = {
    black = {0, 0, 0, 1},
    inverted = {1, 1, 1, 1},

	catcoon = RGB(137,145,153)
}







--------------------------------------------------------------------------

local function OnEquip(inst, owner)
    if inst and inst:IsValid() then
        inst:DoTaskInTime(0, function()
            -- 1. Check if we actually need to change the build and if FX is already playing
            local current_build = owner.AnimState:GetBuild()
            local target_build = "welina_catcoon_"..inst.colour
            
            -- Only spawn FX if the build is DIFFERENT and the player isn't already smoking
            

            if inst.colour == "catcoon" then
                target_build = "catcoon_build"
            end

            print(inst.colour)
            
            if not owner then return end


            if current_build == target_build then
                return
            end
            owner.overridebuild = target_build

            if owner.components.container then
                if owner.components.container:IsOpen() then
                    owner.components.container:Close()
                    
                end
                owner.components.container:CanOpen(false)
            end
            
            
            if current_build ~= target_build and not (owner.welina_dye_fx and owner.welina_dye_fx:IsValid()) then
                local fx = SpawnPrefab("welina_catdye_smoke")
                if fx then
                    fx.entity:SetParent(owner.entity)
                    print(COLOURS[inst.colour])
                    fx.AnimState:SetMultColour(unpack(COLOURS[inst.colour] or {1, 1, 1, 1}))
                    fx.AnimState:SetScale(1.2, 1.2)
                    
                    owner.welina_dye_fx = fx
        
                end
            end
            

            if inst.pending_skin_task then inst.pending_skin_task:Cancel() end
            inst.pending_skin_task = owner:DoTaskInTime(0.575, function()
                if owner:IsValid() and inst:IsValid() and inst.components.equippable:IsEquipped() then

                    if owner.components.container then
            
                        owner.components.container:CanOpen(true)
                    end

                    if inst.colour == "inverted" then

                        owner.AnimState:SetSymbolMultColour("swap_hat", 0,0,0,1)
                        owner.AnimState:SetSymbolAddColour("swap_hat", 1,1,1,1)
                        
                        owner.AnimState:SetSymbolMultColour("swap_welinacollar", 0,0,0,1)
                        owner.AnimState:SetSymbolAddColour("swap_welinacollar", 1,1,1,1)

                    else


            

                    

                        owner.AnimState:SetSymbolMultColour("swap_hat", 1,1,1,1)
                        owner.AnimState:SetSymbolAddColour("swap_hat", 0,0,0,0)

                        owner.AnimState:SetSymbolMultColour("swap_welinacollar", 1,1,1,1)
                        owner.AnimState:SetSymbolAddColour("swap_welinacollar", 0,0,0,0)


            


            
                    end

                    owner.AnimState:SetBuild(target_build)
                end
                inst.pending_skin_task = nil
            end)
        end)
    end
end

local function OnUnequip(inst, owner)

    if not owner then return end

    if inst.pending_skin_task then
        inst.pending_skin_task:Cancel()
        inst.pending_skin_task = nil
    end

    if owner.components.container then
        if owner.components.container:IsOpen() then
            owner.components.container:Close()
            
        end
        owner.components.container:CanOpen(false)
    end



        if owner:IsValid() and not (owner.welina_dye_fx and owner.welina_dye_fx:IsValid()) then
            local fx = SpawnPrefab("welina_catdye_smoke")
            if fx then
                fx.entity:SetParent(owner.entity)
                fx.AnimState:SetMultColour(unpack(COLOURS.default or {1,1,1,1}))
                fx.AnimState:SetScale(1.2, 1.2)
                
                owner.welina_dye_fx = fx
                fx:ListenForEvent("onremove", function() 
                    if owner:IsValid() then owner.welina_dye_fx = nil end 
                end)
            end
        end
    owner:DoTaskInTime(0.575, function()
        if owner:IsValid() then

            if owner.components.container then
     
                owner.components.container:CanOpen(true)
            end

            

            owner.AnimState:SetSymbolMultColour("swap_hat", 1,1,1,1)
            owner.AnimState:SetSymbolAddColour("swap_hat", 0,0,0,0)

            owner.AnimState:SetSymbolMultColour("swap_welinacollar", 1,1,1,1)
            owner.AnimState:SetSymbolAddColour("swap_welinacollar", 0,0,0,0)


            owner.AnimState:SetBuild("catcoon_build")
        end
    end)
end

--------------------------------------------------------------------------

local function commonfn(colour_name, overrideanim)
    local inst = CreateEntity()


    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
	inst.entity:AddSoundEmitter()

	STRINGS.NAMES["WELINA_CATDYE_"..colour_name:upper()] = colour_name:sub(1,1):upper() .. colour_name:sub(2) .. " Dye"



    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("welina_catdye")
    inst.AnimState:SetBuild("welina_catdye")
    inst.AnimState:PlayAnimation("idle_"..(overrideanim or colour_name))
	inst.Transform:SetPosition(0,9,0)

    inst:AddTag("welinacatcoon_dye")
    
    -- Dedicated slot tag (if you have a custom slot)
    -- inst:AddTag("nopunch") 

    inst.pickupsound = "welina_paintcan"

    MakeInventoryFloatable(inst, "small", 0.1, 1.12)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst.colour = colour_name

    inst:AddComponent("inspectable")
    
    inst:AddComponent("inventoryitem")
	
	if not TheSim:AtlasContains(softresolvefilepath("images/inventoryimages/welina_dyes.xml"), "welina_catdye_"..colour_name..".tex") then
		inst.components.inventoryitem.imagename = "welina_catdye_black"
		inst.components.inventoryitem.atlasname = softresolvefilepath("images/inventoryimages/welina_dyes.xml")
	end



    MakeMediumBurnable(inst, 3 + math.random() * 3)
    MakeSmallPropagator(inst)
    --V2C: Remove default OnBurnt handler, as it conflicts with
    --explosive component's OnBurnt handler for removing itself
    inst.components.burnable:SetOnBurntFn(nil)
    inst.components.burnable:SetOnIgniteFn(OnIgniteFn)
    inst.components.burnable:SetOnExtinguishFn(OnExtinguishFn)

    inst:AddComponent("explosive")
    inst.components.explosive:SetOnExplodeFn(OnExplodeFn)
    inst.components.explosive.explosivedamage = TUNING.GUNPOWDER_DAMAGE






    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.WELINA_DYE or EQUIPSLOTS.BODY
    inst.components.equippable:SetOnEquip(OnEquip)
    --inst.components.equippable:SetOnUnequip(OnUnequip)
    inst.components.equippable.restrictedtag = "sinner"

    MakeHauntableLaunch(inst)

    return inst
end

-- FX Prefab
local function smokefn()
    local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
	inst.entity:AddSoundEmitter()

    inst:AddTag("FX")
    inst:AddTag("NOCLIP")

    inst.AnimState:SetBuild("welina_catcoon_dyetransition")
    inst.AnimState:SetBank("welina_catcoon_dyetransition")
    inst.AnimState:PlayAnimation("transition")
	inst.AnimState:HideSymbol("mask")
	inst.AnimState:HideSymbol("streaks")
	
	inst.AnimState:SetDeltaTimeMultiplier(0)
    inst:Hide()

    inst:DoTaskInTime(0.575, function()


        inst:Show()
        inst.AnimState:SetDeltaTimeMultiplier(1.2)
    end)

    inst.SoundEmitter:PlaySound(fmodtable.sfx.spray,"soundfx")




    inst.entity:SetPristine()
    if not TheWorld.ismastersim then return inst end

    inst.persists = false
    inst:ListenForEvent("animover", inst.Remove)

    return inst
end

--------------------------------------------------------------------------

-- Helper to create the specific color functions
local function MakeDye(name, overrideanim)
    return Prefab("welina_catdye_"..name, function() return  overrideanim and commonfn(name,overrideanim) or commonfn(name) end, assets, prefabs)
end

return MakeDye("black"),
       MakeDye("inverted"),
       MakeDye("catcoon", "black"),
       Prefab("welina_catdye_smoke", smokefn, assets)