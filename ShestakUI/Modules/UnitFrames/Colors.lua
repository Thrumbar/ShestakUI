local ADDON_NAME, ns = ...
local oUF = ns.oUF or oUF
assert(oUF, "ShestakUI was unable to locate oUF install.")

local T, C, L = unpack(select(2, ...))
----------------------------------------------------------------------------------------
--	Colors
----------------------------------------------------------------------------------------
T.oUF_colors = setmetatable({
	tapped = {0.55, 0.57, 0.61},
	disconnected = {0.84, 0.75, 0.65},
	power = setmetatable({
		["MANA"] = {0.31, 0.45, 0.63},
		["RAGE"] = {0.69, 0.31, 0.31},
		["FOCUS"] = {0.71, 0.43, 0.27},
		["ENERGY"] = {0.65, 0.63, 0.35},
		["HAPPINESS"] = {0.19, 0.58, 0.58},
		["RUNES"] = {0.55, 0.57, 0.61},
		["RUNIC_POWER"] = {0, 0.82, 1},
		["AMMOSLOT"] = {0.8, 0.6, 0},
		["FUEL"] = {0, 0.55, 0.5},
		["POWER_TYPE_STEAM"] = {0.55, 0.57, 0.61},
		["POWER_TYPE_PYRITE"] = {0.60, 0.09, 0.17},
	}, {__index = oUF.colors.power}),
	happiness = setmetatable({
		[1] = {0.80, 0.15, 0.15},
		[2] = {1, 1, 0},
		[3] = {0.67, 0.83, 0.45},
	}, {__index = oUF.colors.happiness}),
	runes = setmetatable({
		[1] = {0.69, 0.31, 0.31},
		[2] = {0.33, 0.59, 0.33},
		[3] = {0.31, 0.45, 0.63},
		[4] = {0.84, 0.75, 0.65},
	}, {__index = oUF.colors.runes}),
	reaction = setmetatable({
		[1] = {0.85, 0.27, 0.27}, -- Hated
		[2] = {0.85, 0.27, 0.27}, -- Hostile
		[3] = {0.85, 0.27, 0.27}, -- Unfriendly
		[4] = {0.85, 0.77, 0.36}, -- Neutral
		[5] = {0.33, 0.59, 0.33}, -- Friendly
		[6] = {0.33, 0.59, 0.33}, -- Honored
		[7] = {0.33, 0.59, 0.33}, -- Revered
		[8] = {0.33, 0.59, 0.33}, -- Exalted	
	}, {__index = oUF.colors.reaction}),
}, {__index = oUF.colors})

T.ColorTemplate = T.oUF_colors