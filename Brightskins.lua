local function eventHandler(self,event,...)
	-- Enable Outlines
	SetCVar('Outline', 2)
	SetCVar('OutlineEngineMode', 2)
	SetCVar('RaidOutlineEngineMode', 2)
	SetCVar('graphicsOutlineMode', 3)
	SetCVar('raidGraphicsOutlineMode', 3)

	-- Setup Self
	SetCVar('findYourselfAnywhere', 1) -- Glow Character Always
	SetCVar('findYourselfAnywhereOnlyInCombat', 1)
	SetCVar('findYourselfInBG', 1)
	SetCVar('findYourselfInBGOnlyInCombat', 0)
	SetCVar('findYourselfInRaid', 1)
	SetCVar('findYourselfInRaidOnlyInCombat', 0)
	SetCVar('findYourselfMode', 1) -- 0 Circle, 1 Circle and Highlight, 2 Highlight
end

local frame = CreateFrame("Frame","CVarSet")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent",eventHandler)