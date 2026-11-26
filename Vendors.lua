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
function module:InitializeVendors()
	local function AddVendor(vendorID, vendorName, zoneName, coordX, coordY, faction)
		addon.AcquireTypes.Vendor:AddEntity(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = vendorID,
			item_list = {},
			locationName = zoneName,
			name = vendorName,
		})
	end


	AddVendor(1313, 	L["Maria Lumere"], 				Z.STORMWIND_CITY, 				55.7, 	85.6, 	"Alliance")
	AddVendor(1669, 	L["Defias Profiteer"], 			Z.WESTFALL, 					43.5, 	66.9, 	"Neutral")
	AddVendor(1685,		L["Xandar Goodbeard"],			Z.LOCH_MODAN,					82.5,	63.5,	"Alliance")
	AddVendor(2380,		L["Nandar Branson"],			Z.HILLSBRAD_FOOTHILLS,			50.8,	57.1,	"Alliance")
	AddVendor(2393, 	L["Christoph Jeffcoat"], 		Z.HILLSBRAD_FOOTHILLS, 			62.3, 	19.1, 	"Horde")
	AddVendor(2480,		L["Bro'kin"],					Z.ALTERAC_MOUNTAINS,			38.3,	38.8,	"Neutral")
	AddVendor(2481,		L["Bliztik"],					Z.DUSKWOOD,			            18.0,	54.5,	"Neutral")
	AddVendor(2812,		L["Drovnar Strongbrew"],		Z.ARATHI_HIGHLANDS,				46.3,	47.1,	"Alliance")
	AddVendor(2848,		L["Glyx Brewright"],			Z.STRANGLETHORN_VALE,	        28.1,	78.0,	"Neutral")
	AddVendor(3134, 	L["Kzixx"], 					Z.DUSKWOOD, 					81.9, 	19.9, 	"Neutral")
	AddVendor(3335,		L["Hagrus"],					Z.ORGRIMMAR,					46.1,	45.9,	"Horde")
	AddVendor(3348,		L["Kor'geld"],					Z.ORGRIMMAR,					56.2,	34.5,	"Horde")
	AddVendor(3490,		L["Hula'mahi"],					Z.THE_BARRENS,					51.4,	30.2,	"Horde")
	AddVendor(3499, 	L["Ranik"], 					Z.THE_BARRENS, 					62.0, 	38.7, 	"Neutral")
	AddVendor(3537, 	L["Zixil"], 					Z.HILLSBRAD_FOOTHILLS, 			55.6, 	34.6, 	"Neutral")
	AddVendor(3956,		L["Harklan Moongrove"],			Z.ASHENVALE,					50.8,	67.0,	"Alliance")
	AddVendor(4083,		L["Jeeda"],						Z.STONETALON_MOUNTAINS,			47.6,	61.6,	"Horde")
	AddVendor(4226,		L["Ulthir"],					Z.DARNASSUS,					55.7,	24.2,	"Alliance")
	AddVendor(4610,		L["Algernon"],					Z.UNDERCITY,					51.9,	74.6,	"Horde")
	AddVendor(4878,		L["Montarr"],					Z.THOUSAND_NEEDLES,				45.3,	50.8,	"Horde")
	AddVendor(5178,		L["Soolie Berryfizz"],			Z.IRONFORGE,					66.3,	55.5,	"Alliance")
	AddVendor(5594,		L["Alchemist Pestlezugg"],		Z.TANARIS,						50.9,	27.0,	"Neutral")
	AddVendor(8157,		L["Logannas"],					Z.FERALAS,						32.7,	44.0,	"Alliance")
	AddVendor(8158,		L["Bronk"],						Z.FERALAS,						76.0,	43.4,	"Horde")
	AddVendor(8177,		L["Rartar"],					Z.SWAMP_OF_SORROWS,				45.4,	57.0,	"Horde")
	AddVendor(8178,		L["Nina Lightbrew"],			Z.BLASTED_LANDS,				66.8,	18.6,	"Alliance")
	AddVendor(9499, 	L["Plugger Spazzring"], 		Z.BLACKROCK_DEPTHS, 			0, 		0, 		"Neutral")
	AddVendor(10856, 	L["Argent Quartermaster Hasana"], Z.TIRISFAL_GLADES, 			83.2, 	68.2, 	"Neutral")
	AddVendor(10857, 	L["Argent Quartermaster Lightspark"], Z.WESTERN_PLAGUELANDS, 	42.9, 	83.7, 	"Neutral")
	AddVendor(11188,	L["Evie Whirlbrew"],			Z.WINTERSPRING,					60.8,	37.8,	"Neutral")
	AddVendor(11278, 	L["Magnus Frostwake"], 			Z.WESTERN_PLAGUELANDS, 			68.0, 	77.6, 	"Neutral")
	AddVendor(11536, 	L["Quartermaster Miranda Breechlock"], Z.EASTERN_PLAGUELANDS, 	81.6, 	60.0, 	"Neutral")
	AddVendor(11557, 	L["Meilosh"], 					Z.FELWOOD, 						65.6, 	2.8, 	"Neutral")
	AddVendor(12245, 	L["Vendor-Tron 1000"], 			Z.DESOLACE, 					60.3, 	38.1, 	"Neutral")
	AddVendor(12944, 	L["Lokhtos Darkbargainer"], 	Z.BLACKROCK_DEPTHS, 			0, 		0, 		"Neutral")
	AddVendor(14921, 	L["Rin'wosho the Trader"], 		Z.STRANGLETHORN_VALE, 			15.0, 	16.0, 	"Neutral")
	AddVendor(15174,	L["Calandrath"],				Z.SILITHUS,						51.8,	39.0,	"Neutral")
   	AddVendor(227853, 	L["Pix Xizzix"], 				Z.STRANGLETHORN_VALE, 			28.4, 	75.8, 	"Neutral")
    AddVendor(248196,	L["Apothecary Durelle"],		Z.THE_BARRENS,					49.9,	29.6,	"Horde")
	AddVendor(253139,   "Gorhak",                       Z.DESOLACE,                     66.3,   79.5,   "Neutral")
	AddVendor(253140,   "Molkar",                       Z.DESOLACE,                     35.7,   92.2,   "Neutral")
	AddVendor(256629,   "Dala Fairmaw",                 Z.MOUNT_HYJAL,                  21.0,   78.4,   "Neutral")
   	AddVendor(256729,	L["Nina Surefire"],				Z.REDRIDGE_MOUNTAINS,			10.7,	72.6,	"Alliance")
	AddVendor(277945,   "Happy Camper",                 Z.DUROTAR,                      45.3,   12.6,   "Horde")

	self.InitializeVendors = nil
end
