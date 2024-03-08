--------------------------------------------------------------------------------
-- # MODULES > MACRO NAMES
--------------------------------------------------------------------------------

local f = CreateFrame('Frame')
f:RegisterEvent('PLAYER_ENTERING_WORLD')
f:SetScript('OnEvent', function(self, event)
  local macroNamesAlpha = 0
  for i = 1, 12 do
    _G['ActionButton'..i..'Name']:SetAlpha(macroNamesAlpha)               -- main bar
    _G['MultiBarBottomRightButton'..i..'Name']:SetAlpha(macroNamesAlpha)  -- bottom right bar
    _G['MultiBarBottomLeftButton'..i..'Name']:SetAlpha(macroNamesAlpha)   -- bottom left bar
    _G['MultiBarRightButton'..i..'Name']:SetAlpha(macroNamesAlpha)        -- right bar
    _G['MultiBarLeftButton'..i..'Name']:SetAlpha(macroNamesAlpha)         -- left bar
    _G['MultiBar5Button'..i..'Name']:SetAlpha(macroNamesAlpha)            -- multi bar 5 (added in Dragonflight)
    _G['MultiBar6Button'..i..'Name']:SetAlpha(macroNamesAlpha)            -- multi bar 6 (added in Dragonflight)
    _G['MultiBar7Button'..i..'Name']:SetAlpha(macroNamesAlpha)            -- multi bar 7 (added in Dragonflight)
  end
end)
