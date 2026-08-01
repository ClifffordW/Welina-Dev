local WELINA_PLAY = Action({
    priority = 2,
    rmb = true,
    mount_valid = false,
})


local function TossDecorItem(target, furniture)
    local item = furniture.components.furnituredecortaker:TakeItem()
    if item then
        furniture.components.lootdropper:FlingItem(target)
    end
end


WELINA_PLAY.id = "WELINA_PLAY"


WELINA_PLAY.strfn = function(act)
    if act.target and act.target.Physics and act.target.Physics:IsActive() == false then
        return "MEOW"
    end
    return "NORMAL"
end



WELINA_PLAY.fn = function (act)
    if act.target == nil then return false end

    local invItem = act.target.components.inventoryitem
    local welinaPlayful = act.doer.components.welina_playful
    if invItem == nil or welinaPlayful == nil then return false end

    

    if act.target:HasTag("furnituredecor")  then
        local furniture = GetClosestInstWithTag("decortable", act.target, 2)
        if furniture and furniture.components.furnituredecortaker then
            
            act.target.components.furnituredecor.on_furniture = nil
            TossDecorItem(act.target, furniture)

        end

    end



    local x, y, z = act.target.Transform:GetWorldPosition()
    invItem:DoDropPhysics(x, y, z, true, 1)
    welinaPlayful:TryGainSanityFrom(act.target)
    return true
end

local function ActionHandler(inst, act)
    if TheWorld.ismastersim then
        act.doer.SoundEmitter:PlaySound("dontstarve_DLC001/creatures/catcoon/pickup")
    end
    return "dolongaction"
end

local function HasAnyTag(inst, tags)
    for _, tag in ipairs(tags) do
        if inst:HasTag(tag) then
            return true
        end
    end
    return false
end
local tagsToCheck = {"heavy", "portablestorage", "bundle", "notplayable"}







local function ComponentAction(inst, doer, actions, right)
    if not right
        or not doer:HasTag("emocatgirl")
        or HasAnyTag(inst, tagsToCheck)
        or inst.replica.combat ~= nil then
        return
    end
    table.insert(actions, ACTIONS.WELINA_PLAY)
end





return {
    ACTION = WELINA_PLAY,
    ActionHandler = ActionHandler,
    ComponentAction = ComponentAction,
}
