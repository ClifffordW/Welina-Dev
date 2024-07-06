local WELINA_PLAY = Action({
    priority = 2,
    rmb = true,
    mount_valid = false,
})

WELINA_PLAY.id = "WELINA_PLAY"
WELINA_PLAY.str = "Play with"
WELINA_PLAY.fn = function (act)
    if act.target == nil then return false end

    local invItem = act.target.components.inventoryitem
    local welinaPlayful = act.doer.components.welina_playful
    if invItem == nil or welinaPlayful == nil then return false end

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

local function ComponentAction(inst, doer, actions, right)
    if not right
        or not doer:HasTag("emocatgirl")
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
