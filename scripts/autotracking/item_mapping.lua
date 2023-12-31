-- use this file to map the AP item ids to your items
-- first value is the code of the target item and the second is the item type (currently only "toggle", "progressive" and "toggle" but feel free to expand for your needs!)
-- here are the SM items as an example: https://github.com/Cyb3RGER/sm_ap_tracker/blob/main/scripts/autotracking/item_mapping.lua
ITEM_MAPPING = {
    [350103] = {"chainsaw", "toggle"},
    [350100] = {"shotgun", "toggle"},
    [350101] = {"rocketlauncher", "toggle"},
    [350102] = {"plasmagun", "toggle"},
    [350104] = {"chaingun", "toggle"},
    [350105] = {"bfg9000", "toggle"},
    [350000] = {"e1m1_access", "toggle"},
    [350002] = {"e1m2_access", "toggle"},
    [350005] = {"e1m3_access", "toggle"},
    [350009] = {"e1m4_access", "toggle"},
    [350013] = {"e1m5_access", "toggle"},
    [350017] = {"e1m6_access", "toggle"},
    [350022] = {"e1m7_access", "toggle"},
    [350027] = {"e1m8_access", "toggle"},
    [350029] = {"e1m9_access", "toggle"},
    [350003] = {"e1m2_red", "toggle"},
    [350007] = {"e1m3_blue", "toggle"},
    [350006] = {"e1m3_yellow", "toggle"},
    [350011] = {"e1m4_blue", "toggle"},
    [350010] = {"e1m4_yellow", "toggle"},
    [350014] = {"e1m5_blue", "toggle"},
    [350015] = {"e1m5_yellow", "toggle"},
    [350018] = {"e1m6_blue", "toggle"},
    [350020] = {"e1m6_yellow", "toggle"},
    [350019] = {"e1m6_red", "toggle"},
    [350024] = {"e1m7_blue", "toggle"},
    [350023] = {"e1m7_yellow", "toggle"},
    [350025] = {"e1m7_red", "toggle"},
    [350032] = {"e1m9_blue", "toggle"},
    [350030] = {"e1m9_yellow", "toggle"},
    [350031] = {"e1m9_red", "toggle"},
    [350034] = {"e2m1_access", "toggle"},
    [350038] = {"e2m2_access", "toggle"},
    [350043] = {"e2m3_access", "toggle"},
    [350046] = {"e2m4_access", "toggle"},
    [350050] = {"e2m5_access", "toggle"},
    [350052] = {"e2m6_access", "toggle"},
    [350057] = {"e2m7_access", "toggle"},
    [350062] = {"e2m8_access", "toggle"},
    [350064] = {"e2m9_access", "toggle"},
    [350035] = {"e2m1_blue", "toggle"},
    [350036] = {"e2m1_red", "toggle"},
    [350039] = {"e2m2_blue", "toggle"},
    [350040] = {"e2m2_yellow", "toggle"},
    [350041] = {"e2m2_red", "toggle"},
    [350044] = {"e2m3_blue", "toggle"},
    [350047] = {"e2m4_blue", "toggle"},
    [350048] = {"e2m4_yellow", "toggle"},
    [350053] = {"e2m6_blue", "toggle"},
    [350054] = {"e2m6_yellow", "toggle"},
    [350055] = {"e2m6_red", "toggle"},
    [350060] = {"e2m7_blue", "toggle"},
    [350059] = {"e2m7_yellow", "toggle"},
    [350058] = {"e2m7_red", "toggle"},
    [350065] = {"e2m9_blue", "toggle"},
    [350067] = {"e2m9_yellow", "toggle"},
    [350066] = {"e2m9_red", "toggle"},
    [350069] = {"e3m1_access", "toggle"},
    [350071] = {"e3m2_access", "toggle"},
    [350074] = {"e3m3_access", "toggle"},
    [350077] = {"e3m4_access", "toggle"},
    [350082] = {"e3m5_access", "toggle"},
    [350086] = {"e3m6_access", "toggle"},
    [350089] = {"e3m7_access", "toggle"},
    [350094] = {"e3m8_access", "toggle"},
    [350096] = {"e3m9_access", "toggle"},
    [350072] = {"e3m2_blue", "toggle"},
    [350075] = {"e3m3_blue", "toggle"},
    [350078] = {"e3m4_blue", "toggle"},
    [350079] = {"e3m4_yellow", "toggle"},
    [350080] = {"e3m4_red", "toggle"},
    [350083] = {"e3m5_blue", "toggle"},
    [350084] = {"e3m5_yellow", "toggle"},
    [350087] = {"e3m6_blue", "toggle"},
    [350090] = {"e3m7_blue", "toggle"},
    [350092] = {"e3m7_yellow", "toggle"},
    [350091] = {"e3m7_red", "toggle"},
    [350097] = {"e3m9_blue", "toggle"},
    [350098] = {"e3m9_red", "toggle"},
    [350118] = {"e1m1_complete", "toggle"},
    [350119] = {"e1m2_complete", "toggle"},
    [350120] = {"e1m3_complete", "toggle"},
    [350121] = {"e1m4_complete", "toggle"},
    [350122] = {"e1m5_complete", "toggle"},
    [350123] = {"e1m6_complete", "toggle"},
    [350124] = {"e1m7_complete", "toggle"},
    [350125] = {"e1m8_complete", "toggle"},
    [350126] = {"e1m9_complete", "toggle"},
    [350127] = {"e2m1_complete", "toggle"},
    [350128] = {"e2m2_complete", "toggle"},
    [350129] = {"e2m3_complete", "toggle"},
    [350130] = {"e2m4_complete", "toggle"},
    [350131] = {"e2m5_complete", "toggle"},
    [350132] = {"e2m6_complete", "toggle"},
    [350133] = {"e2m7_complete", "toggle"},
    [350134] = {"e2m8_complete", "toggle"},
    [350135] = {"e2m9_complete", "toggle"},
    [350136] = {"e3m1_complete", "toggle"},
    [350137] = {"e3m2_complete", "toggle"},
    [350138] = {"e3m3_complete", "toggle"},
    [350139] = {"e3m4_complete", "toggle"},
    [350140] = {"e3m5_complete", "toggle"},
    [350141] = {"e3m6_complete", "toggle"},
    [350142] = {"e3m7_complete", "toggle"},
    [350143] = {"e3m8_complete", "toggle"},
    [350144] = {"e3m9_complete", "toggle"},
    [350145] = {"e4m1_red", "toggle"},
    [350146] = {"e4m1_blue", "toggle"},
    [350147] = {"e4m2_yellow", "toggle"},
    [350148] = {"e4m2_blue", "toggle"},
    [350149] = {"e4m3_red", "toggle"},
    [350150] = {"e4m3_blue", "toggle"},
    [350151] = {"e4m4_red", "toggle"},
    [350152] = {"e4m5_yellow", "toggle"},
    [350153] = {"e4m5_red", "toggle"},
    [350154] = {"e4m5_blue", "toggle"},
    [350155] = {"e4m6_blue", "toggle"},
    [350156] = {"e4m6_yellow", "toggle"},
    [350157] = {"e4m6_red", "toggle"},
    [350158] = {"e4m7_blue", "toggle"},
    [350159] = {"e4m7_yellow", "toggle"},
    [350160] = {"e4m7_red", "toggle"},
    [350161] = {"e4m8_yellow", "toggle"},
    [350162] = {"e4m8_red", "toggle"},
    [350163] = {"e4m9_yellow", "toggle"},
    [350164] = {"e4m1_access", "toggle"},
    [350165] = {"e4m1_complete", "toggle"},
    [350167] = {"e4m2_access", "toggle"},
    [350168] = {"e4m2_complete", "toggle"},
    [350170] = {"e4m3_access", "toggle"},
    [350171] = {"e4m3_complete", "toggle"},
    [350173] = {"e4m4_access", "toggle"},
    [350174] = {"e4m4_complete", "toggle"},
    [350176] = {"e4m5_access", "toggle"},
    [350177] = {"e4m5_complete", "toggle"},
    [350179] = {"e4m6_access", "toggle"},
    [350180] = {"e4m6_complete", "toggle"},
    [350182] = {"e4m7_access", "toggle"},
    [350183] = {"e4m7_complete", "toggle"},
    [350185] = {"e4m8_access", "toggle"},
    [350186] = {"e4m8_complete", "toggle"},
    [350188] = {"e4m9_access", "toggle"},
    [350189] = {"e4m9_complete", "toggle"}
}
