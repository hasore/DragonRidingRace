
local addonName, SRR = ...;
local L = LibStub("AceLocale-3.0"):GetLocale(addonName, true);
local setmetatable = _G.setmetatable;

SRR.Races = {};
-- TWW
-- Isle of Dorn
-- Dornogal Drift
table.insert(SRR.Races, {id = 80219, currency = 2923, name = L["RACE_80219"], raceType = 0, gold = 58});
table.insert(SRR.Races, {id = 80225, currency = 2939, name = L["RACE_80225"], raceType = 1, gold = 54});
table.insert(SRR.Races, {id = 80231, currency = 2935, name = L["RACE_80231"], raceType = 2, gold = 57});
-- Storm's Watch Survey
table.insert(SRR.Races, {id = 80220, currency = 2924, name = L["RACE_80220"], raceType = 0, gold = 58});
table.insert(SRR.Races, {id = 80226, currency = 2930, name = L["RACE_80226"], raceType = 1, gold = 54});
table.insert(SRR.Races, {id = 80232, currency = 2936, name = L["RACE_80232"], raceType = 2, gold = 57});
-- Basin Bypass
table.insert(SRR.Races, {id = 80221, currency = 2925, name = L["RACE_80221"], raceType = 0, gold = 58});
table.insert(SRR.Races, {id = 80227, currency = 2931, name = L["RACE_80227"], raceType = 1, gold = 54});
table.insert(SRR.Races, {id = 80233, currency = 2937, name = L["RACE_80233"], raceType = 2, gold = 57});
-- The Wold Ways
table.insert(SRR.Races, {id = 80222, currency = 2926, name = L["RACE_80222"], raceType = 0, gold = 68});
table.insert(SRR.Races, {id = 80228, currency = 2932, name = L["RACE_80228"], raceType = 1, gold = 68});
table.insert(SRR.Races, {id = 80234, currency = 2938, name = L["RACE_80234"], raceType = 2, gold = 70});
-- Thunderhead Trail
table.insert(SRR.Races, {id = 80223, currency = 2927, name = L["RACE_80223"], raceType = 0, gold = 58});
table.insert(SRR.Races, {id = 80229, currency = 2933, name = L["RACE_80229"], raceType = 1, gold = 54});
table.insert(SRR.Races, {id = 80235, currency = 2939, name = L["RACE_80235"], raceType = 2, gold = 57});
-- Orecreg's Doglegs
table.insert(SRR.Races, {id = 80224, currency = 2928, name = L["RACE_80224"], raceType = 0, gold = 58});
table.insert(SRR.Races, {id = 80230, currency = 2934, name = L["RACE_80230"], raceType = 1, gold = 54});
table.insert(SRR.Races, {id = 80236, currency = 2940, name = L["RACE_80236"], raceType = 2, gold = 57});

-- The Ringing Deeps
-- Earthenworks Weave
table.insert(SRR.Races, {id = 80237, currency = 2941, name = L["RACE_80237"], raceType = 0, gold = 52});
table.insert(SRR.Races, {id = 80244, currency = 2947, name = L["RACE_80244"], raceType = 1, gold = 00});
table.insert(SRR.Races, {id = 80250, currency = 2953, name = L["RACE_80250"], raceType = 2, gold = 00});
-- Ringing Deeps Ramble
table.insert(SRR.Races, {id = 80238, currency = 2942, name = L["RACE_80238"], raceType = 0, gold = 57});
table.insert(SRR.Races, {id = 80245, currency = 2948, name = L["RACE_80245"], raceType = 1, gold = 00});
table.insert(SRR.Races, {id = 80251, currency = 2954, name = L["RACE_80251"], raceType = 2, gold = 00});
-- Chittering Concourse
table.insert(SRR.Races, {id = 80239, currency = 2943, name = L["RACE_80239"], raceType = 0, gold = 56});
table.insert(SRR.Races, {id = 80246, currency = 2949, name = L["RACE_80246"], raceType = 1, gold = 00});
table.insert(SRR.Races, {id = 80252, currency = 2955, name = L["RACE_80252"], raceType = 2, gold = 00});
-- Cataract River Cruise
table.insert(SRR.Races, {id = 80240, currency = 2944, name = L["RACE_80240"], raceType = 0, gold = 60});
table.insert(SRR.Races, {id = 80247, currency = 2950, name = L["RACE_80247"], raceType = 1, gold = 00});
table.insert(SRR.Races, {id = 80253, currency = 2956, name = L["RACE_80253"], raceType = 2, gold = 00});
-- Taelloch Twist
table.insert(SRR.Races, {id = 80242, currency = 2945, name = L["RACE_80242"], raceType = 0, gold = 47});
table.insert(SRR.Races, {id = 80248, currency = 2951, name = L["RACE_80248"], raceType = 1, gold = 00});
table.insert(SRR.Races, {id = 80254, currency = 2957, name = L["RACE_80254"], raceType = 2, gold = 00});
-- Opportunity Point Amble
table.insert(SRR.Races, {id = 80243, currency = 2946, name = L["RACE_80243"], raceType = 0, gold = 77});
table.insert(SRR.Races, {id = 80249, currency = 2952, name = L["RACE_80249"], raceType = 1, gold = 00});
table.insert(SRR.Races, {id = 80255, currency = 2958, name = L["RACE_80255"], raceType = 2, gold = 00});

