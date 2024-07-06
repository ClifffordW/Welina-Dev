local WelinaPlayful = Class(function (self, inst)
    self.inst = inst
    self.boringToys = {}

    self.inst:ListenForEvent("phasechanged", function (_, phase)
        if phase == "day" then self.boringToys = {} end
    end, TheWorld)
end)

function WelinaPlayful:TryGainSanityFrom(toy)
    local sanity = self.inst.components.sanity
    if toy == nil
        or self:IsToyBoring(toy.prefab)
        or sanity == nil
        or sanity:GetPercent() >= 1 then
        return
    end

    local amount = TUNING.WELINA_PLAY_SANITY[toy.prefab] or TUNING.WELINA_PLAY_SANITY.DEFAULT
    sanity:DoDelta(amount)
    self:LoseInterestIn(toy.prefab)
end

function WelinaPlayful:LoseInterestIn(prefab)
    table.insert(self.boringToys, prefab)
end

function WelinaPlayful:IsToyBoring(prefab)
    return table.contains(self.boringToys, prefab)
end

function WelinaPlayful:OnSave()
    return {
        boringToys = self.boringToys
    }
end

function WelinaPlayful:OnLoad(data)
    if data.boringToys ~= nil then
        for _, prefab in ipairs(data.boringToys) do
            self:LoseInterestIn(prefab)
        end
    end
end

return WelinaPlayful