-- WIP
function widget:GetInfo()
	return {
		name      = 'Funks current selection info',
		desc      = 'Shows information about current selection',
		author    = 'Funkencool',
		date      = '2013',
		license   = 'GNU GPL v2',
		layer     = math.huge,
		enabled   = true,
		handler   = true,
	}
end

local imageDir = 'luaui/images/buildIcons/'

local Chili ,infoWindow, unitInfo, unitName, unitIcon, selectionGrid, unitHealthText, unitHealth, groundInfo 
local healthBars = {}

local updateNow = false
local curTip --[[ current tooltip type: -3 for ground info
									    -2 for so many unitDefIDs that we just give text info 
										-1 for multiple unitDefIDs that fit with pics (<=9)
										>=0 for a single unit & is the unitID  ]]

local spGetUnitDefID            = Spring.GetUnitDefID
local spGetUnitTooltip          = Spring.GetUnitTooltip
local spGetSelectedUnits        = Spring.GetSelectedUnits
local spGetUnitHealth           = Spring.GetUnitHealth
local spGetSelectedUnitsSorted  = Spring.GetSelectedUnitsSorted
local spGetMouseState			= Spring.GetMouseState
local spTraceScreenRay			= Spring.TraceScreenRay

local r,g,b     = Spring.GetTeamColor(Spring.GetMyTeamID())
local teamColor = {r,g,b}

