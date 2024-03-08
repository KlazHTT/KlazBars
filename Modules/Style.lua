if IsAddOnLoaded("Masque") ~= true then return end

--------------------------------------------------------------------------------
-- # MODULES > STYLE
--------------------------------------------------------------------------------

local Masque = LibStub('Masque', true)
assert(Masque, 'Masque not found')

local group = Masque:Group('KlazBars')

local function AddActionBarButtons()
  for _, name in pairs({
    'PetActionButton',
    'PossessButton',
    'StanceButton',
    'ActionButton',
    'MultiBarBottomLeftButton',
    'MultiBarBottomRightButton',
    'MultiBarLeftButton',
    'MultiBarRightButton',
    'MultiBar5Button',
    'MultiBar6Button',
    'MultiBar7Button',
  }) do
    for i = 1, 12 do
      local button = _G[name..i]
      if button then group:AddButton(button) end
    end
  end
end

local f = CreateFrame('Frame')
f:RegisterEvent('PLAYER_ENTERING_WORLD')
f:SetScript('OnEvent', function(self, event)
  AddActionBarButtons()
end)