-- Hallowfall
-- Dunelle's Detour
table.insert(SRR.Races, {id = 80256, currency = 2959, name = L["RACE_80256"], raceType = 0, gold = 65});
table.insert(SRR.Races, {id = 80265, currency = 2965, name = L["RACE_80265"], raceType = 1, gold = 00});
table.insert(SRR.Races, {id = 80271, currency = 2971, name = L["RACE_80271"], raceType = 2, gold = 00});
-- Tenir's Traversal
table.insert(SRR.Races, {id = 80257, currency = 2960, name = L["RACE_80257"], raceType = 0, gold = 00});
table.insert(SRR.Races, {id = 80266, currency = 2966, name = L["RACE_80266"], raceType = 1, gold = 00});
table.insert(SRR.Races, {id = 80272, currency = 2972, name = L["RACE_80272"], raceType = 2, gold = 00});
-- Light's Redoubt Descent
table.insert(SRR.Races, {id = 80258, currency = 2961, name = L["RACE_80258"], raceType = 0, gold = 63});
table.insert(SRR.Races, {id = 80267, currency = 2967, name = L["RACE_80267"], raceType = 1, gold = 00});
table.insert(SRR.Races, {id = 80273, currency = 2973, name = L["RACE_80273"], raceType = 2, gold = 00});
-- Stillstone Slalom
table.insert(SRR.Races, {id = 80259, currency = 2962, name = L["RACE_80259"], raceType = 0, gold = 56});
table.insert(SRR.Races, {id = 80268, currency = 2968, name = L["RACE_80268"], raceType = 1, gold = 00});
table.insert(SRR.Races, {id = 80274, currency = 2974, name = L["RACE_80274"], raceType = 2, gold = 00});
-- Mereldar Meander
table.insert(SRR.Races, {id = 80260, currency = 2963, name = L["RACE_80260"], raceType = 0, gold = 76});
table.insert(SRR.Races, {id = 80269, currency = 2969, name = L["RACE_80269"], raceType = 1, gold = 00});
table.insert(SRR.Races, {id = 80275, currency = 2975, name = L["RACE_80275"], raceType = 2, gold = 00});
-- Velhan's Venture
table.insert(SRR.Races, {id = 80261, currency = 2964, name = L["RACE_80261"], raceType = 0, gold = 55});
table.insert(SRR.Races, {id = 80270, currency = 2970, name = L["RACE_80270"], raceType = 1, gold = 00});
table.insert(SRR.Races, {id = 80276, currency = 2976, name = L["RACE_80276"], raceType = 2, gold = 00});

-- Azj-Kahet
-- City of Threads Twist
table.insert(SRR.Races, {id = 80277, currency = 2977, name = L["RACE_80277"], raceType = 0, gold = 78});
table.insert(SRR.Races, {id = 80283, currency = 2983, name = L["RACE_80283"], raceType = 1, gold = 00});
table.insert(SRR.Races, {id = 80289, currency = 2989, name = L["RACE_80289"], raceType = 2, gold = 00});
-- Maddening Deep Dip
table.insert(SRR.Races, {id = 80278, currency = 2978, name = L["RACE_80278"], raceType = 0, gold = 58});
table.insert(SRR.Races, {id = 80284, currency = 2984, name = L["RACE_80284"], raceType = 1, gold = 00});
table.insert(SRR.Races, {id = 80290, currency = 2990, name = L["RACE_80290"], raceType = 2, gold = 00});
-- The Weaver's Wing
table.insert(SRR.Races, {id = 80279, currency = 2979, name = L["RACE_80279"], raceType = 0, gold = 54});
table.insert(SRR.Races, {id = 80285, currency = 2985, name = L["RACE_80285"], raceType = 1, gold = 00});
table.insert(SRR.Races, {id = 80291, currency = 2991, name = L["RACE_80291"], raceType = 2, gold = 00});
-- Rak-Ahat Rush
table.insert(SRR.Races, {id = 80280, currency = 2980, name = L["RACE_80280"], raceType = 0, gold = 70});
table.insert(SRR.Races, {id = 80286, currency = 2986, name = L["RACE_80286"], raceType = 1, gold = 00});
table.insert(SRR.Races, {id = 80292, currency = 2992, name = L["RACE_80292"], raceType = 2, gold = 00});
-- Pit Plunge
table.insert(SRR.Races, {id = 80281, currency = 2981, name = L["RACE_80281"], raceType = 0, gold = 63});
table.insert(SRR.Races, {id = 80287, currency = 2987, name = L["RACE_80287"], raceType = 1, gold = 00});
table.insert(SRR.Races, {id = 80293, currency = 2993, name = L["RACE_80293"], raceType = 2, gold = 00});
-- Siegehold Scuttle
table.insert(SRR.Races, {id = 80282, currency = 2982, name = L["RACE_80282"], raceType = 0, gold = 70});
table.insert(SRR.Races, {id = 80288, currency = 2988, name = L["RACE_80288"], raceType = 1, gold = 00});
table.insert(SRR.Races, {id = 80294, currency = 2994, name = L["RACE_80294"], raceType = 2, gold = 00});

