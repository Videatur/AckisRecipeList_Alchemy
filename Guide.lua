local _, private = ...
local addon = private.addon
if not addon then return end
local module = addon:GetModule(private.module_name)
local Z = addon.constants.ZONE_NAMES
module.Guide = {
["chapters"] = {
{
["from"] = 1,
["id"] = "apprentice",
["steps"] = {
{
["from"] = 1,
["id"] = "1-10",
["note"] = "Choose the starting elixir whose herb is easier to obtain. Learn the recipe from an Alchemy trainer.",
["to"] = 10,
["variants"] = {
{
["count"] = 9,
["materials"] = {
{
2447,
9
},
{
3371,
9
}
},
["spellID"] = 1245246,
["title"] = "Minor Arcane Elixir"
},
{
["count"] = 9,
["materials"] = {
{
765,
9
},
{
3371,
9
}
},
["spellID"] = 1245250,
["title"] = "Elixir of Minor Force"
}
}
},
{
["from"] = 10,
["id"] = "10-55",
["to"] = 55,
["variants"] = {
{
["count"] = 45,
["materials"] = {
{
765,
45
},
{
2447,
45
},
{
3371,
45
}
},
["spellID"] = 7183,
["title"] = "Elixir of Minor Defense"
}
}
}
},
["title"] = "Apprentice",
["to"] = 55,
["training"] = {
["level"] = 0,
["rank"] = "Apprentice Alchemy",
["skill"] = 0,
["trainers"] = {
3184,
2132,
1215,
3603,
11046,
11044,
11047,
11041,
5500,
1246,
257019,
253004,
257005
}
}
},
{
["from"] = 55,
["id"] = "journeyman",
["steps"] = {
{
["from"] = 55,
["id"] = "55-65",
["to"] = 65,
["variants"] = {
{
["count"] = 10,
["materials"] = {
{
785,
10
},
{
2447,
10
},
{
3371,
10
}
},
["spellID"] = 2331,
["title"] = "Minor Mana Potion"
}
}
},
{
["from"] = 65,
["id"] = "65-90",
["note"] = "Skill gains become less reliable from 80. Keep crafting until 90.",
["to"] = 90,
["variants"] = {
{
["count"] = 27,
["materials"] = {
{
2447,
27
},
{
2449,
54
},
{
3371,
27
}
},
["spellID"] = 2334,
["title"] = "Elixir of Minor Fortitude"
}
}
},
{
["from"] = 90,
["id"] = "90-120",
["note"] = "If you also level Tailoring, save these elixirs for Gloves of Meditation.",
["to"] = 120,
["variants"] = {
{
["count"] = 30,
["materials"] = {
{
785,
30
},
{
2450,
60
},
{
3371,
30
}
},
["spellID"] = 3171,
["title"] = "Elixir of Wisdom"
}
}
},
{
["from"] = 120,
["id"] = "120-130",
["to"] = 130,
["variants"] = {
{
["count"] = 10,
["materials"] = {
{
785,
10
},
{
3371,
10
},
{
3820,
10
}
},
["spellID"] = 3173,
["title"] = "Lesser Mana Potion"
}
}
},
{
["from"] = 130,
["id"] = "130-150",
["to"] = 150,
["variants"] = {
{
["count"] = 20,
["materials"] = {
{
3371,
20
},
{
6359,
40
}
},
["note"] = "Each craft produces 2 oils. Reserve 30 oils for 150-165.",
["outputCount"] = 2,
["outputItemID"] = 6371,
["spellID"] = 7837,
["title"] = "Fire Oil"
},
{
["count"] = 20,
["materials"] = {
{
785,
20
},
{
3371,
20
},
{
3820,
20
}
},
["note"] = "Choose this route if fish are hard to obtain; continue with mana potions at 150-165.",
["spellID"] = 3173,
["title"] = "Lesser Mana Potion"
}
}
}
},
["title"] = "Journeyman",
["to"] = 150,
["training"] = {
["level"] = 10,
["rank"] = "Journeyman Alchemy",
["skill"] = 50,
["trainers"] = {
3347,
4609,
3009,
5499,
5177,
11042
}
}
},
{
["from"] = 150,
["id"] = "expert",
["steps"] = {
{
["from"] = 150,
["id"] = "150-165",
["to"] = 165,
["variants"] = {
{
["count"] = 15,
["materials"] = {
{
3356,
15
},
{
3372,
15
},
{
6371,
30
}
},
["note"] = "Use the oils reserved from 130-150.",
["spellID"] = 7845,
["title"] = "Elixir of Fire Power"
},
{
["count"] = 22,
["materials"] = {
{
785,
22
},
{
3371,
22
},
{
3820,
22
}
},
["note"] = "Use this if you chose the mana-potion alternative at 130-150.",
["spellID"] = 3173,
["title"] = "Lesser Mana Potion"
}
}
},
{
["from"] = 165,
["id"] = "165-195",
["to"] = 195,
["variants"] = {
{
["count"] = 36,
["materials"] = {
{
3356,
36
},
{
3372,
36
},
{
3820,
36
}
},
["spellID"] = 3452,
["title"] = "Mana Potion"
}
}
},
{
["from"] = 195,
["id"] = "195-225",
["to"] = 225,
["variants"] = {
{
["count"] = 36,
["materials"] = {
{
3357,
36
},
{
3372,
36
},
{
3820,
36
}
},
["note"] = "Buy the recipe on this character: it binds on pickup. Skill gains become less reliable from 210; extra materials may be needed to reach 225.",
["spellID"] = 7259,
["title"] = "Nature Protection Potion"
}
}
}
},
["title"] = "Expert",
["to"] = 225,
["training"] = {
["cost"] = "50s",
["level"] = 20,
["rank"] = "Expert Alchemy",
["skill"] = 125,
["trainers"] = {
4611,
4160
}
}
},
{
["from"] = 225,
["id"] = "artisan",
["steps"] = {
{
["from"] = 225,
["id"] = "225-230",
["note"] = "Learn Artisan Alchemy before continuing. Use Nature Protection Potion for approximately five more skill points. The source has not tested this chapter in Forever.",
["to"] = 230,
["variants"] = {
{
["count"] = 12,
["materials"] = {
{
3357,
12
},
{
3372,
12
},
{
3820,
12
}
},
["spellID"] = 7259,
["title"] = "Nature Protection Potion"
}
}
},
{
["from"] = 230,
["id"] = "230-265",
["note"] = "Learn Draught of Detect Undead from an Artisan trainer. Skill gains become less reliable from 245; allow additional materials if needed.",
["to"] = 265,
["variants"] = {
{
["count"] = 45,
["materials"] = {
{
8836,
45
},
{
8925,
45
}
},
["spellID"] = 11460,
["title"] = "Draught of Detect Undead"
}
}
},
{
["from"] = 265,
["id"] = "265-275",
["note"] = "Buy Recipe: Superior Mana Potion from Algernon (Horde) or Ulthir (Alliance). Limited stock may require another visit.",
["to"] = 275,
["variants"] = {
{
["count"] = 10,
["materials"] = {
{
8838,
20
},
{
8839,
20
},
{
8925,
10
}
},
["recipeItemID"] = 13477,
["shoppingRequirements"] = {
{
13477,
1
}
},
["spellID"] = 17553,
["title"] = "Superior Mana Potion"
}
}
},
{
["from"] = 275,
["id"] = "275-290",
["note"] = "Compare the full ingredient cost of each option before choosing. Stop at 290. The spell Elixir of Greater Defense uses Recipe: Elixir of Superior Defense; spell 17554 and recipe item 13478 identify the same craft.",
["to"] = 290,
["variants"] = {
{
["count"] = 20,
["materials"] = {
{
8838,
40
},
{
8839,
40
},
{
8925,
20
}
},
["recipeItemID"] = 13477,
["shoppingRequirements"] = {
{
13477,
1
}
},
["spellID"] = 17553,
["title"] = "Superior Mana Potion"
},
{
["count"] = 17,
["materials"] = {
{
8838,
17
},
{
8925,
17
},
{
13423,
34
}
},
["note"] = "Buy Recipe: Elixir of Superior Defense from Kor'geld (Horde) or Soolie Berryfizz (Alliance). The resulting elixir is named Greater Defense in Forever.",
["recipeItemID"] = 13478,
["shoppingRequirements"] = {
{
13478,
1
}
},
["spellID"] = 17554,
["title"] = "Elixir of Greater Defense"
},
{
["count"] = 27,
["materials"] = {
{
8845,
81
},
{
8925,
27
}
},
["note"] = "Buy Recipe: Elixir of Shadow Power from Algernon (Horde) or Maria Lumere (Alliance).",
["recipeItemID"] = 9301,
["shoppingRequirements"] = {
{
9301,
1
}
},
["spellID"] = 11476,
["title"] = "Elixir of Shadow Power"
}
}
},
{
["from"] = 290,
["id"] = "290-300",
["note"] = "This route uses Recipe: Major Frenzy Potion. Buy it on the character learning Alchemy: it binds on pickup. The source has not finalized the cheapest last-ten-point route. Other recipes may be viable, but their quantities are not included here.",
["to"] = 300,
["variants"] = {
{
["count"] = 17,
["materials"] = {
{
8839,
34
},
{
13466,
51
},
{
18256,
17
}
},
["note"] = "Requires Honored with Durotar Supply and Logistics (Horde) or Azeroth Commerce Authority (Alliance), plus 240 Merchant's Favor. Buy the recipe from Apothecary Durelle near the Crossroads or Nina Surefire at Three Corners. Each craft produces two potions; the estimate is 17 crafts, not 17 finished potions.",
["recipeItemID"] = 250987,
["shoppingRequirements"] = {
{
250987,
1
}
},
["spellID"] = 1251740,
["title"] = "Major Frenzy Potion"
}
}
}
},
["title"] = "Artisan",
["to"] = 300,
["training"] = {
["level"] = 35,
["rank"] = "Artisan Alchemy",
["skill"] = 200,
["trainers"] = {
1386,
7948
}
}
}
},
["id"] = "forever-alchemy-1-225",
["introduction"] = "Craft counts are estimates; stop at each target skill. Keep the Fire Oil prepared for later crafts. The source has not tested 225-300 in Forever; confirm recipe access and material costs before buying that chapter. The final step uses the Merchant's Favor recipe.",
["locations"] = {
[1386] = {
["faction"] = "Horde",
["mapID"] = 1435,
["name"] = "Rogvar",
["x"] = 48.5,
["y"] = 55.8,
["zone"] = Z["SWAMP_OF_SORROWS"]
},
[248196] = {
["faction"] = "Horde",
["mapID"] = 1413,
["name"] = "Apothecary Durelle",
["x"] = 49.9,
["y"] = 29.6,
["zone"] = Z["THE_BARRENS"]
},
[256729] = {
["faction"] = "Alliance",
["mapID"] = 1433,
["name"] = "Nina Surefire",
["x"] = 10.8,
["y"] = 72.5,
["zone"] = Z["REDRIDGE_MOUNTAINS"]
},
[7948] = {
["faction"] = "Alliance",
["mapID"] = 1444,
["name"] = "Kylanna Windwhisper",
["x"] = 32.6,
["y"] = 43.8,
["zone"] = Z["FERALAS"]
}
},
["materialNames"] = {
[13423] = "Stonescale Oil",
[13466] = "Plaguebloom",
[13477] = "Recipe: Superior Mana Potion",
[13478] = "Recipe: Elixir of Superior Defense",
[18256] = "Imbued Vial",
[2447] = "Peacebloom",
[2449] = "Earthroot",
[2450] = "Briarthorn",
[250987] = "Recipe: Major Frenzy Potion",
[3356] = "Kingsblood",
[3357] = "Liferoot",
[3371] = "Empty Vial",
[3372] = "Leaded Vial",
[3820] = "Stranglekelp",
[6359] = "Firefin Snapper",
[6371] = "Fire Oil",
[765] = "Silverleaf",
[785] = "Mageroyal",
[8836] = "Arthas' Tears",
[8838] = "Sungrass",
[8839] = "Blindweed",
[8845] = "Ghost Mushroom",
[8925] = "Crystal Vial",
[9301] = "Recipe: Elixir of Shadow Power"
},
["materialSources"] = {
[13423] = {
["kind"] = "auction",
["note"] = "Obtain finished Stonescale Oil from an Alchemist or the Auction House. The shopping list counts finished oil; it does not assume a Stonescale Eel preparation route."
},
[13466] = {
["kind"] = "auction",
["note"] = "Gather Plaguebloom with Herbalism, trade with another player, or buy it at the Auction House. Confirm availability before committing to the untested Artisan chapter."
},
[13477] = {
["kind"] = "supply",
["note"] = "Buy this recipe from a listed vendor. Purchase it only if it is not already learned."
},
[13478] = {
["kind"] = "supply",
["note"] = "Buy this recipe from a listed vendor. Purchase it only if it is not already learned."
},
[18256] = {
["kind"] = "supply"
},
[2447] = {
["kind"] = "herb",
["skill"] = 1,
["zones"] = {
Z["ELWYNN_FOREST"],
Z["TIRISFAL_GLADES"],
Z["DUROTAR"],
Z["TELDRASSIL"]
}
},
[2449] = {
["kind"] = "herb",
["skill"] = 15,
["zones"] = {
Z["ELWYNN_FOREST"],
Z["TIRISFAL_GLADES"],
Z["DUROTAR"],
Z["TELDRASSIL"]
}
},
[2450] = {
["kind"] = "herb",
["skill"] = 70,
["zones"] = {
Z["THE_BARRENS"],
Z["SILVERPINE_FOREST"],
Z["LOCH_MODAN"],
Z["DARKSHORE"]
}
},
[250987] = {
["kind"] = "supply",
["note"] = "Buy from your faction vendor: Honored reputation and 240 Merchant's Favor required. The recipe binds on pickup."
},
[3356] = {
["kind"] = "herb",
["skill"] = 125,
["zones"] = {
Z["HILLSBRAD_FOOTHILLS"],
Z["WETLANDS"],
Z["STRANGLETHORN_VALE"]
}
},
[3357] = {
["kind"] = "herb",
["skill"] = 150,
["zones"] = {
Z["WETLANDS"],
Z["HILLSBRAD_FOOTHILLS"],
Z["STRANGLETHORN_VALE"]
}
},
[3371] = {
["kind"] = "supply"
},
[3372] = {
["kind"] = "supply"
},
[3820] = {
["kind"] = "herb",
["note"] = "Search underwater along the coast.",
["skill"] = 85,
["zones"] = {
Z["DARKSHORE"],
Z["WETLANDS"],
Z["HILLSBRAD_FOOTHILLS"]
}
},
[6359] = {
["kind"] = "fish",
["note"] = "Fish coastal waters or Firefin Snapper schools; catches depend on the fishing area.",
["zones"] = {
Z["STRANGLETHORN_VALE"],
Z["WETLANDS"],
Z["HILLSBRAD_FOOTHILLS"]
}
},
[6371] = {
["kind"] = "craft",
["spellID"] = 7837,
["stepID"] = "130-150"
},
[765] = {
["kind"] = "herb",
["skill"] = 1,
["zones"] = {
Z["ELWYNN_FOREST"],
Z["TIRISFAL_GLADES"],
Z["DUROTAR"],
Z["TELDRASSIL"]
}
},
[785] = {
["kind"] = "herb",
["skill"] = 50,
["zones"] = {
Z["THE_BARRENS"],
Z["SILVERPINE_FOREST"],
Z["LOCH_MODAN"],
Z["DARKSHORE"]
}
},
[8836] = {
["kind"] = "auction",
["note"] = "Gather Arthas' Tears with Herbalism, trade with another player, or buy it at the Auction House. Confirm availability before committing to the untested Artisan chapter."
},
[8838] = {
["kind"] = "auction",
["note"] = "Gather Sungrass with Herbalism, trade with another player, or buy it at the Auction House. Confirm availability before committing to the untested Artisan chapter."
},
[8839] = {
["kind"] = "auction",
["note"] = "Gather Blindweed with Herbalism, trade with another player, or buy it at the Auction House. Confirm availability before committing to the untested Artisan chapter."
},
[8845] = {
["kind"] = "auction",
["note"] = "Gather Ghost Mushroom with Herbalism, trade with another player, or buy it at the Auction House. Confirm availability before committing to the untested Artisan chapter."
},
[8925] = {
["kind"] = "supply"
},
[9301] = {
["kind"] = "supply",
["note"] = "Buy this recipe from a listed vendor. Purchase it only if it is not already learned."
}
},
["maxSkill"] = 300,
["minSkill"] = 1,
["setupItems"] = {

},
["shoppingRequirements"] = {

},
["source"] = "https://www.wow-professions.com/forever/alchemy-leveling-guide",
["sourceDate"] = "2026-10-21",
["sourceHash"] = "c00488b17d8598b97d087ab3efafd8ee3c4b80425a6a204f2b436e036f1cec86",
["supplies"] = {
{
["faction"] = "Horde",
["id"] = "algernon",
["items"] = {
[13477] = true,
[18256] = true,
[3371] = true,
[3372] = true,
[8925] = true,
[9301] = true
},
["mapID"] = 1458,
["name"] = "Algernon",
["x"] = 51.7,
["y"] = 74.7,
["zone"] = Z["UNDERCITY"]
},
{
["faction"] = "Alliance",
["id"] = "ulthir",
["items"] = {
[13477] = true,
[18256] = true,
[3371] = true,
[3372] = true,
[8925] = true
},
["mapID"] = 1457,
["name"] = "Ulthir",
["x"] = 56.0,
["y"] = 24.5,
["zone"] = Z["DARNASSUS"]
},
{
["faction"] = "Horde",
["id"] = "korgeld",
["items"] = {
[13478] = true,
[18256] = true,
[3371] = true,
[3372] = true,
[8925] = true
},
["mapID"] = 1454,
["name"] = "Kor'geld",
["x"] = 56.3,
["y"] = 34.3,
["zone"] = Z["ORGRIMMAR"]
},
{
["faction"] = "Alliance",
["id"] = "soolie-berryfizz",
["items"] = {
[13478] = true,
[18256] = true,
[3371] = true,
[3372] = true,
[8925] = true
},
["mapID"] = 1455,
["name"] = "Soolie Berryfizz",
["x"] = 66.5,
["y"] = 55.0,
["zone"] = Z["IRONFORGE"]
},
{
["faction"] = "Alliance",
["id"] = "maria-lumere",
["items"] = {
[18256] = true,
[3371] = true,
[3372] = true,
[8925] = true,
[9301] = true
},
["mapID"] = 1453,
["name"] = "Maria Lumere",
["x"] = 55.6,
["y"] = 85.6,
["zone"] = Z["STORMWIND_CITY"]
},
{
["faction"] = "Horde",
["id"] = "mani-winterhoof",
["items"] = {
[18256] = true,
[3371] = true,
[3372] = true,
[8925] = true
},
["mapID"] = 1456,
["name"] = "Mani Winterhoof",
["x"] = 47.0,
["y"] = 34.5,
["zone"] = Z["THUNDER_BLUFF"]
},
{
["faction"] = "Alliance",
["id"] = "narret-shadowgrove",
["items"] = {
[3371] = true
},
["mapID"] = 1438,
["name"] = "Narret Shadowgrove",
["x"] = 55.3,
["y"] = 57.1,
["zone"] = Z["TELDRASSIL"]
},
{
["faction"] = "Horde",
["id"] = "apothecary-durelle",
["items"] = {
[250987] = true
},
["mapID"] = 1413,
["name"] = "Apothecary Durelle",
["x"] = 49.9,
["y"] = 29.6,
["zone"] = Z["THE_BARRENS"]
},
{
["faction"] = "Alliance",
["id"] = "nina-surefire",
["items"] = {
[250987] = true
},
["mapID"] = 1433,
["name"] = "Nina Surefire",
["x"] = 10.8,
["y"] = 72.5,
["zone"] = Z["REDRIDGE_MOUNTAINS"]
}
},
["title"] = "Alchemy Guide",
["tools"] = {

}
}
