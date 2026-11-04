-------------------------------------------------------------------------------
-- Module namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local addon = private.addon
if not addon then
	return
end

local constants = addon.constants
local module = addon:GetModule(private.module_name)
local L = _G.LibStub("AceLocale-3.0"):GetLocale(addon.constants.addon_name)

local Z = constants.ZONE_NAMES

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeMobDrops()
	local function AddMob(npcID, npcName, zoneName, coordX, coordY)
		addon.AcquireTypes.MobDrop:AddEntity(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = nil,
			identifier = npcID,
			item_list = {},
			name = npcName,
			locationName = zoneName,
		})
	end

	AddMob(1783,	L["Skeletal Flayer"],		Z.WESTERN_PLAGUELANDS,	38.8, 56.0)
	AddMob(1791,	L["Slavering Ghoul"],		Z.WESTERN_PLAGUELANDS,	38.8, 56.0)
	AddMob(1812,	L["Rotting Behemoth"],		Z.WESTERN_PLAGUELANDS,	64.8, 38.6)
	AddMob(1813,	L["Decaying Horror"],		Z.WESTERN_PLAGUELANDS,	64.8, 38.6)
	AddMob(1853,	L["Darkmaster Gandling"],	Z.SCHOLOMANCE,			0, 0)
	AddMob(6201,	L["Legashi Rogue"],			Z.AZSHARA,				52.6, 19.4)
	AddMob(7027,	L["Blackrock Slayer"],		Z.BURNING_STEPPES,		44.0, 35.4)
	AddMob(7106,	L["Jadefire Rogue"],		Z.FELWOOD,				36.8, 66.8)
	AddMob(7428,	L["Frostmaul Giant"],		Z.WINTERSPRING,			64.2, 69.0)
	AddMob(7437,	L["Cobalt Mageweaver"],		Z.WINTERSPRING,			59.4, 49.0)
	AddMob(8546,	L["Dark Adept"],			Z.EASTERN_PLAGUELANDS,	42.0, 50.2)
	AddMob(8550,	L["Shadowmage"],			Z.EASTERN_PLAGUELANDS,	42.0, 50.2)
	AddMob(9262,	L["Firebrand Invoker"],		Z.BLACKROCK_SPIRE,		0, 0)
	AddMob(9264,	L["Firebrand Pyromancer"],	Z.BLACKROCK_SPIRE,		0, 0)
	AddMob(10339, 	L["Gyth"], 					Z.BLACKROCK_SPIRE, 0, 0)
	AddMob(10363, 	L["General Drakkisath"], 	Z.BLACKROCK_SPIRE, 0, 0)
	AddMob(10508, 	L["Ras Frostwhisper"], 		Z.SCHOLOMANCE, 0, 0)
	AddMob(10812,	L["Grand Crusader Dathrohan"], Z.STRATHOLME, 0, 0)
	AddMob(10813, 	L["Balnazzar"], 			Z.STRATHOLME, 0, 0)

	self.InitializeMobDrops = nil
end