----------------------------------
-- add unitDefID (curTip = -1)
local function addUnitGroup(name,texture,overlay,unitIDs)
	local count = #unitIDs
	if count == 1 then count = '' end
	
	local unitCount = Chili.Label:New{
		caption = count,
		y       = 0,
		right   = 0,
	}
	
	healthBars[#healthBars + 1] = Chili.Progressbar:New{
		unitIDs = unitIDs,
		value   = 0,
		bottom  = 1,
		x       = 0,
		width   = '100%',
		height  = 6,
		color   = {0.5,1,0,1},
	}
	
	local unitIcon = Chili.Image:New{
		file     = texture,
		height   = '100%',
		width    = '100%',
		children = {
			Chili.Image:New{
				color    = teamColor,
				height   = '100%',
				width    = '100%',
				file     = overlay,
				children = {unitCount}
			},
		},
	}
	
	local button = Chili.Button:New{
		caption  = '',
		margin   = {1,1,1,1},
		padding  = {0,0,0,0},
		children = {unitIcon, healthBars[#healthBars]},
	}
	
	selectionGrid:AddChild(button)
end

----------------------------------
-- unit info (curTip >= 0)
local function showUnitInfo(texture, overlay, description, humanName, health, maxHealth)
	
	unitName = Chili.TextBox:New{
		x      = 0,
		y      = 0,
		right  = 0,
		bottom = 0,
		text   = " " .. humanName..'\n'.. " " .. description,
	}
	
	unitHealthText = Chili.TextBox:New{
		x      = 5,
		bottom = 21,
		text   = math.floor(health) ..' / '.. math.floor(maxHealth),
	}
	
	unitHealth = Chili.Progressbar:New{
		value   = 0,
		bottom  = 5,
		x       = 0,
		width   = '50%',
		height  = 10,
		color   = {0.5,1,0,1},
	}
	
	unitIcon = Chili.Image:New{
		file     = texture,
		y        = 0,
		height   = '100%',
		width    = '100%',
		children = {
			Chili.Image:New{
				color    = teamColor,
				height   = '100%',
				width    = '100%',
				file     = overlay,
				children = {unitName, unitHealthText, unitHealth},
			}
		}
	}
	
	
	unitInfo:AddChild(unitIcon)
	
end
----------------------------------
-- ground info (curTip = -3)
local function showGroundInfo(text)
	
	groundText = Chili.TextBox:New{
		x      = 0,
		y      = 0,
		right  = 0,
		bottom = 0,
		text   = text,
	}
	
	unitInfo:AddChild(groundText)
end
----------------------------------
-- text unit info only (curTip = -2)
local function showBasicUnitInfo(num, numTypes)
	
	basicUnitInfo = Chili.TextBox:New{
		x      = 0,
		y      = 0,
		right  = 0,
		bottom = 0,
		text   = " units: " .. num .. "\n unit types: " .. numTypes,
	}
	
	unitInfo:AddChild(basicUnitInfo)
end
----------------------------------
local function getInfo()
	
	units = spGetSelectedUnits()
	
	if #units == 0 then
		--info about point on map corresponding to cursor (updated every other gameframe)
		curTip = -3
		showGroundInfo("")

	elseif #units == 1 then
		--detailed info about a single unit
		local unitID      = units[1]
		curTip = unitID
		local defID       = spGetUnitDefID(unitID)
		local description = UnitDefs[defID].tooltip or ''
		local name        = UnitDefs[defID].name
		local texture     = imageDir..'Units/' .. name .. '.png'
		local overlay     = imageDir..'Overlays/' .. name .. '.png'
		local humanName   = UnitDefs[defID].humanName
		local curHealth, maxHealth = spGetUnitHealth(unitID)
	
		showUnitInfo(texture, overlay, description, humanName, curHealth, maxHealth)
		
	else
		--broad info about lots of units
		curTip = -1
		local sortedUnits = spGetSelectedUnitsSorted()
		local unitDefIDCount = 0
		local unitCount = 0
			--see if sortedUnits has too many elements
			if sortedUnits["n"] <= 9 then 
				--pics & healthbars, grouped by UnitDefID, if it fits
				for unitDefID, unitIDs in pairs(sortedUnits) do
					if unitDefID ~= 'n' then 
						local name    = UnitDefs[unitDefID].name
						local texture = imageDir..'Units/' .. name .. '.png'
						local overlay = imageDir..'Overlays/' .. name .. '.png'
						addUnitGroup(name,texture,overlay,unitIDs)
					end
				end
			else
				showBasicUnitInfo(#units, sortedUnits["n"])
			end
	end
	
end

----------------------------------
----------------------------------
function widget:Initialize()
	

	
	if (not WG.Chili) then
		widgetHandler:RemoveWidget()
		return
	end
	
	Chili   = WG.Chili
	screen0 = Chili.Screen0
	winSize = screen0.height * 0.2
	
	--Main window, ancestor of everything
	infoWindow = Chili.Window:New{
		padding = {0,0,0,0},
		parent  = Chili.Screen0,
		x       = 0,
		y  = 1,
		width   = winSize,
		height  = winSize,
	}
	
	selectionGrid = Chili.Grid:New{
		parent  = infoWindow,
		x       = 0,
		y       = 0,
		height  = '100%',
		width   = '100%',
		rows    = 3,
		columns = 3,
		padding = {0,0,0,0},
		margin  = {0,0,0,0},
	}
	
	unitInfo = Chili.Control:New{
		parent  = infoWindow,
		x       = 0,
		y       = 0,
		height  = '100%',
		width   = '100%',
		padding = {0,0,0,0},
		margin  = {0,0,0,0},
	}
	
	groundInfo = Chili.Control:New{
		parent  = infoWindow,
		x       = 0,
		y       = 0,
		height  = '100%',
		width   = '100%',
		padding = {0,0,0,0},
		margin  = {0,0,0,0},
	}
	
	Spring.SetDrawSelectionInfo(false)

end

----------------------------------
function widget:CommandsChanged()
	curTip = nil
	healthBars = {}
	selectionGrid:ClearChildren()
	unitInfo:ClearChildren()
	getInfo()
	updateNow = true
end

----------------------------------
function widget:Shutdown()
	infoWindow:Dispose()
	Spring.SetDrawSelectionInfo(true)
end


function widget:GameFrame(n)
	if n % 2 ~= 0 then return end
	
	if curTip == -3 then --ground
		local mx, my = spGetMouseState()
		local focus,map = spTraceScreenRay(mx,my)
		if focus == "ground" and map[1] then
			local px,py,pz = math.floor(map[1]),math.floor(map[2]),math.floor(map[3])
			groundText:SetText(" pos: " .. px ..  ", " .. pz .. "\n" .. " height: " .. py)
		end
		return
	end
	
	if not updateNow and n % 12 ~= 0 then return end
	
	if curTip >= 0 then --single unit
		local health, maxHealth = spGetUnitHealth(curTip)
		unitHealthText:SetText(math.floor(health) ..' / '.. math.floor(maxHealth)) 
		unitHealthText:Invalidate() --not sure why this is needed here but it is
		unitHealth:SetMinMax(0,maxHealth)
		unitHealth:SetValue(health)
		updateNow = false
		return		
	end
			
	if curTip == -1 then --multiple units, but not so many we cant fit pics
		for a=1, #healthBars do
			local value, max = 0, 0
			for b=1, #healthBars[a].unitIDs do
				local health, maxhealth = spGetUnitHealth(healthBars[a].unitIDs[b])
				max   = max + maxhealth
				value = value + health
			end
			healthBars[a].max = max
			healthBars[a]:SetValue(value)
		end		
		updateNow = false
	end
	
	--no need to update anything for curTip = -2
end