-- The Waking Shores
-- Ruby Lifeshrine Loop
table.insert(SRR.Races, {id = 66679, currency = 2042, name = L["RACE_66679"], raceType = 0, gold = 64});
table.insert(SRR.Races, {id = 66692, currency = 2044, name = L["RACE_66692"], raceType = 1, gold = 52});
table.insert(SRR.Races, {id = 72052, currency = 2154, name = L["RACE_72052"], raceType = 2, gold = 50});
-- Flashfrost Flyover
table.insert(SRR.Races, {id = 66710, currency = 2046, name = L["RACE_66710"], raceType = 0, gold = 63});
table.insert(SRR.Races, {id = 66712, currency = 2047, name = L["RACE_66712"], raceType = 1, gold = 61});
table.insert(SRR.Races, {id = 72700, currency = 2181, name = L["RACE_72700"], raceType = 2, gold = 60});
-- Wild Preserve Slalom
table.insert(SRR.Races, {id = 66721, currency = 2048, name = L["RACE_66721"], raceType = 0, gold = 43});
table.insert(SRR.Races, {id = 66722, currency = 2049, name = L["RACE_66722"], raceType = 1, gold = 40});
table.insert(SRR.Races, {id = 72705, currency = 2176, name = L["RACE_72705"], raceType = 2, gold = 41});
-- Wild Preserve Circuit
table.insert(SRR.Races, {id = 66725, currency = 2050, name = L["RACE_66725"], raceType = 0, gold = 41}); --
table.insert(SRR.Races, {id = 66726, currency = 2051, name = L["RACE_66726"], raceType = 1, gold = 38});
table.insert(SRR.Races, {id = 72706, currency = 2182, name = L["RACE_72706"], raceType = 2, gold = 41});
-- Apex Canopy River Run
table.insert(SRR.Races, {id = 66732, currency = 2054, name = L["RACE_66732"], raceType = 0, gold = 48});
table.insert(SRR.Races, {id = 66733, currency = 2055, name = L["RACE_66733"], raceType = 1, gold = 45});
table.insert(SRR.Races, {id = 72734, currency = 2178, name = L["RACE_72734"], raceType = 2, gold = 48});
-- Emberflow Flight
table.insert(SRR.Races, {id = 66727, currency = 2052, name = L["RACE_66727"], raceType = 0, gold = 47});
table.insert(SRR.Races, {id = 66728, currency = 2053, name = L["RACE_66728"], raceType = 1, gold = 44});
table.insert(SRR.Races, {id = 72707, currency = 2177, name = L["RACE_72707"], raceType = 2, gold = 45});
-- Uktulut Coaster
table.insert(SRR.Races, {id = 66777, currency = 2056, name = L["RACE_66777"], raceType = 0, gold = 43});
table.insert(SRR.Races, {id = 66778, currency = 2057, name = L["RACE_66778"], raceType = 1, gold = 40});
table.insert(SRR.Races, {id = 72739, currency = 2179, name = L["RACE_72739"], raceType = 2, gold = 43});
-- Wingrest Roundabout
table.insert(SRR.Races, {id = 66786, currency = 2058, name = L["RACE_66786"], raceType = 0, gold = 53});
table.insert(SRR.Races, {id = 66787, currency = 2059, name = L["RACE_66787"], raceType = 1, gold = 53});
table.insert(SRR.Races, {id = 72740, currency = 2180, name = L["RACE_72740"], raceType = 2, gold = 56});

