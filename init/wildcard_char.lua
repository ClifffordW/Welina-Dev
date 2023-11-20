PrefabFiles = {
	"wildcard",
	"wildcard_skins",
    "wcard_itemskins",
}



--[[
KU_IDs_lookups =
{
    

    KU_csyO78zI = true,
    KU_7neIJbcP = true,
  
    

}





KU = TheNet:GetUserID() 

if KU_IDs_lookups[KU] then
    AddCharSkilltree("wildcard")
end
--]]

AddCharacter("wildcard", "Wildcard", "female", "The Joker", "Care for a game, darling?", "What Wildcard believes humans imitating bunnies wear.", "wildcard", "wildcard", "Grim", false)
CharacterAbillity("wildcard", "Monster, Literally and Metaphorically", "Frail and \"Weak\"", "Nightmare Addict")
AddCharacterSkin("wildcard", "ms_wildcard_goth", "The Rebel", "Not a common sight for Wildcard to not wear a bunny suit.", "It's time to put you to rest, darling.", true, true, false)
AddCharacterSkin("wildcard", "ms_wildcard_dealer", "The Croupier", "Wildcard loves it when the stakes are high.", "It's a game everyone thinks they can play, darling.", true, true, false)

AddSkinMode("wildcard", "insane_skin", true)
AddSkinMode("wildcard", "winter_skin", true)








local general_scripts = require("play_generalscripts")

STRINGS.STAGEACTOR.WILDCARD1 = {
    "Ahem-",
    "A visitor? Hmm… Indeed, I have slept long enough.",
	"The kingdom of heaven has long since forgotten my name",
	"and I am EAGER to make them remember.",
	"However, the blood of Minos stains your hands, and I must admit…",
	"I'm curious about your skills, Weapon.",
	"And so, before I tear down the cities and CRUSH the armies of heaven…",
	"You shall do as an appetizer.",
	"Come forth, Child of Man… And DIE.",	
}


general_scripts.WILDCARD1 = {
   cast = { "wildcard" },
   lines = {
      {roles = {"wildcard"}, duration = 2.0, line = STRINGS.STAGEACTOR.WILDCARD1[1]},
  	  {roles = {"wildcard"}, duration = 4.0, line = STRINGS.STAGEACTOR.WILDCARD1[2]},
	  {roles = {"wildcard"}, duration = 4.0, line = STRINGS.STAGEACTOR.WILDCARD1[3]},
	  {roles = {"wildcard"}, duration = 4.0, line = STRINGS.STAGEACTOR.WILDCARD1[4]},
	 -- {roles = {"wildcard"}, duration = 4.5, anim = { "emote_pre_sit3", "emote_loop_sit3"}, animtype="loop"},
	  {roles = {"wildcard"}, duration = 4.0, line = STRINGS.STAGEACTOR.WILDCARD1[5]},
	  {roles = {"wildcard"}, duration = 4.0, line = STRINGS.STAGEACTOR.WILDCARD1[6]},
	  {roles = {"wildcard"}, duration = 4.0, line = STRINGS.STAGEACTOR.WILDCARD1[7]},
	  {roles = {"wildcard"}, duration = 4.0, line = STRINGS.STAGEACTOR.WILDCARD1[8]},
	  {roles = {"wildcard"}, duration = 3.0, line = STRINGS.STAGEACTOR.WILDCARD1[9]},

	  --{roles = {"wildcard"}, duration = 4.0, anim={"emoteXL_pre_dance0","emoteXL_loop_dance0"}, animtype="loop"},
    }
}


GLOBAL.FOODTYPE.WILDCARD_EDIBLE = "WILDCARD_EDIBLE"

--[[
GLOBAL.FOODGROUP.WILDCARDDIET = {
    name = "WILDCARDDIET",
    types = {
		GLOBAL.FOODTYPE.WILDCARD_EDIBLE
    }
}
--]]

local CAN_ONLY_EAT = {
	"carrot",
	"carrot_cooked",
	"nightmarepie",
	"nightmarepie_spice_garlic",
	"nightmarepie_spice_chili",
	"nightmarepie_spice_sugar",
	"nightmarepie_spice_salt",
	"petals_evil",
}

if TUNING.WILDCARD_DIET == 1 then

for k,v in pairs(CAN_ONLY_EAT) do
	AddPrefabPostInit(v, function(inst)
		inst:AddTag("horrorbunnygirl")
	end)
end


AddPrefabPostInit("nightmarefuel", function(inst)

	inst:AddTag("horrorbunnygirl")
	--inst:AddTag("rechargeable")

    if not GLOBAL.TheWorld.ismastersim then
        return inst
    end

    if inst.components.edible == nil then
        inst:AddComponent("edible")        
    end
	
	--if inst.components.rechargeable == nil then
	--inst:AddComponent("rechargeable")
	--end
	
    --inst.components.rechargeable:SetOnChargedFn(OnCharged)

    local e = inst.components.edible
    e.foodtype = "WILDCARD_EDIBLE"
    e.healthvalue = 5
    e.hungervalue = 20
    e.sanityvalue = -5
    
end)

AddPrefabPostInit("horrorfuel", function(inst)

	inst:AddTag("horrorbunnygirl")

    if not GLOBAL.TheWorld.ismastersim then
        return inst
    end

    if inst.components.edible == nil then
        inst:AddComponent("edible")        
    end

    local e = inst.components.edible
    e.foodtype = "WILDCARD_EDIBLE"
    e.healthvalue = 20
    e.hungervalue = 10
    e.sanityvalue = -10
    
end)


