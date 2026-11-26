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

	-- Additional sources verified against Wowhead Forever.
	AddMob(476, "Kobold Geomancer", Z.ELWYNN_FOREST, 62.2, 55.6)
	AddMob(1134, "Young Wendigo", Z.DUN_MOROGH, 42.4, 54.8)
	AddMob(1783,	L["Skeletal Flayer"],		Z.WESTERN_PLAGUELANDS,	38.8, 56.0)
	AddMob(1791,	L["Slavering Ghoul"],		Z.WESTERN_PLAGUELANDS,	38.8, 56.0)
	AddMob(1812,	L["Rotting Behemoth"],		Z.WESTERN_PLAGUELANDS,	64.8, 38.6)
	AddMob(1813,	L["Decaying Horror"],		Z.WESTERN_PLAGUELANDS,	64.8, 38.6)
	AddMob(1853,	L["Darkmaster Gandling"],	Z.SCHOLOMANCE,			0, 0)
	AddMob(1934, "Tirisfal Farmer", Z.TIRISFAL_GLADES, 36.1, 50.4)
	AddMob(1943, "Raging Rot Hide", Z.SILVERPINE_FOREST, 65.8, 23.6)
	AddMob(2007, "Gnarlpine Gardener", Z.TELDRASSIL, 66.8, 58.4)
	AddMob(2169, "Blackwood Totemic", Z.DARKSHORE, 51.8, 33.6)
	AddMob(2180, "Stormscale Siren", Z.DARKSHORE, 55.6, 35.2)
	AddMob(2975, "Venture Co. Hireling", Z.MULGORE, 53.2, 66.6)
	AddMob(3115, "Dustwind Harpy", Z.DUROTAR, 47.4, 33.4)
	AddMob(3128, "Kul Tiras Sailor", Z.DUROTAR, 57.6, 57.2)
	AddMob(3280, "Witchwing Windcaller", Z.THE_BARRENS, 39.5, 15.3)
	AddMob(3386, "Theramore Preserver", Z.THE_BARRENS, 61.8, 54.8)
	AddMob(3757, "Xavian Hellcaller", Z.ASHENVALE, 78.2, 44.8)
	AddMob(4022, "Bloodfury Harpy", Z.STONETALON_MOUNTAINS, 31.6, 62)
	AddMob(4095, "Galak Mauler", Z.THOUSAND_NEEDLES, 42.6, 33.2)
	AddMob(6201,	L["Legashi Rogue"],			Z.AZSHARA,				52.6, 19.4)
	AddMob(7027,	L["Blackrock Slayer"],		Z.BURNING_STEPPES,		44.0, 35.4)
	AddMob(7106,	L["Jadefire Rogue"],		Z.FELWOOD,				36.8, 66.8)
	AddMob(7235, "Gnarlpine Mystic", Z.TELDRASSIL, 68.6, 52.8)
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
	AddMob(236876, "Legashi Blackguard", Z.AZSHARA, 63.8, 16.9)

	AddMob(46, "Murloc Forager", Z.ELWYNN_FOREST, 79.5, 56.4)
	AddMob(1545, "Vile Fin Muckdweller", Z.TIRISFAL_GLADES, 65.5, 29.5)
	AddMob(2640, "Vilebranch Witch Doctor", Z.THE_HINTERLANDS, 66.2, 68.5)
	AddMob(3931, "Shadethicket Oracle", Z.ASHENVALE, 66.6, 81.8)
	AddMob(4632, "Kolkar Centaur", Z.DESOLACE, 71.5, 47.6)
	AddMob(4684, "Nether Sorceress", Z.DESOLACE, 51.8, 83.6)
	AddMob(5363, "Northspring Roguefeather", Z.FERALAS, 40.1, 12.5)
	AddMob(6193, "Spitelash Screamer", Z.AZSHARA, 30.3, 52.5)
	AddMob(249229, "Felguard Sentinel", Z.MOUNT_HYJAL, 50.6, 33.8)
	AddMob(250283, "Vile Fin Attacker", Z.TIRISFAL_GLADES, 15.6, 57.1)
	AddMob(250657, "Rath'mael", Z.RUINS_OF_LORDAERON, 0, 0)
	AddMob(276180, "Elder Finseer", Z.ELWYNN_FOREST, 79.6, 56.3)

	self.InitializeMobDrops = nil
end
