--------------------------------------------------------------------------------
-- # MODULES > BUTTON INDICATORS
--------------------------------------------------------------------------------

local f = CreateFrame('Frame')
f:RegisterEvent('PLAYER_ENTERING_WORLD')
f:SetScript('OnEvent', function(self, event)
  hooksecurefunc('ActionButton_UpdateRangeIndicator', function(self, checksRange, inRange)
    local icon = self.icon

    if self.action then
      local normalTexture = self.NormalTexture
      if not normalTexture then return end

      local isUsable, notEnoughMana = IsUsableAction(self.action)
      if isUsable then
        icon:SetVertexColor(1, 1, 1)
        normalTexture:SetVertexColor(1, 1, 1)
      elseif notEnoughMana then
        icon:SetVertexColor(0.2, 0.2, 1)
        normalTexture:SetVertexColor(0.2, 0.2, 1)
      else
        icon:SetVertexColor(0.5, 0.5, 0.5)
        normalTexture:SetVertexColor(0.5, 0.5, 0.5)
      end

      if checksRange and not inRange then
        icon:SetVertexColor(1, 0, 0)
      end
    end
  end)
end)
