
local WcardReadable = Class(function(self, inst)
	self.inst = inst

	self.inst:AddTag("wcardreadable")

	--self.onreadfn = nil
end)

function WcardReadable:OnRemoveFromEntity()
    self.inst:RemoveTag("wcardreadable")
end



function WcardReadable:Read(doer)
	if not CanEntitySeeTarget(doer, self.inst) then
		return false
	end

	if self.onreadfn then
		self.onreadfn(self.inst, doer)
	end
end

return WcardReadable