-- Ohn'ahran Plains
-- Sundapple Copse Circuit
table.insert(SRR.Races, {id = 66835, currency = 2060, name = L["RACE_66835"], raceType = 0, gold = 44});
table.insert(SRR.Races, {id = 66836, currency = 2061, name = L["RACE_66836"], raceType = 1, gold = 41});
table.insert(SRR.Races, {id = 72801, currency = 2183, name = L["RACE_72801"], raceType = 2, gold = 45});
-- Fen Flythrough
table.insert(SRR.Races, {id = 66877, currency = 2062, name = L["RACE_66877"], raceType = 0, gold = 44});
table.insert(SRR.Races, {id = 66878, currency = 2063, name = L["RACE_66878"], raceType = 1, gold = 41});
table.insert(SRR.Races, {id = 72802, currency = 2184, name = L["RACE_72802"], raceType = 2, gold = 47});
-- Ravine River Run
table.insert(SRR.Races, {id = 66880, currency = 2064, name = L["RACE_66880"], raceType = 0, gold = 50});
table.insert(SRR.Races, {id = 66881, currency = 2065, name = L["RACE_66881"], raceType = 1, gold = 47});
table.insert(SRR.Races, {id = 72803, currency = 2185, name = L["RACE_72803"], raceType = 2, gold = 46});
-- Emerald Garden Ascent
table.insert(SRR.Races, {id = 66885, currency = 2066, name = L["RACE_66885"], raceType = 0, gold = 59});
table.insert(SRR.Races, {id = 66886, currency = 2067, name = L["RACE_66886"], raceType = 1, gold = 55});
table.insert(SRR.Races, {id = 72805, currency = 2186, name = L["RACE_72805"], raceType = 2, gold = 57});
-- Maruukai Dash
table.insert(SRR.Races, {id = 66921, currency = 2069, name = L["RACE_66921"], raceType = 0, gold = 25});
-- Mirror of the Sky Dash
table.insert(SRR.Races, {id = 66933, currency = 2070, name = L["RACE_66933"], raceType = 0, gold = 26});
-- River Rapids Route
table.insert(SRR.Races, {id = 70710, currency = 2119, name = L["RACE_70710"], raceType = 0, gold = 46});
table.insert(SRR.Races, {id = 70711, currency = 2120, name = L["RACE_70711"], raceType = 1, gold = 43});
table.insert(SRR.Races, {id = 72807, currency = 2187, name = L["RACE_72807"], raceType = 2, gold = 44});

-- Azure Span
-- The Azure Span Sprint
table.insert(SRR.Races, {id = 66946, currency = 2074, name = L["RACE_66946"], raceType = 0, gold = 63});
table.insert(SRR.Races, {id = 66947, currency = 2075, name = L["RACE_66947"], raceType = 1, gold = 58});
table.insert(SRR.Races, {id = 72796, currency = 2188, name = L["RACE_72796"], raceType = 2, gold = 60});
-- The Azure Span Slalom
table.insert(SRR.Races, {id = 67002, currency = 2076, name = L["RACE_67002"], raceType = 0, gold = 58});
table.insert(SRR.Races, {id = 67003, currency = 2077, name = L["RACE_67003"], raceType = 1, gold = 56});
table.insert(SRR.Races, {id = 72799, currency = 2189, name = L["RACE_72799"], raceType = 2, gold = 53});
-- The Vakthros Ascent
table.insert(SRR.Races, {id = 67031, currency = 2078, name = L["RACE_67031"], raceType = 0, gold = 58});
table.insert(SRR.Races, {id = 67032, currency = 2079, name = L["RACE_67032"], raceType = 1, gold = 56});
table.insert(SRR.Races, {id = 72794, currency = 2190, name = L["RACE_72794"], raceType = 2, gold = 56});
-- Iskaara Tour
table.insert(SRR.Races, {id = 67296, currency = 2083, name = L["RACE_67296"], raceType = 0, gold = 75});
table.insert(SRR.Races, {id = 67297, currency = 2084, name = L["RACE_67297"], raceType = 1, gold = 70});
table.insert(SRR.Races, {id = 72800, currency = 2191, name = L["RACE_72800"], raceType = 2, gold = 67});
-- Frostland Flyover
table.insert(SRR.Races, {id = 67565, currency = 2085, name = L["RACE_67565"], raceType = 0, gold = 76});
table.insert(SRR.Races, {id = 67566, currency = 2086, name = L["RACE_67566"], raceType = 1, gold = 72});
table.insert(SRR.Races, {id = 72795, currency = 2192, name = L["RACE_72795"], raceType = 2, gold = 69});
-- Archive Ambit
table.insert(SRR.Races, {id = 67741, currency = 2089, name = L["RACE_67741"], raceType = 0, gold = 91});
table.insert(SRR.Races, {id = 67742, currency = 2090, name = L["RACE_67742"], raceType = 1, gold = 81});
table.insert(SRR.Races, {id = 72797, currency = 2193, name = L["RACE_72797"], raceType = 2, gold = 76});

