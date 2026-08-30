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

local Z = constants.ZONE_NAMES
local V = constants.GAME_VERSIONS

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeTrainers()
	local function AddTrainer(trainerID, trainerName, zoneName, coordX, coordY, faction, expansionID)
		return addon:AddTrainer(module, {
			coord_x = coordX,
			coord_y = coordY,
			expansionID = expansionID,
			faction = faction,
			identifier = trainerID,
			item_list = {},
			locationName = zoneName,
			name = trainerName,
		})
	end


	-----------------------------------------------------------------------
	-- Vanilla
	-----------------------------------------------------------------------
	AddTrainer(1215, "Alchemist Mallory", 		Z.ELWYNN_FOREST, 			39.8, 48.3, 	"Alliance", V.ORIG)
	AddTrainer(1246, "Vosur Brakthel", 			Z.IRONFORGE, 				66.5, 55.2, 	"Alliance", V.ORIG)
	AddTrainer(1386, "Rogvar", 					Z.SWAMP_OF_SORROWS, 		48.4, 55.6, 	"Horde", 	V.ORIG)
	AddTrainer(1470, "Ghak Healtouch", 			Z.LOCH_MODAN, 				37.0, 49.2, 	"Alliance", V.ORIG)
	AddTrainer(2132, "Carolai Anise", 			Z.TIRISFAL_GLADES, 			59.5, 52.2, 	"Horde",    V.ORIG)
	AddTrainer(2391, "Serge Hinott",			Z.HILLSBRAD_FOOTHILLS, 		61.6, 19.2, 	"Horde",    V.ORIG)
	AddTrainer(2837, "Jaxin Chong", 			Z.STRANGLETHORN_VALE,	    28.0, 78.0, 	"Neutral",  V.ORIG)
	AddTrainer(3009, "Bena Winterhoof",			Z.THUNDER_BLUFF, 			46.8, 33.6, 	"Horde",    V.ORIG)
	AddTrainer(3184, "Miao'zan", 				Z.DUROTAR, 					55.4, 74.0, 	"Horde",    V.ORIG)
	AddTrainer(3347, "Yelmak", 					Z.ORGRIMMAR, 				56.6, 33.6, 	"Horde",    V.ORIG)
	AddTrainer(3603, "Cyndra Kindwhisper", 		Z.TELDRASSIL, 				57.6, 60.6, 	"Alliance", V.ORIG)
	AddTrainer(4160, "Ainethil", 				Z.DARNASSUS, 				55.6, 24.4, 	"Alliance", V.ORIG)
	AddTrainer(4611, "Doctor Herbert Halsey", 	Z.UNDERCITY, 				47.6, 73.0, 	"Horde",    V.ORIG)
	AddTrainer(4900, "Alchemist Narett", 		Z.DUSTWALLOW_MARSH, 		64.0, 47.6, 	"Alliance", V.ORIG)
	AddTrainer(5177, "Tally Berryfizz", 		Z.IRONFORGE, 				66.6, 55.2, 	"Alliance", V.ORIG)
	AddTrainer(5499, "Lilyssia Nightbreeze", 	Z.STORMWIND_CITY, 			46.4, 79.6, 	"Alliance", V.ORIG)
	AddTrainer(7948, "Kylanna Windwhisper", 	Z.FERALAS, 					32.6, 43.8, 	"Alliance", V.ORIG)

	-----------------------------------------------------------------------
	-- TBC
	-----------------------------------------------------------------------
	AddTrainer(16161, "Arcanist Sheynathren", 	Z.EVERSONG_WOODS, 			38.2, 72.5, 	"Horde",    V.TBC)
	AddTrainer(16588, "Apothecary Antonivich", 	Z.HELLFIRE_PENINSULA, 		52.4, 36.5, 	"Horde",    V.TBC)
	AddTrainer(16642, "Camberon", 				Z.SILVERMOON_CITY, 			66.1, 17.4, 	"Horde",    V.TBC)
	AddTrainer(16723, "Lucc", 					Z.THE_EXODAR, 				27.5, 60.9, 	"Alliance", V.TBC)
	AddTrainer(17215, "Daedal", 				Z.AZUREMYST_ISLE,			48.5, 51.5, 	"Alliance", V.TBC)
	AddTrainer(18802, "Alchemist Gribble",		Z.HELLFIRE_PENINSULA, 		53.8, 65.8, 	"Alliance", V.TBC)
	AddTrainer(19052, "Lorokeem", 				Z.SHATTRATH_CITY, 			45.4, 19.5, 	"Neutral",  V.TBC)

	-----------------------------------------------------------------------
	-- Wrath of The Lich King
	-----------------------------------------------------------------------
	AddTrainer(26903, "Lanolis Dewdrop", 		Z.HOWLING_FJORD, 			58.4, 62.3, 	"Alliance", V.WOTLK)
	AddTrainer(26951, "Wilhelmina Renel", 		Z.HOWLING_FJORD, 			78.7, 28.5,	    "Horde",    V.WOTLK)
	AddTrainer(26975, "Arthur Henslowe", 		Z.BOREAN_TUNDRA, 			41.8, 54.3, 	"Horde",    V.WOTLK)
	AddTrainer(26987, "Falorn Nightwhisper", 	Z.BOREAN_TUNDRA, 			57.8, 71.9, 	"Alliance", V.WOTLK)
	AddTrainer(27023, "Apothecary Bressa", 		Z.DRAGONBLIGHT, 			36.2, 48.7, 	"Horde",    V.WOTLK)
	AddTrainer(27029, "Apothecary Wormwick",	Z.DRAGONBLIGHT, 			76.9, 62.2, 	"Horde",    V.WOTLK)
	AddTrainer(28703, "Linzy Blackbolt", 		Z.DALARAN_NORTHREND, 		42.5, 32.1, 	"Neutral",  V.WOTLK)
	AddTrainer(33588, "Crystal Brightspark", 	Z.ICECROWN, 				71.6, 21.0, 	"Neutral",  V.WOTLK)
	AddTrainer(33608, "Alchemy", 				Z.SHATTRATH_CITY, 			44.3, 90.4, 	"Neutral",  V.WOTLK)
	AddTrainer(33630, "Aelthin", 				Z.SHATTRATH_CITY, 			38.6, 70.8, 	"Neutral",  V.WOTLK)
	AddTrainer(33674, "Alchemist Kanhu", 		Z.SHATTRATH_CITY, 			38.6, 30.0, 	"Neutral",  V.WOTLK)
	-----------------------------------------------------------------------
	-- Cataclysm
	-----------------------------------------------------------------------
	AddTrainer(2391, "Serge Hinott",			Z.HILLSBRAD_FOOTHILLS, 		49.0, 66.2, 	"Horde",    V.CATA)
	AddTrainer(2837, "Jaxin Chong", 			Z.THE_CAPE_OF_STRANGLETHORN,42.6, 74.8, 	"Neutral",  V.CATA)
	AddTrainer(3347, "Yelmak", 					Z.ORGRIMMAR, 				55.6, 45.6, 	"Horde",    V.CATA)
	AddTrainer(4160, "Ainethil", 				Z.DARNASSUS, 				54.0, 38.6, 	"Alliance", V.CATA)
	AddTrainer(5499, "Lilyssia Nightbreeze", 	Z.STORMWIND_CITY, 			55.6, 85.8, 	"Alliance", V.CATA)

	-----------------------------------------------------------------------
	-- Mists of Pandaria
	-----------------------------------------------------------------------
	AddTrainer(56777, "Ni Gentlepaw", 			Z.THE_JADE_FOREST, 			46.6, 46.0, 	"Neutral",  V.MOP)
	AddTrainer(65186, "Poisoncrafter Kil'zit", 	Z.DREAD_WASTES, 			55.6, 32.3, 	"Neutral",  V.MOP)

	-----------------------------------------------------------------------
	-- Warlords of Dreanor
	-----------------------------------------------------------------------
	AddTrainer(85905, "Jaiden Trask", 			Z.STORMSHIELD, 				37.0, 69.6, 	"Alliance", V.WOD)
	AddTrainer(86009, "Kristoph Cossey", 		Z.WARSPEAR, 				60.8, 27.6, 	"Horde",    V.WOD)

	-----------------------------------------------------------------------
	-- Legion
	-----------------------------------------------------------------------
	AddTrainer(92456, "Linzy Blackbolt",		Z.DALARAN_BROKENISLES,		42.0, 31.7,	"Neutral",      V.LEGION)
	AddTrainer(92458, "Deucus Valdera",			Z.DALARAN_BROKENISLES,		41.2, 33.3,	"Neutral",      V.LEGION)

	-----------------------------------------------------------------------
	-- Battle for Azeroth
	-----------------------------------------------------------------------
	AddTrainer(122703, "Clever Kumali", 		Z.DAZARALOR,				42.27, 38.13, 	"Horde",    V.BFA)
	AddTrainer(132228, "Elric Whalgrene",		Z.BORALUS,					74.6, 6.6,	"Alliance",     V.BFA)

	-----------------------------------------------------------------------
	-- Shadowlands
	-----------------------------------------------------------------------
	AddTrainer(156687, "Elixirist Au'pyr", 		Z.ORIBOS,					39.31, 39.88,	"Neutral",  V.SHA)

	self.InitializeTrainers = nil
end
