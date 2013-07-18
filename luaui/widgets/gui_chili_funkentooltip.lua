function widget:GetInfo()
 return {
  name      = "BAR's funken cursortip",
  desc      = 'v0.1 of a simple tooltip',
  author    = 'Funkencool',
  date      = '2013',
  license     = 'public domain',
  layer      = math.huge,
  enabled    = true
 }
end

local Chili, screen0, tipWindow, tip
local mousePosX, mousePosY
local showFrame
local tooltip = ''

local spTraceScreenRay          = Spring.TraceScreenRay
local spGetMouseState           = Spring.GetMouseState
local spGetUnitTooltip          = Spring.GetUnitTooltip
local spGetUnitResources        = Spring.GetUnitResources
local screenWidth, screenHeight = Spring.GetWindowGeometry()

-----------------------------------
local function initWindow()
 tipWindow = Chili.Window:New{parent = screen0, skin = 'Flat', width = 300, height = 75, padding = {5,0,0,0},minHeight=1}
 tip = Chili.TextBox:New{parent = tipWindow, x = 0, y = 0, right = 0, bottom = 0,margin = {0,0,0,0}}
end
-----------------------------------
local function getUnitTooltip(ID)
 local tooltip = spGetUnitTooltip(ID)
 local metalMake, metalUse, energyMake, energyUse = spGetUnitResources(ID)
 
 local metal = ((metalMake or 0) - (MetalUse or 0))
 local energy = ((energyMake or 0) - (energyUse or 0))
 
 if metal < 0 then metal = '\255\255\127\0 '..metal
 elseif metal > 0 then metal = '\255\127\255\0 +'..metal end
 
 if energy < 0 then energy = '\255\255\127\0 '..energy
 elseif energy > 0 then energy = '\255\127\255\0 +'..energy end
 
 tooltip = tooltip..'\nMetal: '..metal..'/s\b\nEnergy: '..energy..'/s'
 return tooltip
end
-----------------------------------
local function getFeatureTooltip()
 
end
-----------------------------------
local function getTooltip()
 mousePosX, mousePosY   = spGetMouseState()
 local typeOver, ID     = spTraceScreenRay(mousePosX, mousePosY)
 if screen0.currentTooltip then tooltip = screen0.currentTooltip
 elseif typeOver == 'unit' then tooltip = getUnitTooltip(ID)
 elseif typeOver == 'feature' then tooltip = getFeatureTooltip(ID)
 else                           tooltip = '' 
 end
end
-----------------------------------
local function MakeToolTip()
 local tooltip               = tooltip
 local x,y                   = mousePosX,mousePosY
 local textwidth             = tip.font:GetTextWidth(tooltip)
 local textheight,_,numLines = tip.font:GetTextHeight(tooltip)
 tipWindow:SetPos(x + 20, screenHeight - y + 20,textwidth+10,14*numLines+2)
 if tipWindow.hidden then tipWindow:Show() end
 tipWindow:BringToFront()
end
-----------------------------------
function widget:GameFrame(frame)
 getTooltip()
 if tip.text ~= tooltip then
  showFrame = frame + 20
  tip:SetText(tooltip)
  if tipWindow.visible then tipWindow:Hide() end
 elseif showFrame < frame and tooltip ~= '' then
  MakeToolTip()
 end
end
-----------------------------------
function widget:Initialize()
 if not WG.Chili then return end
 Chili = WG.Chili
 screen0 = Chili.Screen0
 initWindow()
end
function widget:Shutdown()
  tipWindow:Dispose()
end