-- Thaldraszus
-- The Flowing Forest Flight
table.insert(SRR.Races, {id = 67095, currency = 2080, name = L["RACE_67095"], raceType = 0, gold = 49});
table.insert(SRR.Races, {id = 67096, currency = 2081, name = L["RACE_67096"], raceType = 1, gold = 40});
table.insert(SRR.Races, {id = 72793, currency = 2194, name = L["RACE_72793"], raceType = 2, gold = 41});
-- Tyrhold Trial
table.insert(SRR.Races, {id = 69957, currency = 2092, name = L["RACE_69957"], raceType = 0, gold = 81});
table.insert(SRR.Races, {id = 69958, currency = 2093, name = L["RACE_69958"], raceType = 1, gold = 75});
table.insert(SRR.Races, {id = 72792, currency = 2195, name = L["RACE_72792"], raceType = 2, gold = 59});
-- Cliffside Circuit
table.insert(SRR.Races, {id = 70051, currency = 2096, name = L["RACE_70051"], raceType = 0, gold = 69});
table.insert(SRR.Races, {id = 70052, currency = 2097, name = L["RACE_70052"], raceType = 1, gold = 66});
table.insert(SRR.Races, {id = 72760, currency = 2196, name = L["RACE_72760"], raceType = 2, gold = 69});
-- Academy Ascent
table.insert(SRR.Races, {id = 70059, currency = 2098, name = L["RACE_70059"], raceType = 0, gold = 54});
table.insert(SRR.Races, {id = 70060, currency = 2099, name = L["RACE_70060"], raceType = 1, gold = 52});
table.insert(SRR.Races, {id = 72754, currency = 2197, name = L["RACE_72754"], raceType = 2, gold = 53});
-- Garden Gallivant
table.insert(SRR.Races, {id = 70157, currency = 2101, name = L["RACE_70157"], raceType = 0, gold = 61});
table.insert(SRR.Races, {id = 70158, currency = 2102, name = L["RACE_70158"], raceType = 1, gold = 54});
table.insert(SRR.Races, {id = 72769, currency = 2198, name = L["RACE_72769"], raceType = 2, gold = 57});
-- Caverns Criss-Cross
table.insert(SRR.Races, {id = 70161, currency = 2103, name = L["RACE_70161"], raceType = 0, gold = 50});
table.insert(SRR.Races, {id = 70163, currency = 2104, name = L["RACE_70163"], raceType = 1, gold = 45});
table.insert(SRR.Races, {id = 72750, currency = 2199, name = L["RACE_72750"], raceType = 2, gold = 47});

-- Forbidden Reach
-- Stormsunder Crate Circuit
table.insert(SRR.Races, {id = 73017, currency = 2201, name = L["RACE_73017"], raceType = 0, gold = 43});
table.insert(SRR.Races, {id = 73018, currency = 2207, name = L["RACE_73018"], raceType = 1, gold = 42});
table.insert(SRR.Races, {id = 73019, currency = 2213, name = L["RACE_73019"], raceType = 2, gold = 42});
-- Morqut Ascent
table.insert(SRR.Races, {id = 73020, currency = 2202, name = L["RACE_73020"], raceType = 0, gold = 52});
table.insert(SRR.Races, {id = 73023, currency = 2208, name = L["RACE_73023"], raceType = 1, gold = 49});
table.insert(SRR.Races, {id = 73024, currency = 2214, name = L["RACE_73024"], raceType = 2, gold = 52});
-- Aerie Chasm Cruise
table.insert(SRR.Races, {id = 73025, currency = 2203, name = L["RACE_73025"], raceType = 0, gold = 58});
table.insert(SRR.Races, {id = 73027, currency = 2209, name = L["RACE_73027"], raceType = 1, gold = 50});
table.insert(SRR.Races, {id = 73028, currency = 2215, name = L["RACE_73028"], raceType = 2, gold = 50});
-- Southern Reach Route
table.insert(SRR.Races, {id = 73029, currency = 2204, name = L["RACE_73029"], raceType = 0, gold = 70});
table.insert(SRR.Races, {id = 73030, currency = 2210, name = L["RACE_73030"], raceType = 1, gold = 68});
table.insert(SRR.Races, {id = 73032, currency = 2216, name = L["RACE_73032"], raceType = 2, gold = 63});
-- Caldera Coaster
table.insert(SRR.Races, {id = 73033, currency = 2205, name = L["RACE_73033"], raceType = 0, gold = 58});
table.insert(SRR.Races, {id = 73034, currency = 2211, name = L["RACE_73034"], raceType = 1, gold = 52});
table.insert(SRR.Races, {id = 73052, currency = 2217, name = L["RACE_73052"], raceType = 2, gold = 49});
-- Forbidden Reach Rush
table.insert(SRR.Races, {id = 73061, currency = 2206, name = L["RACE_73061"], raceType = 0, gold = 59});
table.insert(SRR.Races, {id = 73062, currency = 2212, name = L["RACE_73062"], raceType = 1, gold = 56});
table.insert(SRR.Races, {id = 73065, currency = 2218, name = L["RACE_73065"], raceType = 2, gold = 57});

