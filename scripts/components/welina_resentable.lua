local WelinaResentable = Class(function(self, inst)
    self.inst = inst
    self.resentedness = {}
end)

function WelinaResentable:AddResentedness(userid, amount)
    if userid == nil then
        return
    end

    local previousResentedness = self.resentedness[userid]
    self.resentedness[userid] = previousResentedness == nil and amount
        or previousResentedness + amount
end

function WelinaResentable:GetResentedness(userid)
    return self.resentedness[userid] or 0
end

function WelinaResentable:OnSave()
    return {
        resentedness = self.resentedness
    }
end

function WelinaResentable:OnLoad(data)
    if data.resentedness ~= nil then
        for userid, resentedness in pairs(data.resentedness) do
            self:AddResentedness(userid, resentedness)
        end
    end
end

return WelinaResentable
