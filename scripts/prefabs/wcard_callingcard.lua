local Assets = {
	Asset("ANIM", "anim/wcard_callingcard.zip"),

	Asset("ATLAS", "images/inventoryimages/wcard_items.xml"),
	Asset("IMAGE", "images/inventoryimages/wcard_items.tex"),
}

-- Most code for socketing stuff into the hat was taken from the wrekr character mod, i got permission from the dev, thanks Nik - mentos

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
		wcard_callingcard_black = true,
		wcard_callingcard_red = true,
		wcard_callingcard_white = true,
		wcard_callingcard_yellow = true,
	}



	--local cur_fuel = inst.components.fueled:GetPercent()
	local newcard = SpawnPrefab("wcard_callingcard_" .. inst.featherc)
	local currentslot = inst.components.inventoryitem:GetSlotNum()
	local v_pos = newcard:GetPosition()
	newcard.components.inventory:GiveItem(item, nil, v_pos, true)
	if inst.components.inventoryitem.owner == nil then


		newcard.Transform:SetPosition(inst:GetPosition():Get())
	else

		giver.components.inventory:DropItem(inst)
		giver.components.inventory:GiveItem(newcard, currentslot, nil, true)
	end




	--if cur_fuel then
	--	newhat.components.fueled:SetPercent(cur_fuel)
	--end

	inst.components.inventoryitem.imagename = inst.featherc and "wcard_callingcard_" .. inst.featherc or "wcard_callingcard"
	local cardanim = inst.featherc and "idle_" .. inst.featherc or "idle"
	inst.AnimState:PlayAnimation(cardanim)


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
	inst.AnimState:SetBank("wcard_callingcard")
	-- This is the name of your compiled*.zip file.
	inst.AnimState:SetBuild("wcard_callingcard")
	-- This is the animation name while item is on the ground.

	local animtype = type == "" and "idle" or "idle_"
	inst.AnimState:PlayAnimation(animtype .. "" .. type)

	--[[ TAGS ]]


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
	-- inst:AddComponent("tradable")

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.imagename = type == "" and "wcard_callingcard" or "wcard_callingcard_" .. type
	inst.components.inventoryitem.atlasname = "images/inventoryimages/wcard_items.xml"

	inst:AddComponent("trader")
	inst.components.trader:SetAcceptTest(ShouldAcceptItem)
	inst.components.trader.onaccept = OnGetItemFromPlayer
	inst.components.trader.onrefuse = OnRefuseItem

	inst.components.trader.deleteitemonaccept = true

	inst:AddComponent("inventory")

	--inst:AddComponent("useableitem")
	--inst.components.useableitem:SetOnUseFn(bush_onuse)


	MakeHauntableLaunch(inst)

	return inst
end
















local function none() --If this seems dumb and unnecessary it's because it is. But it makes the game happy.
	local inst = commonfn("")
		
	--inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end


	return inst
end


local function black()
	local inst = commonfn("black")

	inst:AddTag("wcard_blacktele")
	

	if not TheWorld.ismastersim then
		return inst
	end


	inst.featherc = "black"
	inst._onhit = function(owner, data) OnHitRed(owner, data, inst) end

	return inst
end


local function red()
	local inst = commonfn("red")
	
	inst:AddTag("wcard_redtele")

	if not TheWorld.ismastersim then
		return inst
	end

	

	inst.featherc = "red"

	inst._onhit = function(owner, data) OnHitRed(owner, data, inst) end

	return inst
end


local function yellow()
	local inst = commonfn("yellow")
	
	inst:AddTag("wcard_yellowtele")
	if not TheWorld.ismastersim then
		return inst
	end

	inst.featherc = "yellow"
	inst._onhit = function(owner, data) OnHitRed(owner, data, inst) end

	return inst
end


local function white()
	local inst = commonfn("white")
	
	inst:AddTag("wcard_whitetele")

	if not TheWorld.ismastersim then
		return inst
	end


	inst.featherc = "white"
	inst._onhit = function(owner, data) OnHitRed(owner, data, inst) end

	return inst
end





return Prefab("wcard_callingcard", none, Assets),
	Prefab("wcard_callingcard_black", black, Assets, prefabs),
	Prefab("wcard_callingcard_red", red, Assets, prefabs),
	Prefab("wcard_callingcard_yellow", yellow, Assets, prefabs),
	Prefab("wcard_callingcard_white", white, Assets, prefabs)
--My hope this code is so awful im never allowed to write code for socketed items again.