-- Zaralek Cavern
-- Crystal Circuit
table.insert(SRR.Races, {id = 74839, currency = 2246, name = L["RACE_74839"], raceType = 0, gold = 63});
table.insert(SRR.Races, {id = 74842, currency = 2252, name = L["RACE_74842"], raceType = 1, gold = 55});
table.insert(SRR.Races, {id = 74882, currency = 2258, name = L["RACE_74882"], raceType = 2, gold = 53});
-- Caldera Cruise
table.insert(SRR.Races, {id = 74889, currency = 2247, name = L["RACE_74889"], raceType = 0, gold = 75});
table.insert(SRR.Races, {id = 74899, currency = 2253, name = L["RACE_74899"], raceType = 1, gold = 68});
table.insert(SRR.Races, {id = 74925, currency = 2259, name = L["RACE_74925"], raceType = 2, gold = 68});
-- Brimstone Scramble
table.insert(SRR.Races, {id = 74939, currency = 2248, name = L["RACE_74939"], raceType = 0, gold = 69});
table.insert(SRR.Races, {id = 74943, currency = 2254, name = L["RACE_74943"], raceType = 1, gold = 64});
table.insert(SRR.Races, {id = 74944, currency = 2260, name = L["RACE_74944"], raceType = 2, gold = 64});
-- Shimmering Slalom
table.insert(SRR.Races, {id = 74951, currency = 2249, name = L["RACE_74951"], raceType = 0, gold = 75});
table.insert(SRR.Races, {id = 74954, currency = 2255, name = L["RACE_74954"], raceType = 1, gold = 70});
table.insert(SRR.Races, {id = 74956, currency = 2261, name = L["RACE_74956"], raceType = 2, gold = 72});
-- Loamm Roamm
table.insert(SRR.Races, {id = 74972, currency = 2250, name = L["RACE_74972"], raceType = 0, gold = 55});
table.insert(SRR.Races, {id = 74975, currency = 2256, name = L["RACE_74975"], raceType = 1, gold = 50});
table.insert(SRR.Races, {id = 74977, currency = 2262, name = L["RACE_74977"], raceType = 2, gold = 48});
-- Sulfur Sprint
table.insert(SRR.Races, {id = 75035, currency = 2251, name = L["RACE_75035"], raceType = 0, gold = 64});
table.insert(SRR.Races, {id = 75042, currency = 2257, name = L["RACE_75042"], raceType = 1, gold = 57});
table.insert(SRR.Races, {id = 75043, currency = 2263, name = L["RACE_75043"], raceType = 2, gold = 57});

