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
["note"] = "Learn Elixir of Minor Force from an Alchemy trainer and use Silverleaf to reach skill 10.",
["to"] = 10,
["variants"] = {
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
["id"] = "225-235",
["note"] = "Learn Artisan Alchemy before continuing with Nature Protection Potions.",
["to"] = 235,
["variants"] = {
{
["count"] = 26,
["materials"] = {
{
3357,
26
},
{
3372,
26
},
{
3820,
26
}
},
["spellID"] = 7259,
["title"] = "Nature Protection Potion"
}
}
},
{
["from"] = 235,
["id"] = "235-250",
["note"] = "Learn Elixir of Greater Intellect from an Artisan trainer.",
["to"] = 250,
["variants"] = {
{
["count"] = 15,
["materials"] = {
{
3358,
15
},
{
8839,
15
},
{
8925,
15
}
},
["spellID"] = 11465,
["title"] = "Elixir of Greater Intellect"
}
}
},
{
["from"] = 250,
["id"] = "250-260",
["note"] = "Each craft makes two Stonescale Oils. Save all 94 for Elixir of Greater Defense. If eels are expensive, you can instead make about 21 Greater Intellect elixirs from 250 to 265 and finish with Superior Mana Potion. The shopping list follows the displayed oil and elixir steps, so adjust it manually for that shortcut.",
["to"] = 260,
["variants"] = {
{
["count"] = 47,
["materials"] = {
{
3372,
47
},
{
13422,
47
}
},
["outputCount"] = 2,
["outputItemID"] = 13423,
["spellID"] = 17551,
["title"] = "Stonescale Oil"
}
}
},
{
["from"] = 260,
["id"] = "260-265",
["note"] = "Resume Elixir of Greater Intellect until skill 265. Skip this section if you used it to advance directly from 250 to 265.",
["to"] = 265,
["variants"] = {
{
["count"] = 10,
["materials"] = {
{
3358,
10
},
{
8839,
10
},
{
8925,
10
}
},
["spellID"] = 11465,
["title"] = "Elixir of Greater Intellect"
}
}
},
{
["from"] = 265,
["id"] = "265-300",
["note"] = "Choose Elixir of Greater Defense if you prepared the oil. If you skipped the oil, choose Superior Mana Potion.",
["to"] = 300,
["variants"] = {
{
["count"] = 47,
["materials"] = {
{
8838,
47
},
{
8925,
47
},
{
13423,
94
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
["count"] = 55,
["materials"] = {
{
8838,
110
},
{
8839,
110
},
{
8925,
55
}
},
["note"] = "Buy Recipe: Superior Mana Potion from Algernon (Horde) or Ulthir (Alliance). Limited stock may require another visit.",
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
["introduction"] = "Craft counts are estimates; stop at each target skill. Save Fire Oil for the 150-165 elixirs. The default Artisan route prepares Stonescale Oil for Elixir of Greater Defense. Compare material costs before choosing the last step.",
["locations"] = {
[1386] = {
["faction"] = "Horde",
["mapID"] = 1435,
["name"] = "Rogvar",
["x"] = 48.5,
["y"] = 55.8,
["zone"] = Z["SWAMP_OF_SORROWS"]
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
[13422] = "Stonescale Eel",
[13423] = "Stonescale Oil",
[13477] = "Recipe: Superior Mana Potion",
[13478] = "Recipe: Elixir of Superior Defense",
[2447] = "Peacebloom",
[2449] = "Earthroot",
[2450] = "Briarthorn",
[3356] = "Kingsblood",
[3357] = "Liferoot",
[3358] = "Khadgar's Whisker",
[3371] = "Empty Vial",
[3372] = "Leaded Vial",
[3820] = "Stranglekelp",
[6359] = "Firefin Snapper",
[6371] = "Fire Oil",
[765] = "Silverleaf",
[785] = "Mageroyal",
[8838] = "Sungrass",
[8839] = "Blindweed",
[8925] = "Crystal Vial"
},
["materialSources"] = {
[13422] = {
["kind"] = "auction",
["note"] = "Fish for Stonescale Eel or buy it from another player or the Auction House."
},
[13423] = {
["kind"] = "craft",
["note"] = "Keep both Stonescale Oils from each craft for Elixir of Greater Defense.",
["spellID"] = 17551,
["stepID"] = "250-260"
},
[13477] = {
["kind"] = "supply",
["note"] = "Buy this recipe from a listed vendor. Purchase it only if it is not already learned."
},
[13478] = {
["kind"] = "supply",
["note"] = "Buy this recipe from a listed vendor. Purchase it only if it is not already learned."
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
[3358] = {
["kind"] = "herb",
["skill"] = 185,
["zones"] = {
Z["STRANGLETHORN_VALE"],
Z["ARATHI_HIGHLANDS"]
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
[8838] = {
["kind"] = "auction",
["note"] = "Gather Sungrass with Herbalism, trade with another player, or buy it at the Auction House. Confirm availability before committing to the untested Artisan chapter."
},
[8839] = {
["kind"] = "auction",
["note"] = "Gather Blindweed with Herbalism, trade with another player, or buy it at the Auction House. Confirm availability before committing to the untested Artisan chapter."
},
[8925] = {
["kind"] = "supply"
}
},
["maxSkill"] = 300,
["minSkill"] = 1,
["setupItems"] = {

},
["shoppingRequirements"] = {

},
["source"] = "https://www.wow-professions.com/forever/alchemy-leveling-guide",
["sourceDate"] = "2026-11-14",
["sourceHash"] = "189f9415104a6d0835dc9b8ba1498cfd06c2940be7014d1d17c658782fbcf431",
["stepProgressMigrations"] = {
["230-265"] = {
"235-250",
"250-260",
"260-265"
},
["240-265"] = {
"250-260",
"260-265"
}
},
["supplies"] = {
{
["faction"] = "Horde",
["id"] = "algernon",
["items"] = {
[13477] = true,
[3371] = true,
[3372] = true,
[8925] = true
},
["mapID"] = 1458,
["name"] = "Algernon",
["x"] = 52.1,
["y"] = 74.5,
["zone"] = Z["UNDERCITY"]
},
{
["faction"] = "Alliance",
["id"] = "ulthir",
["items"] = {
[13477] = true,
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
[3371] = true,
[3372] = true,
[8925] = true
},
["mapID"] = 1454,
["name"] = "Kor'geld",
["x"] = 55.8,
["y"] = 34.1,
["zone"] = Z["ORGRIMMAR"]
},
{
["faction"] = "Alliance",
["id"] = "soolie-berryfizz",
["items"] = {
[13478] = true,
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
["faction"] = "Horde",
["id"] = "mani-winterhoof",
["items"] = {
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
}
},
["title"] = "Alchemy Guide",
["tools"] = {

}
}
