local function GetPlayerByKleiID(id)
    for _, player in ipairs(AllPlayers) do
        if player.userid == id then return player end
    end
end

---

local WelinaResentable = Class(function(self, inst)
    self.inst = inst
    self.resentedness = {}
end)

function WelinaResentable:AddResentedness(userid, amount, key)
    if userid == nil or amount <= 0 then return end
    key = key or "physical"

    local source = self.resentedness[userid]
    if source == nil then
        self.resentedness[userid] = { [key] = amount }
    else
        local current = source[key] or 0
        source[key] = current + amount
    end
end

function WelinaResentable:GetResentedness(userid, key)
    if key ~= nil then
        local source = self.resentedness[userid]
        return source ~= nil and source[key] or 0
    else
        local resentedness = 0
        for _, source in pairs(self.resentedness) do
            for _, amt in pairs(source) do resentedness = resentedness + amt end
        end
        return resentedness
    end
end

function WelinaResentable:IsResentedBy(inst)
    return self.resentedness[inst.userid or ""] ~= nil
end

function WelinaResentable:OnSave()
    return {
        resentedness = self.resentedness
    }
end

function WelinaResentable:OnLoad(data)
    if data.resentedness ~= nil then
        for id, source in pairs(data.resentedness) do
            if type(source) == "table" then
                for key, amount in pairs(source) do
                    self:AddResentedness(id, amount, key)
                end
            else
                -- Retrofit! (Source would have been the resentedness value before).
                self:AddResentedness(id, source)
            end
        end
    end
end

function WelinaResentable:GetDebugString()
    -- Just gonna let it print the first resented player in the loop.
    for id, source in pairs(self.resentedness) do
        local numResenters = GetTableSize(self.resentedness)
        local resentednessString = ""
        for key, amt in pairs(source) do resentednessString = string.format("%s - %d %s", resentednessString, amt, key) end
        return string.format("Resented by %s%s%s.",
            tostring(GetPlayerByKleiID(id)) or id,
            resentednessString,
            numResenters > 1 and (" | and +" .. numResenters .. " more.") or ""
        )
    end

    return "Not resented."
end

return WelinaResentable