-- Kalimdor Cup
-- Hyjal Hotfoot - Kalimdor 01
table.insert(SRR.Races, {id = 75330, currency = 2312, name = L["RACE_75330"], raceType = 0, gold = 70});
table.insert(SRR.Races, {id = 75331, currency = 2342, name = L["RACE_75331"], raceType = 1, gold = 63});
table.insert(SRR.Races, {id = 75332, currency = 2372, name = L["RACE_75332"], raceType = 2, gold = 62});
-- Winter Wander - Kalimdor 02
table.insert(SRR.Races, {id = 75310, currency = 2313, name = L["RACE_75310"], raceType = 0, gold = 80});
table.insert(SRR.Races, {id = 75311, currency = 2343, name = L["RACE_75311"], raceType = 1, gold = 73});
table.insert(SRR.Races, {id = 75312, currency = 2373, name = L["RACE_75312"], raceType = 2, gold = 70});
-- Nordrassil Spiral - Kalimdor 03
table.insert(SRR.Races, {id = 75317, currency = 2314, name = L["RACE_75317"], raceType = 0, gold = 45});
table.insert(SRR.Races, {id = 75318, currency = 2344, name = L["RACE_75318"], raceType = 1, gold = 41});
table.insert(SRR.Races, {id = 75319, currency = 2374, name = L["RACE_75319"], raceType = 2, gold = 41});
-- Felwood Flyover - Kalimdor 04
table.insert(SRR.Races, {id = 75277, currency = 2315, name = L["RACE_75277"], raceType = 0, gold = 70});
table.insert(SRR.Races, {id = 75293, currency = 2345, name = L["RACE_75293"], raceType = 1, gold = 63});
table.insert(SRR.Races, {id = 75294, currency = 2375, name = L["RACE_75294"], raceType = 2, gold = 62});
-- Rocketway Ride - Kalimdor 05
table.insert(SRR.Races, {id = 75347, currency = 2316, name = L["RACE_75347"], raceType = 0, gold = 101});
table.insert(SRR.Races, {id = 75355, currency = 2346, name = L["RACE_75355"], raceType = 1, gold = 94});
table.insert(SRR.Races, {id = 75356, currency = 2376, name = L["RACE_75356"], raceType = 2, gold = 94});
-- Ashenvale Ambit - Kalimdor 06
table.insert(SRR.Races, {id = 75378, currency = 2317, name = L["RACE_75378"], raceType = 0, gold = 65});
table.insert(SRR.Races, {id = 75379, currency = 2347, name = L["RACE_75379"], raceType = 1, gold = 59});
table.insert(SRR.Races, {id = 75380, currency = 2377, name = L["RACE_75380"], raceType = 2, gold = 59});
-- Durotar Tour - Kalimdor 07
table.insert(SRR.Races, {id = 75385, currency = 2318, name = L["RACE_75385"], raceType = 0, gold = 82});
table.insert(SRR.Races, {id = 75386, currency = 2348, name = L["RACE_75386"], raceType = 1, gold = 75});
table.insert(SRR.Races, {id = 75387, currency = 2378, name = L["RACE_75387"], raceType = 2, gold = 75});
-- Webwinder Weave - Kalimdor 08
table.insert(SRR.Races, {id = 75394, currency = 2319, name = L["RACE_75394"], raceType = 0, gold = 80});
table.insert(SRR.Races, {id = 75395, currency = 2349, name = L["RACE_75395"], raceType = 1, gold = 73});
table.insert(SRR.Races, {id = 75396, currency = 2379, name = L["RACE_75396"], raceType = 2, gold = 70});
-- Desolace Drift - Kalimdor 09
table.insert(SRR.Races, {id = 75409, currency = 2320, name = L["RACE_75409"], raceType = 0, gold = 78});
table.insert(SRR.Races, {id = 75410, currency = 2350, name = L["RACE_75410"], raceType = 1, gold = 70});
table.insert(SRR.Races, {id = 75411, currency = 2380, name = L["RACE_75411"], raceType = 2, gold = 71});
-- Great Divide Dive - Kalimdor 10
table.insert(SRR.Races, {id = 75412, currency = 2321, name = L["RACE_75412"], raceType = 0, gold = 48});
table.insert(SRR.Races, {id = 75413, currency = 2351, name = L["RACE_75413"], raceType = 1, gold = 43});
table.insert(SRR.Races, {id = 75414, currency = 2381, name = L["RACE_75414"], raceType = 2, gold = 44});
-- Razorfen Roundabout - Kalimdor 11
table.insert(SRR.Races, {id = 75437, currency = 2322, name = L["RACE_75437"], raceType = 0, gold = 53});
table.insert(SRR.Races, {id = 75438, currency = 2352, name = L["RACE_75438"], raceType = 1, gold = 47});
table.insert(SRR.Races, {id = 75439, currency = 2382, name = L["RACE_75439"], raceType = 2, gold = 48});
-- Thousand Needles Thread - Kalimdor 12
table.insert(SRR.Races, {id = 75463, currency = 2323, name = L["RACE_75463"], raceType = 0, gold = 87});
table.insert(SRR.Races, {id = 75464, currency = 2353, name = L["RACE_75464"], raceType = 1, gold = 77});
table.insert(SRR.Races, {id = 75465, currency = 2383, name = L["RACE_75465"], raceType = 2, gold = 77});
-- Feralas Ruins - Kalimdor 13
table.insert(SRR.Races, {id = 75468, currency = 2324, name = L["RACE_75468"], raceType = 0, gold = 89});
table.insert(SRR.Races, {id = 75469, currency = 2354, name = L["RACE_75469"], raceType = 1, gold = 84});
table.insert(SRR.Races, {id = 75470, currency = 2384, name = L["RACE_75470"], raceType = 2, gold = 84});
-- Ahn'Qiraj Circuit - Kalimdor 14
table.insert(SRR.Races, {id = 75472, currency = 2325, name = L["RACE_75472"], raceType = 0, gold = 77});
table.insert(SRR.Races, {id = 75473, currency = 2355, name = L["RACE_75473"], raceType = 1, gold = 68});
table.insert(SRR.Races, {id = 75474, currency = 2385, name = L["RACE_75474"], raceType = 2, gold = 69});
-- Uldum Tour - Kalimdor 15
table.insert(SRR.Races, {id = 75481, currency = 2326, name = L["RACE_75481"], raceType = 0, gold = 84});
table.insert(SRR.Races, {id = 75482, currency = 2356, name = L["RACE_75482"], raceType = 1, gold = 76});
table.insert(SRR.Races, {id = 75483, currency = 2386, name = L["RACE_75483"], raceType = 2, gold = 76});
-- Un'Goro Crater Circuit - Kalimdor 16
table.insert(SRR.Races, {id = 75485, currency = 2327, name = L["RACE_75485"], raceType = 0, gold = 100});
table.insert(SRR.Races, {id = 75486, currency = 2357, name = L["RACE_75486"], raceType = 1, gold = 90});
table.insert(SRR.Races, {id = 75487, currency = 2387, name = L["RACE_75487"], raceType = 2, gold = 92});

SRR.CURRENT_RACE = nil;
SRR.CURRENT_RACE_CURRENCY = nil;
SRR.LAST_RACE = nil;

