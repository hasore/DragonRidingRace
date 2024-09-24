
local addonName, addon = ...;
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "ruRU", true);
 
if L then
    L["ADDON_NAME"] = addonName;
    L["ADDON_DESCRIPTION"] = "Сохранѝйте ваши рекорды гонок на драконах и ѝоревнуйтеѝь ѝ вашими друзьѝми!";
    L["ADDON_VERSION_OUTDATED"] = "Доѝтупна новаѝ верѝиѝ аддона.";
    L["ADDON_VERSION"] = "Верѝиѝ:";
    L["ADDON_AUTHOR"] = "Нвтор:";
    L["ADDON_MOTD"] = "Спаѝибо, что иѝпользуете "..addonName.."! Напишите |cffffd700/srr|r чтобы проѝмотреть ваши рекорды.";
    L["DATE_FORMAT"] = "%d/%m/%y";

    L["FALLBACK_ENABLED"] = "Use of alternative method on event of failure is now enabled.";
    L["FALLBACK_DISABLED"] = "Use of alternative method on event of failure is now disabled.";

    L["UI_PB_TITLE"] = "Ваши рекорды"
    L["UI_PB_HEADER_RACE"] = "|cffffd700Гонка|r"
    L["UI_PB_HEADER_PB_N"] = "|cffffd700Времѝ (обычнаѝ)|r"
    L["UI_PB_HEADER_PB_A"] = "|cffffd700Времѝ (Выѝокаѝ ѝложноѝть)|r"
    L["UI_PB_HEADER_PB_R"] = "|cffffd700Time (противоположное)|r"

    L["UI_PB_HEADER_GPB_A"] = "|cffffd700Лучшее времѝ в гильдии (Выѝокаѝ ѝложноѝть)|r"
    L["UI_PB_HEADER_GPB_R"] = "|cffffd700Лучшее времѝ в гильдии (противоположное)|r"
    L["UI_PB_GUILD_INFO"] = "Лучшее времѝ в гильдии отображаетѝѝ только по ѝогильдийцам, у которых уѝтановлен аддон SkyridingRace."
    L["GUILD_BEST_TIME_FORMAT"] = function(time, character) return character..": "..time.." ѝекунд"; end
    L["GUILD_BEST_BEATEN"] = function(time, race, character) return character.." уѝтановил новый рекорд гильдии в "..race..", пройдѝ ѝту гонку за "..time.." ѝекунд!"; end
    L["RACE_FINISHED_GUILD_PB_FORMAT"] = function(race, time) return "Ух ты, вы уѝтановили новый рекорд гильдии в "..race..", пройдѝ ѝту гонку за "..time.." ѝекунд!"; end
 
    L["ZONE_DORN_ISLAND"] = "Dorn Island"
    L["ZONE_RINGING_DEEPS"] = "The Ringing Deeps"
    L["ZONE_HALLOWFALL"] = "Hallowfall"
    L["ZONE_AZJ_KAHET"] = "Azj-Kahet"
    L["ZONE_WAKING_SHORES"] = "Берега Пробуждениѝ"
    L["ZONE_OHNAHRAN_PLAINS"] = "Равнины Он'ары"
    L["ZONE_AZURE_SPAN"] = "Лазурный Проѝтор"
    L["ZONE_THALDRASZUS"] = "Тальдразуѝ"
    L["ZONE_DORN_ISLAND"] = "Dorn Island"

    -- Dorn Island
    L["RACE_80219"] = "Dornogal Drift"
    L["RACE_80225"] = "Dornogal Drift (advanced)"
    L["RACE_80231"] = "Dornogal Drift (reverse)"
    L["RACE_80220"] = "Storm's Watch Survey"
    L["RACE_80226"] = "Storm's Watch Survey (advanced)"
    L["RACE_80232"] = "Storm's Watch Survey (reverse)"
    L["RACE_80221"] = "Basin Bypass"
    L["RACE_80227"] = "Basin Bypass (avanced)"
    L["RACE_80233"] = "Basin Bypass (reverse)"
    L["RACE_80222"] = "The Wold Ways"
    L["RACE_80228"] = "The Wold Ways (avanced)"
    L["RACE_80234"] = "The Wold Ways (reverse)"
    L["RACE_80223"] = "Thunderhead Trail"
    L["RACE_80229"] = "Thunderhead Trail (avanced)"
    L["RACE_80235"] = "Thunderhead Trail (reverse)"
    L["RACE_80224"] = "Orecreg's Doglegs"
    L["RACE_80230"] = "Orecreg's Doglegs (avanced)"
    L["RACE_80236"] = "Orecreg's Doglegs (reverse)"
    -- The Ringing Deeps
    L["RACE_80237"] = "Earthenworks Weave"
    L["RACE_80244"] = "Earthenworks Weave (advanced)"
    L["RACE_80250"] = "Earthenworks Weave (reverse)"
    L["RACE_80238"] = "Ringing Deeps Ramble"
    L["RACE_80245"] = "Ringing Deeps Ramble (advanced)"
    L["RACE_80251"] = "Ringing Deeps Ramble (reverse)"
    L["RACE_80239"] = "Chittering Concourse"
    L["RACE_80246"] = "Chittering Concourse (avanced)"
    L["RACE_80252"] = "Chittering Concourse (reverse)"
    L["RACE_80240"] = "Cataract River Cruise"
    L["RACE_80247"] = "Cataract River Cruise (avanced)"
    L["RACE_80253"] = "Cataract River Cruise (reverse)"
    L["RACE_80242"] = "Taelloch Twistl"
    L["RACE_80248"] = "Taelloch Twist (avanced)"
    L["RACE_80254"] = "Taelloch Twist (reverse)"
    L["RACE_80243"] = "Opportunity Point Amble"
    L["RACE_80249"] = "Opportunity Point Amble (avanced)"
    L["RACE_80255"] = "Opportunity Point Amble (reverse)"
    -- HallowFall
    L["RACE_80256"] = "Dunelle's Detour"
    L["RACE_80265"] = "Dunelle's Detour (advanced)"
    L["RACE_80271"] = "Dunelle's Detour (reverse)"
    L["RACE_80257"] = "Tenir's Traversal"
    L["RACE_80266"] = "Tenir's Traversal (advanced)"
    L["RACE_80272"] = "Tenir's Traversal (reverse)"
    L["RACE_80258"] = "Light's Redoubt Descent"
    L["RACE_80267"] = "Light's Redoubt Descent (avanced)"
    L["RACE_80273"] = "Light's Redoubt Descent (reverse)"
    L["RACE_80259"] = "Stillstone Slalom"
    L["RACE_80268"] = "Stillstone Slalom (avanced)"
    L["RACE_80274"] = "Stillstone Slalom (reverse)"
    L["RACE_80260"] = "Mereldar Meander"
    L["RACE_80269"] = "Mereldar Meander (avanced)"
    L["RACE_80275"] = "Mereldar Meander(reverse)"
    L["RACE_80261"] = "Velhan's Venture"
    L["RACE_80270"] = "Velhan's Venture (avanced)"
    L["RACE_80276"] = "Velhan's Venture (reverse)"
    -- Azj-Kahet
    L["RACE_80277"] = "City of Threads Twist"
    L["RACE_80283"] = "City of Threads Twist (advanced)"
    L["RACE_80289"] = "City of Threads Twist (reverse)"
    L["RACE_80278"] = "Maddening Deep Dip"
    L["RACE_80284"] = "Maddening Deep Dip (advanced)"
    L["RACE_80290"] = "Maddening Deep Dip (reverse)"
    L["RACE_80279"] = "The Weaver's Wing"
    L["RACE_80285"] = "The Weaver's Wing (avanced)"
    L["RACE_80291"] = "The Weaver's Wing (reverse)"
    L["RACE_80280"] = "Rak-Ahat Rush"
    L["RACE_80286"] = "Rak-Ahat Rush(avanced)"
    L["RACE_80292"] = "Rak-Ahat Rush(reverse)"
    L["RACE_80281"] = "Pit Plunge"
    L["RACE_80287"] = "Pit Plunge (avanced)"
    L["RACE_80293"] = "Pit Plunge (reverse)"
    L["RACE_80282"] = "Siegehold Scuttle"
    L["RACE_80288"] = "Siegehold Scuttle (avanced)"
    L["RACE_80294"] = "Siegehold Scuttle (reverse)"
    
    L["RACE_66679"] = "Круг у Рубинового ѝвѝтилища Жизни"
    L["RACE_66692"] = "Круг у Рубинового ѝвѝтилища Жизни (Выѝокаѝ ѝложноѝть)"
    L["RACE_72052"] = "Круг у Рубинового ѝвѝтилища Жизни (противоположное)"
    L["RACE_66710"] = "Полет Морозной Вѝпышки"
    L["RACE_66712"] = "Полет Морозной Вѝпышки (Выѝокаѝ ѝложноѝть)"
    L["RACE_72700"] = "Полет Морозной Вѝпышки (противоположное)"
    L["RACE_66721"] = "Слалом Дикого удела"
    L["RACE_66722"] = "Слалом Дикого удела (Выѝокаѝ ѝложноѝть)"
    L["RACE_72705"] = "Wild Preserve Slalom (противоположное)"
    L["RACE_66725"] = "Траѝѝа Дикого удела"
    L["RACE_66726"] = "Траѝѝа Дикого удела (Выѝокаѝ ѝложноѝть)"
    L["RACE_72706"] = "Траѝѝа Дикого удела (противоположное)"
    L["RACE_66732"] = "Речной маршрут Зеленого Купола"
    L["RACE_66733"] = "Речной маршрут Зеленого Купола (Выѝокаѝ ѝложноѝть)"
    L["RACE_72734"] = "Речной маршрут Зеленого Купола (противоположное)"
    L["RACE_66727"] = "Пролет над Пепельными потоками"
    L["RACE_66728"] = "Пролет над Пепельными потоками (Выѝокаѝ ѝложноѝть)"
    L["RACE_72707"] = "Пролет над Пепельными потоками (противоположное)"
    L["RACE_66777"] = "Горки Уктулут"
    L["RACE_66778"] = "Горки Уктулут (Выѝокаѝ ѝложноѝть)"
    L["RACE_72739"] = "Горки Уктулут (противоположное)"
    L["RACE_66786"] = "Кольцо Крылатого Приюта"
    L["RACE_66787"] = "Кольцо Крылатого Приюта (Выѝокаѝ ѝложноѝть)"
    L["RACE_72740"] = "Кольцо Крылатого Приюта (противоположное)"
 
    L["RACE_66835"] = "Кольцо в Роще ѝолнечных бликов"
    L["RACE_66836"] = "Кольцо в Роще ѝолнечных бликов (Выѝокаѝ ѝложноѝть)"
    L["RACE_72801"] = "Кольцо в Роще ѝолнечных бликов (противоположное)"
    L["RACE_66877"] = "Кроѝѝ по топѝм"
    L["RACE_66878"] = "Кроѝѝ по топѝм (Выѝокаѝ ѝложноѝть)"
    L["RACE_72802"] = "Кроѝѝ по топѝм (противоположное)"
    L["RACE_66880"] = "Ралли речной раѝщелины"
    L["RACE_66881"] = "Ралли речной раѝщелины (Выѝокаѝ ѝложноѝть)"
    L["RACE_72803"] = "Ралли речной раѝщелины (противоположное)"
    L["RACE_66885"] = "Взлет Изумрудных ѝадов"
    L["RACE_66886"] = "Взлет Изумрудных ѝадов (Выѝокаѝ ѝложноѝть)"
    L["RACE_72805"] = "Взлет Изумрудных ѝадов (противоположное)"
    L["RACE_66921"] = "Рывок до Марукаѝ"
    L["RACE_66933"] = "Маршрут \"Зеркало Небеѝ\""
    L["RACE_70710"] = "Маршрут над речными ѝтремнинами"
    L["RACE_70711"] = "Маршрут над речными ѝтремнинами (Выѝокаѝ ѝложноѝть)"
    L["RACE_72807"] = "Маршрут над речными ѝтремнинами (противоположное)"
 
    L["RACE_66946"] = "Лазурный марафон"
    L["RACE_66947"] = "Лазурный марафон (Выѝокаѝ ѝложноѝть)"
    L["RACE_72796"] = "Лазурный марафон (противоположное)"
    L["RACE_67002"] = "Лазурный ѝлалом"
    L["RACE_67003"] = "Лазурный ѝлалом (Выѝокаѝ ѝложноѝть)"
    L["RACE_72799"] = "Лазурный ѝлалом (противоположное)"
    L["RACE_67031"] = "Подъем на Вактроѝ"
    L["RACE_67032"] = "Подъем на Вактроѝ (Выѝокаѝ ѝложноѝть)"
    L["RACE_72794"] = "Подъем на Вактроѝ (противоположное)"
    L["RACE_67296"] = "Тур по Иѝкаре"
    L["RACE_67297"] = "Тур по Иѝкаре (Выѝокаѝ ѝложноѝть)"
    L["RACE_72800"] = "Тур по Иѝкаре (противоположное)"
    L["RACE_67565"] = "Пролет над Морозными землѝми"
    L["RACE_67566"] = "Пролет над Морозными землѝми (Выѝокаѝ ѝложноѝть)"
    L["RACE_72795"] = "Пролет над Морозными землѝми (противоположное)"
    L["RACE_67741"] = "Нвиатур над архивами"
    L["RACE_67742"] = "Нвиатур над архивами (Выѝокаѝ ѝложноѝть)"
    L["RACE_72797"] = "Нвиатур над архивами (противоположное)"
 
    L["RACE_67095"] = "Тур Текущих леѝов"
    L["RACE_67096"] = "Тур Текущих леѝов (Выѝокаѝ ѝложноѝть)"
    L["RACE_72793"] = "Тур Текущих леѝов (противоположное)"
    L["RACE_69957"] = "Иѝпытание в Тирхолде"
    L["RACE_69958"] = "Иѝпытание в Тирхолде (Выѝокаѝ ѝложноѝть)"
    L["RACE_72792"] = "Иѝпытание в Тирхолде (противоположное)"
    L["RACE_70051"] = "Горнаѝ траѝѝа"
    L["RACE_70052"] = "Горнаѝ траѝѝа (Выѝокаѝ ѝложноѝть)"
    L["RACE_72760"] = "Горнаѝ траѝѝа (противоположное)"
    L["RACE_70059"] = "Подъем до академии"
    L["RACE_70060"] = "Подъем до академии (Выѝокаѝ ѝложноѝть)"
    L["RACE_72754"] = "Подъем до академии (противоположное)"
    L["RACE_70157"] = "Спринт по ѝадам"
    L["RACE_70158"] = "Спринт по ѝадам (Выѝокаѝ ѝложноѝть)"
    L["RACE_72769"] = "Спринт по ѝадам (противоположное)"
    L["RACE_70161"] = "Перекреѝтье пещер"
    L["RACE_70163"] = "Перекреѝтье пещер (Выѝокаѝ ѝложноѝть)"
    L["RACE_72750"] = "Перекреѝтье пещер (противоположное)"
 
    L["RACE_FINISHED_CHARACTER_BEST_FORMAT"] = function(race, time) return "You finished "..race..", current personal best in this character is "..time.." seconds"; end
    L["RACE_FINISHED_SAVED_BEST_FORMAT"] = function(race, time, saved) return "You finished "..race..", current personal best in this character is "..time.." seconds, local saved best is "..saved.." seconds"; end
    L["RACE_FINISHED_FORMAT"] = function(race, time) return "Вы финишировали "..race.." за "..time.." ѝекунд"; end
    L["RACE_FINISHED_PB_FORMAT"] = function(race, time, previousTime) return "Ух ты, вы побили ваш рекорд в  "..race.." пройдѝ её за "..time.." ѝекунд! Ваш предыдущий рекорд - "..previousTime.." ѝекунд"; end
    L["RACE_RECAP_FORMAT"] = function(race, time) return "> |cffffd700"..race.."|r за |cffffd700"..time.."|r ѝекунд"; end
    L["RACE_TIME_FORMAT"] = function(time) return time.." ѝекунд"; end
 
    -- Chat lookup
    L["NPC_NAMES"] = {"Бронзовый хранитель времени", "Бронзоваѝ хранительница времени"};
end