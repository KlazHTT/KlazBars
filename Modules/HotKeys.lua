--------------------------------------------------------------------------------
-- # MODULES > HOT KEYS
--------------------------------------------------------------------------------

local f = CreateFrame('Frame')
f:RegisterEvent('PLAYER_ENTERING_WORLD')
f:RegisterEvent('UPDATE_BINDINGS')
f:SetScript('OnEvent', function(self, event)
  local gsub = string.gsub
  local function UpdateHotkey(self)
    local alpha = 0.75
    local hotkey = _G[self:GetName()..'HotKey']
    local text = hotkey:GetText()
    if not text then return end

    text = gsub(text, '(s%-)', 'S')
    text = gsub(text, '(a%-)', 'A')
    text = gsub(text, '(а%-)', 'A')
    text = gsub(text, '(c%-)', 'C')
    text = gsub(text, '(Mouse Button )', 'M')
    text = gsub(text, '(Кнопка мыши )', 'M')
    text = gsub(text, KEY_BUTTON3, 'M3')
    text = gsub(text, KEY_PAGEUP, 'PU')
    text = gsub(text, KEY_PAGEDOWN, 'PD')
    text = gsub(text, KEY_SPACE, 'SpB')
    text = gsub(text, KEY_INSERT, 'Ins')
    text = gsub(text, KEY_HOME, 'Hm')
    text = gsub(text, KEY_DELETE, 'Del')
    text = gsub(text, KEY_NUMPADDECIMAL, 'Nu.')
    text = gsub(text, KEY_NUMPADDIVIDE, 'Nu/')
    text = gsub(text, KEY_NUMPADMINUS, 'Nu-')
    text = gsub(text, KEY_NUMPADMULTIPLY, 'Nu*')
    text = gsub(text, KEY_NUMPADPLUS, 'Nu+')
    text = gsub(text, KEY_NUMLOCK, 'NuL')
    text = gsub(text, KEY_MOUSEWHEELDOWN, 'MWD')
    text = gsub(text, KEY_MOUSEWHEELUP, 'MWU')

    hotkey:SetText(text)
    hotkey:SetAlpha(alpha)
  end

  for i = 1, 12 do
    UpdateHotkey(_G['ActionButton'..i])               -- main bar
    UpdateHotkey(_G['MultiBarBottomLeftButton'..i])   -- bottom right bar
    UpdateHotkey(_G['MultiBarBottomRightButton'..i])  -- bottom left bar
    UpdateHotkey(_G['MultiBarLeftButton'..i])         -- right bar
    UpdateHotkey(_G['MultiBarRightButton'..i])        -- left bar
    UpdateHotkey(_G['MultiBar5Button'..i])            -- multi bar 5 (added in Dragonflight)
    UpdateHotkey(_G['MultiBar6Button'..i])            -- multi bar 6 (added in Dragonflight)
    UpdateHotkey(_G['MultiBar7Button'..i])            -- multi bar 7 (added in Dragonflight)
  end
  for i = 1, 10 do
    UpdateHotkey(_G['StanceButton'..i])
    UpdateHotkey(_G['PetActionButton'..i])
  end
  UpdateHotkey(ExtraActionButton1)
end)
