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

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeTrainers()
	local function AddTrainer(trainerID, trainerName, zoneName, coordX, coordY, faction)
		return addon:AddTrainer(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = trainerID,
			item_list = {},
			locationName = zoneName,
			name = trainerName,
		})
	end


	AddTrainer(1215, "Alchemist Mallory", 		Z.ELWYNN_FOREST, 			39.8, 48.3, 	"Alliance")
	AddTrainer(1246, "Vosur Brakthel", 			Z.IRONFORGE, 				66.3, 55.5, 	"Alliance")
	AddTrainer(1386, "Rogvar", 					Z.SWAMP_OF_SORROWS, 		48.5, 55.8, 	"Horde")
	AddTrainer(1470, "Ghak Healtouch", 			Z.LOCH_MODAN, 				37.1, 49.3, 	"Alliance")
	AddTrainer(1937, "Apothecary Renferrel", 	Z.SILVERPINE_FOREST, 		42.8, 40.8, 	"Horde")
	AddTrainer(2132, "Carolai Anise", 			Z.TIRISFAL_GLADES, 			59.4, 52.2, 	"Horde")
	AddTrainer(2391, "Serge Hinott",			Z.HILLSBRAD_FOOTHILLS, 		61.5, 19.2, 	"Horde")
	AddTrainer(2837, "Jaxin Chong", 			Z.STRANGLETHORN_VALE,	    28.1, 78.0, 	"Neutral")
	AddTrainer(3009, "Bena Winterhoof",			Z.THUNDER_BLUFF, 			46.7, 33.6, 	"Horde")
	AddTrainer(3137, "Matt Johnson", 			Z.DUSKWOOD, 				74.0, 49.6, 	"Alliance")
	AddTrainer(3184, "Miao'zan", 				Z.DUROTAR, 					55.4, 73.9, 	"Horde")
	AddTrainer(3347, "Yelmak", 					Z.ORGRIMMAR, 				56.7, 33.5, 	"Horde")
	AddTrainer(3603, "Cyndra Kindwhisper", 		Z.TELDRASSIL, 				57.6, 60.8, 	"Alliance")
	AddTrainer(3964, "Kylanna", 				Z.ASHENVALE, 				50.9, 67.1, 	"Alliance")
	AddTrainer(4160, "Ainethil", 				Z.DARNASSUS, 				55.0, 23.7, 	"Alliance")
	AddTrainer(4254, "Geofram Bouldertoe", 		Z.IRONFORGE, 				50.2, 26.6, 	"Alliance")
	AddTrainer(4609, "Doctor Marsh", 			Z.UNDERCITY, 				51.5, 74.4, 	"Horde")
	AddTrainer(4611, "Doctor Herbert Halsey", 	Z.UNDERCITY, 				47.8, 72.8, 	"Horde")
	AddTrainer(4900, "Alchemist Narett", 		Z.DUSTWALLOW_MARSH, 		64.0, 47.6, 	"Alliance")
	AddTrainer(5177, "Tally Berryfizz", 		Z.IRONFORGE, 				66.6, 55.4, 	"Alliance")
	AddTrainer(5499, "Lilyssia Nightbreeze", 	Z.STORMWIND_CITY, 			55.7, 86.0, 	"Alliance")
	AddTrainer(5500, "Tel'Athir", 				Z.STORMWIND_CITY, 			55.6, 85.7, 	"Alliance")
	AddTrainer(7948, "Kylanna Windwhisper", 	Z.FERALAS, 					32.6, 43.8, 	"Alliance")
	AddTrainer(11041, "Milla Fairancora", 		Z.DARNASSUS, 				55.2, 23.0, 	"Alliance")
	AddTrainer(11042, "Sylvanna Forestmoon", 	Z.DARNASSUS, 				56.2, 24.5, 	"Alliance")
	AddTrainer(11044, "Doctor Martin Felben", 	Z.UNDERCITY, 				46.7, 74.5, 	"Horde")
	AddTrainer(11046, "Whuut", 					Z.ORGRIMMAR, 				56.1, 33.0, 	"Horde")
	AddTrainer(11047, "Kray", 					Z.THUNDER_BLUFF, 			46.9, 34.1, 	"Horde")
    AddTrainer(246795, "Linzy Blackbolt", 			Z.ALTERAC_MOUNTAINS, 	18.6, 62.4, 	"Alliance")
   	AddTrainer(249713, "Odd Child", 				Z.WESTFALL, 			0.0,  0.0, 		"Neutral")
    AddTrainer(253004, "Iaadaria Bitterwind", 		Z.ZEPHRAS_ISLE, 		66.3, 79.5, 	"Neutral")
    AddTrainer(257005, "Valiena Swiftgale", 		Z.ZEPHRAS_ISLE, 		59.2, 76.3, 	"Neutral")
    AddTrainer(257019, "Nyassa Swiftdraught", 		Z.ZEPHRAS_ISLE, 		43.7, 43.5, 	"Neutral")
    AddTrainer(259585, "Master Mycologist Shurome", Z.FELWOOD, 				51.4, 82.0, 	"Horde")
    AddTrainer(275322, "Patricia Egan", 			Z.ALTERAC_MOUNTAINS, 	18.4, 62.2, 	"Alliance")

	self.InitializeTrainers = nil
end
