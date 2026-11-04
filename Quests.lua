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
function module:InitializeQuests()
	local function AddQuest(questID, zoneName, coordX, coordY, faction)
		addon.AcquireTypes.Quest:AddEntity(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = questID,
			item_list = {},
			locationName = zoneName,
			name = nil, -- Handled by memoizing table in the core.
		})
	end


	AddQuest(715, Z.BADLANDS, 25.8, 44.6, "Neutral")
	AddQuest(91920, Z.SILVERPINE_FOREST, 53.4, 12.6, "Horde")
	AddQuest(92110, Z.WESTFALL, 0, 0, "Alliance")
	AddQuest(96045, Z.IRONFORGE, 66.6, 55.2, "Alliance")
	AddQuest(97899, Z.DUROTAR, 52, 47.2, "Horde")
	AddQuest(97915, Z.ELWYNN_FOREST, 44.8, 63.2, "Alliance")
	AddQuest(97927, Z.MULGORE, 46.2, 67.2, "Horde")
	AddQuest(97938, Z.TELDRASSIL, 57.6, 56.6, "Alliance")
	AddQuest(97951, Z.TIRISFAL_GLADES, 57.2, 55.6, "Horde")
	AddQuest(97963, Z.ZEPHRAS_ISLE, 41.6, 44.8, "Neutral")

	self.InitializeQuests = nil
end