function SRR:GetRace(questID)
    if questID then
        for index, race in ipairs(SRR.Races) do
            if tonumber(race.id) == tonumber(questID) then
                return race;
            end
        end
    end

    return nil;
end

function SRR:StartRace(race)
    SRR.CURRENT_RACE = race;
    SRR.CURRENT_RACE_CURRENCY = race.currency;
    SRR:Debug("Start race "..race.name);
    SRR:Debug("(Race currency: ".. race.currency ..")");
end

function SRR:EndRace(time)
    if SRR.CURRENT_RACE then
        local race = SRR.CURRENT_RACE;
        local raceTime = SRR.RaceTime:Create(race.id, time, race.raceType);
        table.insert(SRR.db.global.races, raceTime);

        local isPB, previousTime = SRR:TrySetPB(raceTime);
        local isGuildPB = SRR:TrySetGuildBest(raceTime);

        SRR.CURRENT_RACE = nil;
        SRR.LAST_RACE = race;

        if isPB then
            SRR:OnPBBeaten(race, raceTime, previousTime);
        else
            SRR:OnRaceEnded(race, raceTime);
        end

        if isGuildPB then
            SRR:OnGuildBeaten(race, raceTime);
        end
    else
        SRR:PrintError("Could not locate current course");
    end
end

function SRR:EndRaceWithBetterTime(time, bestTime)
    if SRR.CURRENT_RACE then
        local race = SRR.CURRENT_RACE;
        local raceTime = SRR.RaceTime:Create(race.id, bestTime, race.raceType);
        table.insert(SRR.db.global.races, raceTime);

        local isPB, previousTime = SRR:TrySetPB(raceTime);
        local isGuildPB = SRR:TrySetGuildBest(raceTime);

        SRR.CURRENT_RACE = nil;
        SRR.LAST_RACE = race;

        if isPB then
            SRR:OnPBBeaten(race, raceTime);
        else
            raceTime = SRR.RaceTime:Create(race.id, time, race.raceType);
            SRR:OnRaceEnded(race, raceTime);
        end

        if isGuildPB then
            SRR:OnGuildBeaten(race, raceTime);
        end
    else
        SRR:PrintError("Could not locate current course");
    end
end

function SRR:TrySetScoreOnly(time)
    if SRR.CURRENT_RACE then
        local race = SRR.CURRENT_RACE;
        local raceTime = SRR.RaceTime:Create(race.id, time, race.raceType);

        local isPB, previousTime = SRR:TrySetPB(raceTime);
        local isGuildPB = SRR:TrySetGuildBest(raceTime);

        SRR.CURRENT_RACE = nil;
    else
        SRR:PrintError("Could not locate current course");
    end
end

function SRR:TrySetPB(raceTime)
    local pb = SRR.db.global.pb[raceTime.race];

    if pb == nil or pb == 0 then
        SRR.db.global.pb[raceTime.race] = raceTime.time;
        -- Share to the world
        SRR:SendPB(raceTime);
        return false, pb;
    end

    if tonumber(raceTime.time) < tonumber(pb) then
        SRR.db.global.pb[raceTime.race] = raceTime.time;
        -- Share to the world
        SRR:SendPB(raceTime);
        return true, pb;
    end

    return false, pb;
end

function SRR:TrySetGuildBest(raceTime)
    local pb = SRR.db.global.guildpb[raceTime.race];

    if pb == nil then
        SRR.db.global.guildpb[raceTime.race] = raceTime;
        return true, pb;
    end

    if tonumber(raceTime.time) < tonumber(pb.time) then
        SRR.db.global.guildpb[raceTime.race] = raceTime;
        return true, pb;
    end

    return false, pb;
end

function SRR:OnRaceEnded(race, raceTime)
    SRR:Print(L["RACE_FINISHED_FORMAT"](race.name, raceTime.time));
end


function SRR:OnRaceEndedCharacterBest(race, time)
    SRR:Print(L["RACE_FINISHED_CHARACTER_BEST_FORMAT"](race.name, time));
end

function SRR:OnRaceEndedSavedBest(race, time, saved)
    SRR:Print(L["RACE_FINISHED_SAVED_BEST_FORMAT"](race.name, time, saved));
end

function SRR:OnPBBeaten(race, raceTime, previousTime)
    race = race or "n/a";
    raceTime.time = raceTime.time or "0";
    previousTime = previousTime or "0";
    
    -- User experience
    SRR:Print(L["RACE_FINISHED_PB_FORMAT"](race.name, raceTime.time, previousTime));
    PlaySound(118538, "master"); -- Island victory music
end

function SRR:OnGuildBeaten(race, raceTime)
    race = race or "n/a";
    raceTime.time = raceTime.time or "0";
    previousTime = previousTime or "0";
    
    -- User experience
    SRR:Print(L["RACE_FINISHED_GUILD_PB_FORMAT"](race.name, raceTime.time));
end
