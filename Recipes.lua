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

-------------------------------------------------------------------------------
-- Filter flags. Acquire types, and Reputation levels.
-------------------------------------------------------------------------------
local A = constants.ACQUIRE_TYPE_IDS
local F = constants.FILTER_IDS
local Q = constants.ITEM_QUALITIES
local Z = constants.ZONE_NAMES

local FAC = constants.FACTION_IDS
local REP = constants.REP_LEVELS

-- LoadOnAddOn gives profession modules their own namespace, so the core's
-- private helpers are not available here.  Use the current spell API locally.
local function GetSpellName(spellID)
    return _G.C_Spell.GetSpellName(spellID)
end

module.Recipes = {}

--------------------------------------------------------------------------------------------------------------------
-- Initialize!
--------------------------------------------------------------------------------------------------------------------
function module:InitializeRecipes()
    local function AddRecipe(spellID, quality)
        return addon:AddRecipe(module, {
            _acquireTypeData = {},
            _bitflags = {},
            _localizedName = GetSpellName(spellID),
            _qualityID = quality,
            _spellID = spellID,
        })
    end

    local recipe

    -------------------------------------------------------------------------------
    -- Forever
    -------------------------------------------------------------------------------

    -- Flask of the Titans -- 17635
    recipe = AddRecipe(17635, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 315, 322, 330)
    recipe:SetRecipeItem(13519, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(13510, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_FLASK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(227853)
    recipe:AddMobDrop(10363)

    -- Flask of Distilled Wisdom -- 17636
    recipe = AddRecipe(17636, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 315, 322, 330)
    recipe:SetRecipeItem(13520, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(13511, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_FLASK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(227853)
    recipe:AddMobDrop(10812, 10813)

    -- Flask of Supreme Power -- 17637
    recipe = AddRecipe(17637, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 315, 322, 330)
    recipe:SetRecipeItem(13521, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(13512, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_FLASK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(227853)
    recipe:AddMobDrop(10508)

    -- Flask of Chromatic Resistance -- 17638
    recipe = AddRecipe(17638, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 315, 322, 330)
    recipe:SetRecipeItem(13522, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(13513, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_FLASK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(227853)
    recipe:AddMobDrop(10339)

    -- Elixir of Coalesced Regret -- 426607
    recipe = AddRecipe(426607, Q.UNCOMMON)
    recipe:SetSkillLevels(90, 90, 90, 100, 110)
    recipe:SetRecipeItem(210709, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(210708, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddLimitedVendor(3134, 1, 3537, 1)

    -- Major Discolored Healing Potion -- 1231583
    recipe = AddRecipe(1231583, Q.COMMON)
    recipe:SetRecipeItem(241651, "BIND_ON_PICKUP")
    recipe:SetSkillLevels(250, 250, 290, 310, 330)
    recipe:SetCraftedItem(241650, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1937, 249713)

    -- Lesser Discolored Healing Potion -- 1244645
    recipe = AddRecipe(1244645, Q.COMMON)
    recipe:SetSkillLevels(85, 85, 85, 105, 125)
    recipe:SetCraftedItem(247239, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1937, 249713)

    -- Discolored Healing Potion -- 1244646
    recipe = AddRecipe(1244646, Q.COMMON)
    recipe:SetSkillLevels(135, 135, 135, 155, 175)
    recipe:SetCraftedItem(247240, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1937, 249713)

    -- Greater Discolored Healing Potion -- 1244647
    recipe = AddRecipe(1244647, Q.COMMON)
    recipe:SetSkillLevels(175, 175, 175, 195, 215)
    recipe:SetCraftedItem(247241, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1937, 249713)

    -- Superior Discolored Healing Potion -- 1244648
    recipe = AddRecipe(1244648, Q.COMMON)
    recipe:SetSkillLevels(230, 230, 230, 250, 270)
    recipe:SetCraftedItem(247242, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1937, 249713)

    -- Magenta Dye -- 1249631
    recipe = AddRecipe(1249631, Q.UNCOMMON)
    recipe:SetSkillLevels(120, 120, 130, 142, 155)
    recipe:SetCraftedItem(249430, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1386, 2391, 2837, 3009, 3347, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 7948, 11042, 246795, 259585, 275322)

    -- Viridian Dye -- 1249632
    recipe = AddRecipe(1249632, Q.UNCOMMON)
    recipe:SetSkillLevels(215, 215, 230, 250, 270)
    recipe:SetCraftedItem(249431, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1386, 4160, 4611, 7948, 246795, 259585, 275322)


    -- WORK IN PROGRESS
    -- Elixir of Minor Force -- 1245250
    recipe = AddRecipe(1245250, Q.COMMON)
    recipe:SetSkillLevels(10, 10, 10, 12, 15)
    recipe:SetCraftedItem(247755, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK, F.DPS)
    recipe:AddCustom("DEFAULT_RECIPE")

    -- Minor Arcane Elixir -- 1245246
    recipe = AddRecipe(1245246, Q.COMMON)
    recipe:SetSkillLevels(10, 10, 10, 12, 15)
    recipe:SetCraftedItem(247754, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.HEALER)
    recipe:AddCustom("DEFAULT_RECIPE")

    -- Mana Well -- 1230564
    recipe = AddRecipe(1230564, Q.COMMON)
    recipe:SetSkillLevels(20, 20, 20, 22, 25)
    recipe:SetCraftedItem(279956, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1215, 1246, 1386, 1470, 2132, 2391, 2837, 3009, 3184, 3347, 3603, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 5500, 7948, 11041, 11042, 11044, 11046, 11047, 246795, 253004, 257005, 257019, 259585, 275322)
    recipe:AddQuest(96045, 97899, 97915, 97927, 97938, 97951, 97963)

    -- Cerulean Dye -- 1249630
    recipe = AddRecipe(1249630, Q.COMMON)
    recipe:SetSkillLevels(40, 40, 50, 70, 90)
    recipe:SetCraftedItem(249409, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1215, 1246, 1386, 1470, 2132, 2391, 2837, 3009, 3184, 3347, 3603, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 5500, 7948, 11041, 11042, 11044, 11046, 11047, 246795, 253004, 257005, 257019, 259585, 275322)

    -- Sulfuric Acid -- 1249633
    recipe = AddRecipe(1249633, Q.COMMON)
    recipe:SetSkillLevels(40, 40, 50, 70, 90)
    recipe:SetCraftedItem(249410, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1215, 1246, 1386, 1470, 2132, 2391, 2837, 3009, 3184, 3347, 3603, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 5500, 7948, 11041, 11042, 11044, 11046, 11047, 246795, 253004, 257005, 257019, 259585, 275322)

    -- Elixir of Cunning -- 1250777
    recipe = AddRecipe(1250777, Q.COMMON)
    recipe:SetSkillLevels(275, 275, 280, 282, 285)
    recipe:SetRecipeItem(250364, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250328, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256729)
    recipe:AddMerchantFavor(180)

    -- Elixir of the Phalanx -- 1250778
    recipe = AddRecipe(1250778, Q.COMMON)
    recipe:SetSkillLevels(250, 250, 255, 257, 260)
    recipe:SetRecipeItem(250365, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250329, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256729)
    recipe:AddMerchantFavor(180)

    -- Lesser Cleric's Elixir -- 1250780
    recipe = AddRecipe(1250780, Q.COMMON)
    recipe:SetSkillLevels(95, 95, 100, 102, 105)
    recipe:SetRecipeItem(250367, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250331, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(248196, 256729)
    recipe:AddMerchantFavor(45)

    -- Greater Cleric's Elixir -- 1250782
    recipe = AddRecipe(1250782, Q.COMMON)
    recipe:SetSkillLevels(195, 195, 200, 202, 205)
    recipe:SetRecipeItem(250369, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250333, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256729)
    recipe:AddMerchantFavor(120)

    -- Elixir of Greater Fortitude -- 1250784
    recipe = AddRecipe(1250784, Q.COMMON)
    recipe:SetSkillLevels(200, 200, 205, 207, 210)
    recipe:SetRecipeItem(250371, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250335, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256729)
    recipe:AddMerchantFavor(120)

    -- Elixir of Wicked Regeneration -- 1250785
    recipe = AddRecipe(1250785, Q.COMMON)
    recipe:SetSkillLevels(285, 285, 290, 292, 295)
    recipe:SetRecipeItem(250372, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250336, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256729)
    recipe:AddMerchantFavor(180)

    -- Elixir of the Owl -- 1250786
    recipe = AddRecipe(1250786, Q.COMMON)
    recipe:SetSkillLevels(280, 280, 285, 287, 290)
    recipe:SetRecipeItem(250373, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250337, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256729)
    recipe:AddMerchantFavor(180)

    -- Elixir of Sages -- 1250787
    recipe = AddRecipe(1250787, Q.COMMON)
    recipe:SetSkillLevels(275, 275, 280, 282, 285)
    recipe:SetRecipeItem(250374, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250338, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256729)
    recipe:AddMerchantFavor(180)

    -- Lesser Mageblood Elixir -- 1250789
    recipe = AddRecipe(1250789, Q.COMMON)
    recipe:SetSkillLevels(75, 75, 80, 82, 85)
    recipe:SetRecipeItem(250376, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250340, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(248196, 256729)
    recipe:AddMerchantFavor(45)

    -- Greater Mageblood Elixir -- 1250790
    recipe = AddRecipe(1250790, Q.COMMON)
    recipe:SetSkillLevels(175, 175, 180, 182, 185)
    recipe:SetRecipeItem(250377, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250341, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256729)
    recipe:AddMerchantFavor(120)

    -- Lesser Arcane Elixir -- 1250791
    recipe = AddRecipe(1250791, Q.COMMON)
    recipe:SetSkillLevels(120, 120, 125, 127, 130)
    recipe:SetRecipeItem(250378, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250342, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(248196, 256729)
    recipe:AddMerchantFavor(45)

    -- Elixir of Nature Power -- 1250792
    recipe = AddRecipe(1250792, Q.COMMON)
    recipe:SetSkillLevels(285, 285, 290, 292, 295)
    recipe:SetRecipeItem(250379, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250343, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256729)
    recipe:AddMerchantFavor(180)

    -- Elixir of Lesser Spirit -- 1250794
    recipe = AddRecipe(1250794, Q.COMMON)
    recipe:SetSkillLevels(65, 65, 70, 72, 75)
    recipe:SetRecipeItem(250381, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250345, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(248196, 256729)
    recipe:AddMerchantFavor(45)

    -- Elixir of Greater Spirit -- 1250796
    recipe = AddRecipe(1250796, Q.COMMON)
    recipe:SetSkillLevels(165, 165, 170, 172, 175)
    recipe:SetRecipeItem(250383, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250347, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256729)
    recipe:AddMerchantFavor(120)

    -- Elixir of the Whale -- 1250797
    recipe = AddRecipe(1250797, Q.COMMON)
    recipe:SetSkillLevels(275, 275, 280, 282, 285)
    recipe:SetRecipeItem(250384, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250348, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256729)
    recipe:AddMerchantFavor(180)

    -- Elixir of Ferocity -- 1250799
    recipe = AddRecipe(1250799, Q.COMMON)
    recipe:SetSkillLevels(275, 275, 280, 282, 285)
    recipe:SetRecipeItem(250386, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250350, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256729)
    recipe:AddMerchantFavor(180)

    -- Elixir of the Grizzly -- 1250800
    recipe = AddRecipe(1250800, Q.COMMON)
    recipe:SetSkillLevels(300, 300, 305, 307, 310)
    recipe:SetRecipeItem(250387, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250351, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256729)
    recipe:AddMerchantFavor(240)

    -- Elixir of Lesser Intellect -- 1250801
    recipe = AddRecipe(1250801, Q.COMMON)
    recipe:SetSkillLevels(95, 95, 100, 102, 105)
    recipe:SetRecipeItem(250388, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250353, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(248196, 256729)
    recipe:AddMerchantFavor(45)

    -- Spellblasting Potion -- 1251731
    recipe = AddRecipe(1251731, Q.COMMON)
    recipe:SetSkillLevels(135, 135, 140, 142, 145)
    recipe:SetRecipeItem(250978, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250934, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(248196, 256729)
    recipe:AddMerchantFavor(45)

    -- Major Spellblasting Potion -- 1251734
    recipe = AddRecipe(1251734, Q.COMMON)
    recipe:SetSkillLevels(285, 285, 290, 292, 295)
    recipe:SetRecipeItem(250981, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250937, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256729)
    recipe:AddMerchantFavor(180)

    -- Frenzy Potion -- 1251737
    recipe = AddRecipe(1251737, Q.COMMON)
    recipe:SetSkillLevels(140, 140, 145, 147, 150)
    recipe:SetRecipeItem(250984, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250940, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(248196, 256729)
    recipe:AddMerchantFavor(45)

    -- Major Frenzy Potion -- 1251740
    recipe = AddRecipe(1251740, Q.COMMON)
    recipe:SetSkillLevels(290, 290, 295, 297, 300)
    recipe:SetRecipeItem(250987, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250943, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256729)
    recipe:AddMerchantFavor(240)

    -- Mender's Potion -- 1251743
    recipe = AddRecipe(1251743, Q.COMMON)
    recipe:SetSkillLevels(130, 130, 135, 137, 140)
    recipe:SetRecipeItem(250990, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250946, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(248196, 256729)
    recipe:AddMerchantFavor(45)

    -- Major Mender's Potion -- 1251747
    recipe = AddRecipe(1251747, Q.COMMON)
    recipe:SetSkillLevels(280, 280, 285, 287, 290)
    recipe:SetRecipeItem(250993, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250949, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256729)
    recipe:AddMerchantFavor(180)

    -- Potion of Venomous Blood -- 1251748
    recipe = AddRecipe(1251748, Q.COMMON)
    recipe:SetSkillLevels(275, 275, 280, 282, 285)
    recipe:SetRecipeItem(250994, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250950, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256729)
    recipe:AddMerchantFavor(180)

    -- Caustic Smog Potion -- 1251749
    recipe = AddRecipe(1251749, Q.COMMON)
    recipe:SetSkillLevels(265, 265, 270, 272, 275)
    recipe:SetRecipeItem(250995, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250951, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256729)
    recipe:AddMerchantFavor(180)

    -- Disorienting Smog Potion -- 1251750
    recipe = AddRecipe(1251750, Q.COMMON)
    recipe:SetSkillLevels(180, 180, 185, 187, 190)
    recipe:SetRecipeItem(250996, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250952, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256729)
    recipe:AddMerchantFavor(120)

    -- Dragonfire Potion -- 1251751
    recipe = AddRecipe(1251751, Q.COMMON)
    recipe:SetSkillLevels(245, 245, 250, 252, 255)
    recipe:SetRecipeItem(250997, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250953, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256729)
    recipe:AddMerchantFavor(120)

    -- Potion of Elemental Purging -- 1251752
    recipe = AddRecipe(1251752, Q.COMMON)
    recipe:SetSkillLevels(280, 280, 285, 287, 290)
    recipe:SetRecipeItem(250998, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250954, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248196)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256729)
    recipe:AddMerchantFavor(180)

    -------------------------------------------------------------------------------
    -- Classic.
    -------------------------------------------------------------------------------
    -- Elixir of Minor Defense -- 7183
    recipe = AddRecipe(7183, Q.COMMON)
    recipe:SetSkillLevels(55, 55, 55, 75, 95)
    recipe:SetCraftedItem(5997, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
    recipe:AddCustom("DEFAULT_RECIPE")


    -- Elixir of Minor Strength -- 2329
    recipe = AddRecipe(2329, Q.COMMON)
    recipe:SetSkillLevels(15, 15, 55, 75, 95)
    recipe:SetCraftedItem(2454, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddTrainer(1215, 1246, 1386, 1470, 2132, 2391, 2837, 3009, 3184, 3347, 3603, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 5500, 7948, 11041, 11042, 11044, 11046, 11047, 246795, 253004, 257005, 257019, 259585, 275322)

    -- Minor Mana Potion -- 2331
    recipe = AddRecipe(2331, Q.COMMON)
    recipe:SetSkillLevels(25, 25, 65, 85, 105)
    recipe:SetCraftedItem(2455, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.HEALER)
    recipe:AddTrainer(1215, 1246, 1386, 1470, 2132, 2391, 2837, 3009, 3184, 3347, 3603, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 5500, 7948, 11041, 11042, 11044, 11046, 11047, 246795, 253004, 257005, 257019, 259585, 275322)

    -- Minor Rejuvenation Potion -- 2332
    recipe = AddRecipe(2332, Q.COMMON)
    recipe:SetSkillLevels(40, 40, 70, 90, 110)
    recipe:SetCraftedItem(2456, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.HEALER)
    recipe:AddTrainer(1215, 1246, 1386, 1470, 2132, 2391, 2837, 3009, 3184, 3347, 3603, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 5500, 7948, 11041, 11042, 11044, 11046, 11047, 246795, 253004, 257005, 257019, 259585, 275322)

    -- Elixir of Lesser Agility -- 2333
    recipe = AddRecipe(2333, Q.UNCOMMON)
    recipe:SetSkillLevels(140, 140, 165, 185, 205)
    recipe:SetRecipeItem(3396, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(3390, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Elixir of Minor Fortitude -- 2334
    recipe = AddRecipe(2334, Q.COMMON)
    recipe:SetSkillLevels(50, 50, 80, 100, 120)
    recipe:SetCraftedItem(2458, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1215, 1246, 1386, 1470, 2132, 2391, 2837, 3009, 3184, 3347, 3603, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 5500, 7948, 11041, 11042, 11044, 11046, 11047, 246795, 253004, 257005, 257019, 259585, 275322)

    -- Swiftness Potion -- 2335
    recipe = AddRecipe(2335, Q.UNCOMMON)
    recipe:SetSkillLevels(60, 60, 90, 110, 130)
    recipe:SetRecipeItem(2555, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(2459, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.RUINS_OF_LORDAERON, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)


    -- Minor Troll's Blood Elixir -- 3170
    recipe = AddRecipe(3170, Q.COMMON)
    recipe:SetSkillLevels(15, 15, 60, 80, 100)
    recipe:SetCraftedItem(3382, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1215, 1246, 1386, 1470, 2132, 2391, 2837, 3009, 3184, 3347, 3603, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 5500, 7948, 11041, 11042, 11044, 11046, 11047, 246795, 253004, 257005, 257019, 259585, 275322)

    -- Elixir of Wisdom -- 3171
    recipe = AddRecipe(3171, Q.COMMON)
    recipe:SetSkillLevels(90, 90, 120, 140, 160)
    recipe:SetCraftedItem(3383, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.HEALER)
    recipe:AddTrainer(1386, 2391, 2837, 3009, 3347, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 7948, 11042, 246795, 259585, 275322)

    -- Lesser Mana Potion -- 3173
    recipe = AddRecipe(3173, Q.COMMON)
    recipe:SetSkillLevels(120, 120, 145, 165, 185)
    recipe:SetCraftedItem(3385, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.HEALER)
    recipe:AddTrainer(1386, 2391, 2837, 3009, 3347, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 7948, 11042, 246795, 259585, 275322)

    -- Potion of Curing -- 3174
    recipe = AddRecipe(3174, Q.COMMON)
    recipe:SetSkillLevels(120, 120, 145, 165, 185)
    recipe:SetRecipeItem(3394, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(3386, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Limited Invulnerability Potion -- 3175
    recipe = AddRecipe(3175, Q.UNCOMMON)
    recipe:SetSkillLevels(250, 250, 275, 295, 315)
    recipe:SetRecipeItem(3395, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(3387, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.DIRE_MAUL, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RUINS_OF_AHNQIRAJ, Z.STRATHOLME, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Strong Troll's Blood Elixir -- 3176
    recipe = AddRecipe(3176, Q.COMMON)
    recipe:SetSkillLevels(125, 125, 150, 170, 190)
    recipe:SetCraftedItem(3388, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1386, 2391, 2837, 3009, 3347, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 7948, 11042, 246795, 259585, 275322)

    -- Elixir of Defense -- 3177
    recipe = AddRecipe(3177, Q.COMMON)
    recipe:SetSkillLevels(130, 130, 155, 175, 195)
    recipe:SetCraftedItem(3389, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
    recipe:AddTrainer(1386, 2391, 2837, 3009, 3347, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 7948, 11042, 246795, 259585, 275322)

    -- Elixir of Ogre's Strength -- 3188
    recipe = AddRecipe(3188, Q.COMMON)
    recipe:SetSkillLevels(150, 150, 175, 195, 215)
    recipe:SetRecipeItem(6211, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(3391, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Elixir of Minor Agility -- 3230
    recipe = AddRecipe(3230, Q.UNCOMMON)
    recipe:SetSkillLevels(50, 50, 80, 100, 120)
    recipe:SetRecipeItem(2553, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(2457, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.RUINS_OF_LORDAERON, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)


    -- Lesser Invisibility Potion -- 3448
    recipe = AddRecipe(3448, Q.COMMON)
    recipe:SetSkillLevels(165, 165, 185, 205, 225)
    recipe:SetCraftedItem(3823, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1386, 4160, 4611, 7948, 11042, 246795, 259585, 275322)

    -- Shadow Oil -- 3449
    recipe = AddRecipe(3449, Q.COMMON)
    recipe:SetRecipeItem(6068, "BIND_ON_PICKUP")
    recipe:SetSkillLevels(165, 165, 190, 210, 230)
    recipe:SetCraftedItem(3824, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_OIL")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddLimitedVendor(2481, 1, 4878, 1, 12245, 1)
    --recipe:AddTrainer(1386, 2132, 3009, 3184, 3347, 4160, 4900, 5177, 5499, 16588, 16642, 16723, 18802, 56777)

    -- Elixir of Fortitude -- 3450
    recipe = AddRecipe(3450, Q.COMMON)
    recipe:SetSkillLevels(175, 175, 195, 215, 235)
    recipe:SetRecipeItem(3830, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(3825, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1386, 4160, 4611, 7948, 246795, 259585, 275322)
    recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE, Z.ULDAMAN, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Major Troll's Blood Elixir -- 3451
    recipe = AddRecipe(3451, Q.UNCOMMON)
    recipe:SetSkillLevels(180, 180, 200, 220, 240)
    recipe:SetRecipeItem(3831, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(3826, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Mana Potion -- 3452
    recipe = AddRecipe(3452, Q.COMMON)
    recipe:SetSkillLevels(160, 160, 180, 200, 220)
    recipe:SetCraftedItem(3827, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1386, 4160, 4611, 7948, 246795, 259585, 275322)

    -- Elixir of Detect Lesser Invisibility -- 3453
    recipe = AddRecipe(3453, Q.UNCOMMON)
    recipe:SetSkillLevels(195, 195, 215, 235, 255)
    recipe:SetRecipeItem(3832, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(3828, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Frost Oil -- 3454
    recipe = AddRecipe(3454, Q.UNCOMMON)
    recipe:SetSkillLevels(200, 200, 220, 240, 260)
    recipe:SetRecipeItem(14634, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(3829, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_OIL")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddLimitedVendor(2480, 1)

    -- Discolored Healing Potion -- 4508
    recipe = AddRecipe(4508, Q.UNCOMMON)
    recipe:SetSkillLevels(50, 50, 55, 75, 95)
    recipe:SetRecipeItem(4597, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(4596, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1937, 249713)
    recipe:AddQuest(91920, 92110)

    -- Lesser Stoneshield Potion -- 4942
    recipe = AddRecipe(4942, Q.COMMON)
    recipe:SetSkillLevels(215, 215, 230, 250, 270)
    recipe:SetRecipeItem(4624, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(4623, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
    recipe:AddQuest(715)

    -- Rage Potion -- 6617
    recipe = AddRecipe(6617, Q.COMMON)
    recipe:SetSkillLevels(60, 60, 90, 110, 130)
    recipe:SetRecipeItem(5640, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(5631, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK, F.DRUID, F.WARRIOR)
    recipe:AddLimitedVendor(1669, 2, 1685, 2, 3335, 2, 3499, 2)

    -- Great Rage Potion -- 6618
    recipe = AddRecipe(6618, Q.COMMON)
    recipe:SetSkillLevels(175, 175, 195, 215, 235)
    recipe:SetRecipeItem(5643, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(5633, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK, F.DRUID, F.WARRIOR)
    recipe:AddLimitedVendor(3335, 2, 4226, 2, 12245, 1)

    -- Free Action Potion -- 6624
    recipe = AddRecipe(6624, Q.COMMON)
    recipe:SetSkillLevels(150, 150, 175, 195, 215)
    recipe:SetRecipeItem(5642, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(5634, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddLimitedVendor(3348, 1, 4226, 1, 5178, 1, 12245, 1)

    -- Elixir of Water Breathing -- 7179
    recipe = AddRecipe(7179, Q.COMMON)
    recipe:SetSkillLevels(90, 90, 120, 140, 160)
    recipe:SetCraftedItem(5996, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1386, 2391, 2837, 3009, 3347, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 7948, 11042, 246795, 259585, 275322)


    -- Holy Protection Potion -- 7255
    recipe = AddRecipe(7255, Q.COMMON)
    recipe:SetSkillLevels(100, 100, 130, 150, 170)
    recipe:SetRecipeItem(6053, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(6051, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddLimitedVendor(1685, 1, 3490, 1)
    recipe:AddVendor(3134)

    -- Shadow Protection Potion -- 7256
    recipe = AddRecipe(7256, Q.COMMON)
    recipe:SetSkillLevels(135, 135, 160, 180, 200)
    recipe:SetRecipeItem(6054, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(6048, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddLimitedVendor(2393, 1, 3956, 1)

    -- Fire Protection Potion -- 7257
    recipe = AddRecipe(7257, Q.COMMON)
    recipe:SetSkillLevels(165, 165, 210, 230, 250)
    recipe:SetRecipeItem(6055, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(6049, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddLimitedVendor(2380, 1, 4083, 1)

    -- Frost Protection Potion -- 7258
    recipe = AddRecipe(7258, Q.COMMON)
    recipe:SetSkillLevels(190, 190, 205, 225, 245)
    recipe:SetRecipeItem(6056, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(6050, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddLimitedVendor(2812, 1, 2848, 1)

    -- Nature Protection Potion -- 7259
    recipe = AddRecipe(7259, Q.COMMON)
    recipe:SetSkillLevels(190, 190, 210, 230, 250)
    recipe:SetRecipeItem(6057, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(6052, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddLimitedVendor(2848, 1, 5594, 1, 8157, 1, 8158, 1)

    -- Blackmouth Oil -- 7836
    recipe = AddRecipe(7836, Q.COMMON)
    recipe:SetSkillLevels(80, 80, 80, 90, 100)
    recipe:SetCraftedItem(6370, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_OIL")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1386, 2391, 2837, 3009, 3347, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 7948, 11042, 246795, 259585, 275322)

    -- Fire Oil -- 7837
    recipe = AddRecipe(7837, Q.COMMON)
    recipe:SetSkillLevels(130, 130, 150, 160, 170)
    recipe:SetCraftedItem(6371, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_OIL")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1386, 2391, 2837, 3009, 3347, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 7948, 11042, 246795, 259585, 275322)

    -- Swim Speed Potion -- 7841
    recipe = AddRecipe(7841, Q.COMMON)
    recipe:SetSkillLevels(100, 100, 130, 150, 170)
    recipe:SetCraftedItem(6372, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1386, 2391, 2837, 3009, 3347, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 7948, 11042, 246795, 259585, 275322)

    -- Elixir of Firepower -- 7845
    recipe = AddRecipe(7845, Q.COMMON)
    recipe:SetSkillLevels(140, 140, 165, 185, 205)
    recipe:SetCraftedItem(6373, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.HEALER)
    recipe:AddTrainer(1386, 2391, 2837, 3009, 3347, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 7948, 11042, 246795, 259585, 275322)

    -- Elixir of Giant Growth -- 8240
    recipe = AddRecipe(8240, Q.UNCOMMON)
    recipe:SetSkillLevels(90, 90, 120, 140, 160)
    recipe:SetRecipeItem(6663, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(6662, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddWorldDrop(Z.DARKSHORE, Z.THE_BARRENS, Z.THOUSAND_NEEDLES)

    -- Greater Mana Potion -- 11448
    recipe = AddRecipe(11448, Q.COMMON)
    recipe:SetSkillLevels(205, 205, 220, 240, 260)
    recipe:SetCraftedItem(6149, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1386, 4160, 4611, 7948, 11042, 246795, 259585, 275322)

    -- Elixir of Agility -- 11449
    recipe = AddRecipe(11449, Q.COMMON)
    recipe:SetSkillLevels(185, 185, 205, 225, 245)
    recipe:SetCraftedItem(8949, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddTrainer(1386, 4160, 4611, 7948, 246795, 259585, 275322)

    -- Elixir of Greater Defense -- 11450
    recipe = AddRecipe(11450, Q.COMMON)
    recipe:SetSkillLevels(195, 195, 215, 235, 255)
    recipe:SetCraftedItem(8951, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
    recipe:AddTrainer(1386, 4160, 4611, 7948, 246795, 259585, 275322)

    -- Oil of Immolation -- 11451
    recipe = AddRecipe(11451, Q.COMMON)
    recipe:SetSkillLevels(205, 205, 220, 240, 260)
    recipe:SetCraftedItem(8956, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_OIL")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1386, 4160, 4611, 7948, 11042, 246795, 259585, 275322)

    -- Restorative Potion -- 11452
    recipe = AddRecipe(11452, Q.COMMON)
    recipe:SetSkillLevels(225, 225, 225, 245, 265)
    recipe:SetCraftedItem(9030, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)

    -- Goblin Rocket Fuel -- 11456
    recipe = AddRecipe(11456, Q.COMMON)
    recipe:SetSkillLevels(210, 210, 225, 245, 265)
    recipe:SetRecipeItem(10644, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(9061, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddCustom("CRAFTED_ENGINEERS")


    -- Wildvine Potion -- 11458
    recipe = AddRecipe(11458, Q.UNCOMMON)
    recipe:SetSkillLevels(225, 225, 225, 237, 250)
    recipe:SetRecipeItem(9294, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(9144, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.STRANGLETHORN_VALE, Z.THE_HINTERLANDS)

    -- Philosopher's Stone -- 11459
    recipe = AddRecipe(11459, Q.COMMON)
    recipe:SetSkillLevels(225, 225, 240, 260, 280)
    recipe:SetRecipeItem(9303, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(9149, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ALCHEMY_TRINKET")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
    recipe:AddVendor(5594)

    -- Elixir of Detect Undead -- 11460
    recipe = AddRecipe(11460, Q.COMMON)
    recipe:SetSkillLevels(230, 230, 245, 265, 285)
    recipe:SetCraftedItem(9154, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1386, 7948, 259585)

    -- Arcane Elixir -- 11461
    recipe = AddRecipe(11461, Q.COMMON)
    recipe:SetSkillLevels(235, 235, 250, 270, 290)
    recipe:SetCraftedItem(9155, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
    recipe:AddTrainer(1386, 7948, 259585)

    -- Invisibility Potion -- 11464
    recipe = AddRecipe(11464, Q.UNCOMMON)
    recipe:SetSkillLevels(235, 235, 250, 270, 290)
    recipe:SetRecipeItem(9295, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(9172, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.DIRE_MAUL, Z.GNOMEREGAN, Z.MARAUDON, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_MONASTERY, Z.STRATHOLME, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Elixir of Greater Intellect -- 11465
    recipe = AddRecipe(11465, Q.COMMON)
    recipe:SetSkillLevels(235, 235, 250, 270, 290)
    recipe:SetCraftedItem(9179, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.HEALER)
    recipe:AddTrainer(1386, 7948, 259585)

    -- Gift of Arthas -- 11466
    recipe = AddRecipe(11466, Q.UNCOMMON)
    recipe:SetSkillLevels(240, 240, 255, 275, 295)
    recipe:SetRecipeItem(9296, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(9088, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(1783, 1791)

    -- Elixir of Greater Agility -- 11467
    recipe = AddRecipe(11467, Q.COMMON)
    recipe:SetSkillLevels(240, 240, 255, 275, 295)
    recipe:SetCraftedItem(9187, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddTrainer(1386, 7948, 259585)

    -- Elixir of Dream Vision -- 11468
    recipe = AddRecipe(11468, Q.UNCOMMON)
    recipe:SetSkillLevels(240, 240, 255, 275, 295)
    recipe:SetRecipeItem(9297, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(9197, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.STORM_CLIFFS, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Elixir of Giants -- 11472
    recipe = AddRecipe(11472, Q.UNCOMMON)
    recipe:SetSkillLevels(245, 245, 260, 280, 300)
    recipe:SetRecipeItem(9298, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(9206, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.DIRE_MAUL, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.SCARLET_MONASTERY, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Ghost Dye -- 11473
    recipe = AddRecipe(11473, Q.COMMON)
    recipe:SetSkillLevels(245, 245, 260, 280, 300)
    recipe:SetRecipeItem(9302, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(9210, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddLimitedVendor(8157, 1, 8158, 1)

    -- Elixir of Shadow Power -- 11476
    recipe = AddRecipe(11476, Q.UNCOMMON)
    recipe:SetSkillLevels(250, 250, 265, 285, 305)
    recipe:SetRecipeItem(9301, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(9264, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.HEALER)
    recipe:AddLimitedVendor(1313, 1, 4610, 1)

    -- Elixir of Demonslaying -- 11477
    recipe = AddRecipe(11477, Q.COMMON)
    recipe:SetSkillLevels(250, 250, 265, 285, 305)
    recipe:SetRecipeItem(9300, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(9224, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddLimitedVendor(8177, 1, 8178, 1)

    -- Elixir of Detect Demon -- 11478
    recipe = AddRecipe(11478, Q.COMMON)
    recipe:SetSkillLevels(250, 250, 265, 285, 305)
    recipe:SetCraftedItem(9233, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1386, 7948, 259585)

    -- Transmute: Iron to Gold -- 11479
    recipe = AddRecipe(11479, Q.COMMON)
    recipe:SetSkillLevels(225, 225, 240, 260, 280)
    recipe:SetRecipeItem(9304, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(3577, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_TRANSMUTE")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(3137, 4254)
    recipe:AddVendor(5594)

    -- Transmute: Mithril to Truesilver -- 11480
    recipe = AddRecipe(11480, Q.COMMON)
    recipe:SetSkillLevels(225, 225, 240, 260, 280)
    recipe:SetRecipeItem(9305, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(6037, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_TRANSMUTE")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(3137, 4254)
    recipe:AddLimitedVendor(5594, 1)

    -- Catseye Elixir -- 12609
    recipe = AddRecipe(12609, Q.COMMON)
    recipe:SetSkillLevels(200, 200, 220, 240, 260)
    recipe:SetCraftedItem(10592, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1386, 4160, 4611, 7948, 246795, 259585, 275322)

    -- Dreamless Sleep Potion -- 15833
    recipe = AddRecipe(15833, Q.COMMON)
    recipe:SetSkillLevels(230, 230, 245, 265, 285)
    recipe:SetCraftedItem(12190, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1386, 7948, 259585)

    -- Transmute: Arcanite -- 17187
    recipe = AddRecipe(17187, Q.COMMON)
    recipe:SetSkillLevels(275, 275, 275, 282, 290)
    recipe:SetRecipeItem(12958, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(12360, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_TRANSMUTE")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(5594)

    -- Stonescale Oil -- 17551
    recipe = AddRecipe(17551, Q.COMMON)
    recipe:SetSkillLevels(250, 250, 250, 255, 260)
    recipe:SetCraftedItem(13423, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_OIL")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1386, 7948, 259585)

    -- Mighty Rage Potion -- 17552
    recipe = AddRecipe(17552, Q.COMMON)
    recipe:SetRecipeItem(13476, "BIND_ON_EQUIP")
    recipe:SetSkillLevels(255, 255, 270, 290, 310)
    recipe:SetCraftedItem(13442, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK, F.DRUID, F.WARRIOR)
    recipe:AddMobDrop(7027)

    -- Superior Mana Potion -- 17553
    recipe = AddRecipe(17553, Q.COMMON)
    recipe:SetRecipeItem(13477, "BIND_ON_EQUIP")
    recipe:SetSkillLevels(260, 260, 275, 295, 315)
    recipe:SetCraftedItem(13443, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddLimitedVendor(4226, 1, 4610, 1)

    -- Elixir of Superior Defense -- 17554
    recipe = AddRecipe(17554, Q.COMMON)
    recipe:SetSkillLevels(265, 265, 280, 300, 320)
    recipe:SetRecipeItem(13478, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(13445, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
    recipe:AddLimitedVendor(3348, 1, 5178, 1)

    -- Elixir of the Sages -- 17555
    recipe = AddRecipe(17555, Q.COMMON)
    recipe:SetRecipeItem(13479, "BIND_ON_EQUIP")
    recipe:SetSkillLevels(270, 270, 285, 305, 325)
    recipe:SetCraftedItem(13447, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.HEALER)
    recipe:AddWorldDrop(Z.EASTERN_PLAGUELANDS)


    -- Elixir of Brute Force -- 17557
    recipe = AddRecipe(17557, Q.COMMON)
    recipe:SetRecipeItem(13481, "BIND_ON_EQUIP")
    recipe:SetSkillLevels(275, 275, 290, 310, 330)
    recipe:SetCraftedItem(13453, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)

    -- Transmute: Air to Fire -- 17559
    recipe = AddRecipe(17559, Q.UNCOMMON)
    recipe:SetSkillLevels(275, 275, 275, 282, 290)
    recipe:SetRecipeItem(13482, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(7078, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_TRANSMUTE")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.ARGENT_DAWN, REP.HONORED, 10856, 10857, 11536)

    -- Transmute: Fire to Earth -- 17560
    recipe = AddRecipe(17560, Q.UNCOMMON)
    recipe:SetSkillLevels(275, 275, 275, 282, 290)
    recipe:SetRecipeItem(13483, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(7076, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_TRANSMUTE")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(9499)

    -- Transmute: Earth to Water -- 17561
    recipe = AddRecipe(17561, Q.UNCOMMON)
    recipe:SetSkillLevels(275, 275, 275, 282, 290)
    recipe:SetRecipeItem(13484, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(7080, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_TRANSMUTE")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.TIMBERMAW_HOLD, REP.FRIENDLY, 11557)

    -- Transmute: Water to Air -- 17562
    recipe = AddRecipe(17562, Q.UNCOMMON)
    recipe:SetSkillLevels(275, 275, 275, 282, 290)
    recipe:SetRecipeItem(13485, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(7082, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_TRANSMUTE")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(11278)

    -- Transmute: Undeath to Water -- 17563
    recipe = AddRecipe(17563, Q.UNCOMMON)
    recipe:SetSkillLevels(275, 275, 275, 282, 290)
    recipe:SetRecipeItem(13486, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(7080, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_TRANSMUTE")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.MOLTEN_CORE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Transmute: Water to Undeath -- 17564
    recipe = AddRecipe(17564, Q.UNCOMMON)
    recipe:SetSkillLevels(275, 275, 275, 282, 290)
    recipe:SetRecipeItem(13487, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(12808, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_TRANSMUTE")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.STORM_CLIFFS, Z.THE_TAINTED_SCAR, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Transmute: Life to Earth -- 17565
    recipe = AddRecipe(17565, Q.UNCOMMON)
    recipe:SetSkillLevels(275, 275, 275, 282, 290)
    recipe:SetRecipeItem(13488, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(7076, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_TRANSMUTE")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.RUINS_OF_AHNQIRAJ, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Transmute: Earth to Life -- 17566
    recipe = AddRecipe(17566, Q.UNCOMMON)
    recipe:SetSkillLevels(275, 275, 275, 282, 290)
    recipe:SetRecipeItem(13489, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(12803, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_TRANSMUTE")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Greater Stoneshield Potion -- 17570
    recipe = AddRecipe(17570, Q.UNCOMMON)
    recipe:SetSkillLevels(280, 280, 295, 315, 335)
    recipe:SetRecipeItem(13490, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(13455, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
    recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DEMON_FALL_CANYON, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Elixir of the Mongoose -- 17571
    recipe = AddRecipe(17571, Q.UNCOMMON)
    recipe:SetSkillLevels(280, 280, 295, 315, 335)
    recipe:SetRecipeItem(13491, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(13452, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
    recipe:AddMobDrop(6201, 7106)

    -- Purification Potion -- 17572
    recipe = AddRecipe(17572, Q.COMMON)
    recipe:SetRecipeItem(13492, "BIND_ON_EQUIP")
    recipe:SetSkillLevels(285, 285, 300, 320, 340)
    recipe:SetCraftedItem(13462, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DEMON_FALL_CANYON, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Greater Arcane Elixir -- 17573
    recipe = AddRecipe(17573, Q.COMMON)
    recipe:SetRecipeItem(13493, "BIND_ON_EQUIP")
    recipe:SetSkillLevels(285, 285, 300, 320, 340)
    recipe:SetCraftedItem(13454, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
    recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MOLTEN_CORE, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Greater Fire Protection Potion -- 17574
    recipe = AddRecipe(17574, Q.UNCOMMON)
    recipe:SetSkillLevels(290, 290, 305, 325, 345)
    recipe:SetRecipeItem(13494, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(13457, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(9262, 9264)

    -- Greater Frost Protection Potion -- 17575
    recipe = AddRecipe(17575, Q.UNCOMMON)
    recipe:SetSkillLevels(290, 290, 305, 325, 345)
    recipe:SetRecipeItem(13495, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(13456, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(7428)

    -- Greater Nature Protection Potion -- 17576
    recipe = AddRecipe(17576, Q.UNCOMMON)
    recipe:SetSkillLevels(290, 290, 305, 325, 345)
    recipe:SetRecipeItem(13496, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(13458, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(1812, 1813)

    -- Greater Arcane Protection Potion -- 17577
    recipe = AddRecipe(17577, Q.UNCOMMON)
    recipe:SetSkillLevels(290, 290, 305, 325, 345)
    recipe:SetRecipeItem(13497, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(13461, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(7437)

    -- Greater Shadow Protection Potion -- 17578
    recipe = AddRecipe(17578, Q.UNCOMMON)
    recipe:SetSkillLevels(290, 290, 305, 325, 345)
    recipe:SetRecipeItem(13499, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(13459, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(8546, 8550)

    -- Major Mana Potion -- 17580
    recipe = AddRecipe(17580, Q.UNCOMMON)
    recipe:SetSkillLevels(295, 295, 310, 330, 350)
    recipe:SetRecipeItem(13501, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(13444, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(11278)
    recipe:AddMobDrop(1853)

    -- Potion of Petrification -- 17634
    recipe = AddRecipe(17634, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 315, 322, 330)
    recipe:SetRecipeItem(13518, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(13506, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_FLASK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(227853)
    recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Elixir of Frost Power -- 21923
    recipe = AddRecipe(21923, Q.COMMON)
    recipe:SetSkillLevels(190, 190, 210, 230, 250)
    recipe:SetRecipeItem(17709, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(17708, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.HEALER)
    recipe:AddWorldEvent("WINTER_VEIL")

    -- Major Rejuvenation Potion -- 22732
    recipe = AddRecipe(22732, Q.RARE)
    recipe:SetSkillLevels(300, 300, 310, 320, 330)
    recipe:SetRecipeItem(18257, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(18253, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.MOLTEN_CORE)

    -- Elixir of Greater Water Breathing -- 22808
    recipe = AddRecipe(22808, Q.COMMON)
    recipe:SetSkillLevels(215, 215, 230, 250, 270)
    recipe:SetCraftedItem(18294, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1386, 4160, 4611, 7948, 246795, 259585, 275322)

    -- Gurubashi Mojo Madness -- 24266
    recipe = AddRecipe(24266, Q.RARE)
    recipe:SetSkillLevels(315, 315, 315, 322, 330)
    recipe:SetCraftedItem(19931, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)

    -- Mageblood Elixir -- 24365
    recipe = AddRecipe(24365, Q.COMMON)
    recipe:SetSkillLevels(275, 275, 290, 310, 330)
    recipe:SetRecipeItem(20011, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(20007, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.HEALER)
    recipe:AddRepVendor(FAC.ZANDALAR_TRIBE, REP.REVERED, 14921)

    -- Greater Dreamless Sleep Potion -- 24366
    recipe = AddRecipe(24366, Q.COMMON)
    recipe:SetSkillLevels(275, 275, 290, 310, 330)
    recipe:SetRecipeItem(20012, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(20002, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.ZANDALAR_TRIBE, REP.FRIENDLY, 14921)

    -- Living Action Potion -- 24367
    recipe = AddRecipe(24367, Q.COMMON)
    recipe:SetSkillLevels(285, 285, 300, 320, 340)
    recipe:SetRecipeItem(20013, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(20008, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_POTION")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.ZANDALAR_TRIBE, REP.EXALTED, 14921)

    -- Mighty Troll's Blood Elixir -- 24368
    recipe = AddRecipe(24368, Q.COMMON)
    recipe:SetSkillLevels(290, 290, 305, 325, 345)
    recipe:SetRecipeItem(20014, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(20004, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.ZANDALAR_TRIBE, REP.HONORED, 14921)

    -- Transmute: Elemental Fire -- 25146
    recipe = AddRecipe(25146, Q.COMMON)
    recipe:SetSkillLevels(300, 300, 301, 305, 310)
    recipe:SetRecipeItem(20761, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(7068, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_TRANSMUTE")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.FRIENDLY, 12944)

    -- Elixir of Greater Firepower -- 26277
    recipe = AddRecipe(26277, Q.UNCOMMON)
    recipe:SetSkillLevels(250, 250, 265, 285, 305)
    recipe:SetRecipeItem(21547, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(21546, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ALCHEMY_ELIXIR")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.HEALER)
    recipe:AddWorldDrop(Z.SEARING_GORGE)

    self.InitializeRecipes = nil
end
