local Assets = {
	Asset("ANIM", "anim/wcard_tophat.zip"),

	Asset("ATLAS", "images/inventoryimages/wcard_items.xml"),
	Asset("IMAGE", "images/inventoryimages/wcard_items.tex"),
}

-- Most code for socketing stuff into the hat was taken from the wrekr character mod, i got permission from the dev, thanks Nik - mentos

local function bush_onuse(inst)
	local owner = inst.components.inventoryitem.owner
	if owner then
		owner.sg:GoToState("hide")
	end
	if inst.featherc and inst.prefab == "wcard_tophat_"..inst.featherc then
		inst:DoTaskInTime(0.45, function()
			
			
			local function GetClosestInstWithTag(tag, notag, maytag, inst, radius)
				local x, y, z = inst.Transform:GetWorldPosition()
				local ents = TheSim:FindEntities(x, y, z, radius, type(tag) == "string" and { tag } or tag, type(notag) == "string" and { notag } or notag, type(maytag) == "string" and { maytag } or maytag)
				return ents[1] ~= inst and ents[1] or ents[2]
			end
			
			local teleport_item = GetClosestInstWithTag("wcard_"..inst.featherc.."tele" , "INLIMBO", nil ,inst, 2000)




			

			if teleport_item  and owner then
				
				local teleportowner = teleport_item.components.inventoryitem:GetGrandOwner()

				if teleportowner and teleportowner:HasTag("chest") then
					inst:DoTaskInTime(0.1, function ()
						
				
						teleportowner.AnimState:PlayAnimation("open")
						teleportowner.SoundEmitter:PlaySound("dontstarve/wilson/chest_open")
						teleportowner.AnimState:PushAnimation("close")
						owner.components.talker:Say("You cannot contain me, container!")
					end)

				end

				if teleport_item and owner.components.sanity:GetPercent() < 0.26  then
					owner.components.talker:Say("My mind is not in good shape for any tricks, darling.")
					return
	
	

					--owner.components.talker:Say("Hey. I think that "..teleportowner.name.." may want you inside his pocket dimension")
				elseif teleport_item and teleportowner and  teleportowner:HasTag("structure") then
					owner.components.talker:Say("I sense a calling card but... it seems to be locked away somewhere.")
					return
					
				
				end


				

				local fuel_c = inst.components.fueled:GetPercent()

				local x, y, z = teleport_item.Transform:GetWorldPosition()

				local spawnfx = SpawnPrefab("maxwell_smoke")
				local spawnfx2 = SpawnPrefab("maxwell_smoke")

				spawnfx.Transform:SetPosition(owner.Transform:GetWorldPosition())
				spawnfx.Transform:SetScale(1.2, 1.2, 1.2)

				spawnfx2.Transform:SetPosition(x, y, z)
				spawnfx2.Transform:SetScale(1.2, 1.2, 1.2)

				inst.SoundEmitter:PlaySound("dontstarve/maxwell/disappear")


				owner.components.sanity:DoDelta(-10)

				inst:DoTaskInTime(0.1, function()
					owner.Transform:SetPosition(x, y, z)
					owner.sg:GoToState("jumpout")

					teleport_item:Remove()
					owner.components.talker:Say("Huzzah!")
				end)

				
			--else
				--owner.components.talker:Say("There's no cards callin', darlin'.")
			end
		end)
	end
end

local function bush_custom_init(inst)
	inst:AddTag("hide")
end

local function stopusingbush(inst, data)
	local hat = inst.components.inventory ~= nil and inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HEAD) or nil
	if hat ~= nil and data.statename ~= "hide" then
		hat.components.useableitem:StopUsingItem()
	end
end