end

--[[
AddPrefabPostInit("terrorbeak", function(inst)

   if not GLOBAL.TheWorld.ismastersim then
        return inst
    end

inst.components.lootdropper:AddChanceLoot("nightmarefuel", 90)


end)

AddPrefabPostInit("crawlinghorror", function(inst)

   if not GLOBAL.TheWorld.ismastersim then
        return inst
    end

inst.components.lootdropper:AddChanceLoot("nightmarefuel", 90)


end)
--]]

--AddBrainPostInit("brightmare_gestaltbrain", fuck) -- i was trying to do something here i swear

local ACTIONS = GLOBAL.ACTIONS
local FRAMES = GLOBAL.FRAMES
local TimeEvent = GLOBAL.TimeEvent
local EventHandler = GLOBAL.EventHandler
local ActionHandler = GLOBAL.ActionHandler

AddStategraphState("wilson", State{
    name = "wcard_diary_open",
    tags = { "doing", "busy", "reading_diary" },

    onenter = function(inst)
            local book = inst.bufferedaction ~= nil and (inst.bufferedaction.target or inst.bufferedaction.invobject) or nil
            local skin_build = book:GetSkinBuild() or "wcard_diary"
            inst.components.locomotor:StopMoving()
            

            inst.AnimState:OverrideSymbol("book_cook", skin_build, "book_cook")
            inst.AnimState:PlayAnimation("action_uniqueitem_pre")
            inst.AnimState:PushAnimation("reading_in", false)
            inst.AnimState:PushAnimation("reading_loop", true)
        
    end,

timeline =
        {
            TimeEvent(8 * FRAMES, function(inst)
				inst.sg:RemoveStateTag("busy")
                inst:PerformBufferedAction()
            end),
        },

		onupdate = function(inst)
			
            if inst.components.sanity:GetPercent() <= 0.30 then
                inst.sg:GoToState("wcard_diary_close")
            end
			
		end,

        onexit = function(inst)
            inst.components.sanity.dapperness = TUNING.WILDCARD_DAPPERNESS
        end,
    })

AddStategraphState("wilson", State{
    name = "wcard_diary_close",
    tags = { "idle", "nodangle" },

        onenter = function(inst)
            inst.components.locomotor:StopMoving()
            inst.AnimState:PlayAnimation("reading_pst")
        end,

    events =
    {
            EventHandler("animover", function(inst)
                if inst.AnimState:AnimDone() then
					inst.sg:GoToState(inst.components.inventory:GetEquippedItem(_G.EQUIPSLOTS.HANDS) ~= nil and "item_out" or "idle")
                end
            end),
    },

    onexit = function(inst)
        inst.components.sanity.dapperness = TUNING.WILDCARD_DAPPERNESS
    end,
})


AddStategraphState("wilson_client",  State{
    name = "wcard_diary_open",
    server_states = { "wcard_diary_open" },
    forward_server_states = true,
    onenter = function(inst) inst.sg:GoToState("action_uniqueitem_busy") end,
})


AddAction("START_READING_DIARY", "Read", function(act)

  local targ = act.target or act.invobject
    if targ ~= nil and act.doer ~= nil  then
		if targ.components.book ~= nil and act.doer.components.reader ~= nil then
            local success, reason = act.doer.components.reader:Read(targ)
	        return success, reason
		elseif targ.components.wcardreadable ~= nil then
			targ.components.wcardreadable:Read(act.doer)
			return true
		end
	end
end)



AddComponentAction("INVENTORY", "wcardreadable", function(inst, doer, actions, right)
	if doer and doer:HasTag("horrorbunnygirl") and doer.replica.sanity:GetPercent() > 0.30 then
			table.insert(actions, ACTIONS.START_READING_DIARY)
	end	
end)



AddStategraphActionHandler("wilson", _G.ActionHandler(ACTIONS.START_READING_DIARY,
function(inst, action)
    return (action.invobject ~= nil and action.invobject.components.wcardreadable ~= nil and "wcard_diary_open")

end))

AddStategraphActionHandler("wilson_client", ActionHandler(ACTIONS.START_READING_DIARY,
function(inst, action)
    return	(action.invobject ~= nil and action.invobject:HasTag("wcard_diary")) and "wcard_diary_open"
end))





--[[
AddModRPCHandler("Wildcard", "Diary Reading", function(player, reading)

    player.components.reader.reading = reading
    
    if not player.sg:HasStateTag("busy") then
        player.sg:GoToState("wcard_diary_open")
    end
end)
--]]


AddCharFont("wildcard")

AddCharLobbyMusic("dontstarve/common/teleportato/ragtime", "wildcard")





  
  GLOBAL.wcard_diary_init_fn = function(inst, build_name) GLOBAL.basic_init_fn( inst, build_name, "wcard_diary" ) end
  GLOBAL.wcard_diary_clear_fn = function(inst) GLOBAL.basic_clear_fn(inst, "wcard_diary" ) end




if STRINGS.MODSKINUNLOCK_REQUIREMENT~= nil then --Again making sure the API is actually enabled
	STRINGS.MODSKINUNLOCK_REQUIREMENT["ms_wcard_diary_deathnote"] = "To unlock this skin you must defeat the Ancient Fuelweaver as Wildcard."
end