local function OnEquip(inst, owner)
	-- This will override symbol "swap_body" of the equipping player with your custom build symbol.
	-- Here's what this function is overriding:
	-- owner.AnimState:OverrideSymbol(Player's_symbol, Your_build(*.zip_filename), Symbol_from_your_build(name_of_subfolder_with_art)

	local hatcolor

	inst.hatcolor = inst.featherc and "swap_hat_" .. inst.featherc or "swap_hat"

	owner.AnimState:OverrideSymbol("swap_hat", "wcard_tophat", inst.hatcolor)



	-- Show/Hide some of the layers of the character while equipping the hat.
	owner.AnimState:Show("HAT")
	owner.AnimState:Show("HAIR_HAT")
	owner.AnimState:Hide("HAIR_NOHAT")
	owner.AnimState:Hide("HAIR")

	inst:ListenForEvent("newstate", stopusingbush, owner)



	-- If we should lose usage percent over time while wearing the hat - start dropping the percentage when we're equipping the hat.
	if inst.components.fueled ~= nil then
		inst.components.fueled:StartConsuming()
	end
end

local function OnUnequip(inst, owner)
	-- Clear the hat symbol from wearer's head.
	owner.AnimState:ClearOverrideSymbol("swap_hat")

	-- Show/Hide some of the layers of the character while unequipping the hat.
	owner.AnimState:Hide("HAT")
	owner.AnimState:Hide("HAIR_HAT")
	owner.AnimState:Show("HAIR_NOHAT")
	owner.AnimState:Show("HAIR")

	inst:RemoveEventCallback("newstate", stopusingbush, owner)

	-- If the unequipping guy is the player, do some additional stuff.


	-- Stop consuming usage percent if the hat is not equipped.
	if inst.components.fueled ~= nil then
		inst.components.fueled:StopConsuming()
	end
end











local function ShouldAcceptItem(inst, item)
	if item.prefab == "feather_crow"       -- black
		or item.prefab == "feather_robin"  -- red
		or item.prefab == "feather_robin_winter" -- white
		or item.prefab == "feather_canary" then -- yellow
		if  inst.components.fueled then
			inst.components.inventory:DropEverything()
			
		end
		print("DROPPED ALL")
		return true
	end
end

local function OnRefuseItem(inst, giver, item)
	giver.components.talker:Say(GetActionFailString(giver, "GIVE", "GENERIC"))
end


local function OnGetItemFromPlayer(inst, giver, item)
	inst.fxcolour = { 255 / 255, 255 / 255, 255 / 255 }

	if item.prefab == "feather_crow" then
		inst.featherc = "black"
	elseif item.prefab == "feather_robin" then
		inst.featherc = "red"
	elseif item.prefab == "feather_robin_winter" then
		inst.featherc = "white"
	elseif item.prefab == "feather_canary" then
		inst.featherc = "yellow"
	end

	local feathersdrop =
	{
		wcard_tophat_black = "feather_crow",
		wcard_tophat_red = "feather_robin",
		wcard_tophat_white = "feather_robin_winter",
		wcard_tophat_yellow = "feather_canary",
	}

	local feathers =
	{
		wcard_tophat_black = true,
		wcard_tophat_red = true,
		wcard_tophat_white = true,
		wcard_tophat_yellow = true,
	}



	local cur_fuel = inst.components.fueled:GetPercent()
	local newhat = SpawnPrefab("wcard_tophat_" .. inst.featherc)
	local currentslot = inst.components.inventoryitem:GetSlotNum()
	local v_pos = newhat:GetPosition()
	newhat.components.inventory:GiveItem(item, nil, v_pos, true)
	if inst.components.equippable:IsEquipped() then


		giver.components.inventory:Equip(newhat)
	elseif inst.components.inventoryitem.owner == nil then


		newhat.Transform:SetPosition(inst:GetPosition():Get())
	else

		giver.components.inventory:DropItem(inst)
		giver.components.inventory:GiveItem(newhat, currentslot, nil, true)
	end




	if cur_fuel then
		newhat.components.fueled:SetPercent(cur_fuel)
	end

	inst.components.inventoryitem.imagename = inst.featherc and "wcard_tophat_" .. inst.featherc or "wcard_tophat"
	local hatanim = inst.featherc and "idle_" .. inst.featherc or "idle"
	inst.AnimState:PlayAnimation(hatanim)


	giver.SoundEmitter:PlaySound("dontstarve/common/telebase_gemplace")
	inst:Remove()
end


local function commonfn(type)
	-- Functions which are performed both on Client and Server start here.
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddNetwork()
	inst.entity:AddSoundEmitter()

	MakeInventoryPhysics(inst)

	-- Add minimap icon. Remember about its XML in modmain.lua!
	--local minimap = inst.entity:AddMiniMapEntity()
	--minimap:SetIcon("custom_hat.tex")

	--[[ ANIMSTATE ]]
	--
	-- This is the name visible on the top of hierarchy in Spriter.
	inst.AnimState:SetBank("wcard_tophat")
	-- This is the name of your compiled*.zip file.
	inst.AnimState:SetBuild("wcard_tophat")
	-- This is the animation name while item is on the ground.

	local animtype = type == "" and "idle" or "idle_"
	inst.AnimState:PlayAnimation(animtype .. "" .. type)

	--[[ TAGS ]]
	--
	--inst:AddTag("custom_hat")
	-- Waterproofer (from waterproofer component) - this tag can be removed, but it's here just in case, to make the game run better.
	inst:AddTag("waterproofer")

	MakeInventoryFloatable(inst, "small", 0.1, 1.12)

	inst.entity:SetPristine()

	--inst.foleysound = "dontstarve/movement/foley/bushhat"

	if not TheWorld.ismastersim then
		-- If we're not the host - stop performing further functions.
		-- Only server functions below.
		return inst
	end

	inst:AddComponent("inspectable")

	-- Allow "trading" the hat - used for giving the hat to Pigmen.
	inst:AddComponent("tradable")

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.imagename = type == "" and "wcard_tophat" or "wcard_tophat_" .. type
	inst.components.inventoryitem.atlasname = "images/inventoryimages/wcard_items.xml"

	inst:AddComponent("equippable")
	inst.components.equippable.equipslot = EQUIPSLOTS.HEAD
	inst.components.equippable:SetOnEquip(OnEquip)
	inst.components.equippable:SetOnUnequip(OnUnequip)
	inst.components.equippable.dapperness = TUNING.DAPPERNESS_TINY
	inst.components.equippable.restrictedtag = "horrorbunnygirl"

	inst:AddComponent("trader")
	inst.components.trader:SetAcceptTest(ShouldAcceptItem)
	inst.components.trader.onaccept = OnGetItemFromPlayer
	inst.components.trader.onrefuse = OnRefuseItem

	inst.components.trader.deleteitemonaccept = true

	inst:AddComponent("inventory")

	inst:AddComponent("useableitem")
	inst.components.useableitem:SetOnUseFn(bush_onuse)


	inst:AddComponent("waterproofer")
	-- Our hat shall grant 20% water resistance to the wearer!
	inst.components.waterproofer:SetEffectiveness(0.2)

	MakeHauntableLaunch(inst)

	return inst
end
















local function none() --If this seems dumb and unnecessary it's because it is. But it makes the game happy.
	local inst = commonfn("")
		
	--inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end

	inst:AddComponent("fueled")
	inst.components.fueled.fueltype = FUELTYPE.NIGHTMARE
	inst.components.fueled:InitializeFuelLevel(480 * 2)
	inst.components.fueled.rate = 0.3
	inst.components.fueled.accepting = true

	inst.components.fueled:SetDepletedFn(inst.Remove)
	

	inst.components.waterproofer:SetEffectiveness(0.2)
	

	inst.components.equippable:SetOnEquip(OnEquip)
	inst.components.equippable:SetOnUnequip(OnUnequip)
	inst.components.equippable.dapperness = TUNING.DAPPERNESS_TINY
	inst.components.equippable.restrictedtag = "horrorbunnygirl"

	return inst
end


local function black()
	local inst = commonfn("black")

	inst:AddTag("wdcard_blacktele")

	if not TheWorld.ismastersim then
		return inst
	end

	inst:AddComponent("fueled")
	inst.components.fueled.fueltype = FUELTYPE.NIGHTMARE
	inst.components.fueled:InitializeFuelLevel(480 * 2)
	inst.components.fueled.rate = 0.3
	inst.components.fueled.accepting = true

	inst.components.fueled:SetDepletedFn(inst.Remove)
	
	
	inst.components.waterproofer:SetEffectiveness(0.2)


	--inst:AddComponent("insulator")
	--inst.components.insulator:SetInsulation(TUNING.INSULATION_SMALL)
	--inst.components.insulator:SetSummer()

	inst.components.equippable:SetOnEquip(OnEquip)
	inst.components.equippable:SetOnUnequip(OnUnequip)
	inst.components.equippable.dapperness = TUNING.DAPPERNESS_TINY
	inst.components.equippable.walkspeedmult = 1.10
	inst.components.equippable.restrictedtag = "horrorbunnygirl"


	inst.featherc = "black"
	inst._onhit = function(owner, data) OnHitRed(owner, data, inst) end

	return inst
end


local function red()
	local inst = commonfn("red")
	

	if not TheWorld.ismastersim then
		return inst
	end

	inst:AddComponent("fueled")
	inst.components.fueled.fueltype = FUELTYPE.NIGHTMARE
	inst.components.fueled:InitializeFuelLevel(480 * 2)
	inst.components.fueled.rate = 0.3
	inst.components.fueled.accepting = true

	inst.components.fueled:SetDepletedFn(inst.Remove)
	
	
	inst.components.waterproofer:SetEffectiveness(0.2)


	inst:AddComponent("insulator")
	inst.components.insulator:SetInsulation(TUNING.INSULATION_MED)
	inst.components.insulator:SetSummer()

	inst.components.equippable:SetOnEquip(OnEquip)
	inst.components.equippable:SetOnUnequip(OnUnequip)
	inst.components.equippable.dapperness = TUNING.DAPPERNESS_TINY
	inst.components.equippable.restrictedtag = "horrorbunnygirl"
	

	inst.featherc = "red"

	inst._onhit = function(owner, data) OnHitRed(owner, data, inst) end

	return inst
end


local function yellow()
	local inst = commonfn("yellow")
	

	if not TheWorld.ismastersim then
		return inst
	end

	inst:AddComponent("fueled")
	inst.components.fueled.fueltype = FUELTYPE.NIGHTMARE
	inst.components.fueled:InitializeFuelLevel(480 * 2)
	inst.components.fueled.rate = 0.3
	inst.components.fueled.accepting = true

	inst.components.fueled:SetDepletedFn(inst.Remove)
	
	
	inst.components.waterproofer:SetEffectiveness(0.5)


	--inst:AddComponent("insulator")
	--inst.components.insulator:SetInsulation(TUNING.INSULATION_SMALL)
	--inst.components.insulator:SetSummer()

	inst.components.equippable:SetOnEquip(OnEquip)
	inst.components.equippable:SetOnUnequip(OnUnequip)
	inst.components.equippable.dapperness = TUNING.DAPPERNESS_TINY
	inst.components.equippable.insulated = true
	inst.components.equippable.restrictedtag = "horrorbunnygirl"


	inst.featherc = "yellow"
	inst._onhit = function(owner, data) OnHitRed(owner, data, inst) end

	return inst
end


local function white()
	local inst = commonfn("white")
	

	if not TheWorld.ismastersim then
		return inst
	end

	inst:AddComponent("fueled")
	inst.components.fueled.fueltype = FUELTYPE.NIGHTMARE
	inst.components.fueled:InitializeFuelLevel(480 * 2)
	inst.components.fueled.rate = 0.3
	inst.components.fueled.accepting = true

	inst.components.fueled:SetDepletedFn(inst.Remove)
	

	inst.components.waterproofer:SetEffectiveness(0.2)


	inst:AddComponent("insulator")
	inst.components.insulator:SetInsulation(TUNING.INSULATION_MED)
	inst.components.insulator:SetWinter()

	inst.components.equippable:SetOnEquip(OnEquip)
	inst.components.equippable:SetOnUnequip(OnUnequip)
	inst.components.equippable.dapperness = TUNING.DAPPERNESS_TINY
	inst.components.equippable.restrictedtag = "horrorbunnygirl"


	inst.featherc = "white"
	inst._onhit = function(owner, data) OnHitRed(owner, data, inst) end

	return inst
end





return Prefab("wcard_tophat", none, Assets),
	Prefab("wcard_tophat_black", black, Assets, prefabs),
	Prefab("wcard_tophat_red", red, Assets, prefabs),
	Prefab("wcard_tophat_yellow", yellow, Assets, prefabs),
	Prefab("wcard_tophat_white", white, Assets, prefabs)
--My hope this code is so awful im never allowed to write code for socketed items again.
