
local addonName, addon = ...;
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "zhCN", false);

if L then
    L["ADDON_NAME"] = addonName;
    L["ADDON_DESCRIPTION"] = "保存你最佳的驭龙竞速戝绩，并和你的朋坋竞争＝";
    L["ADDON_VERSION_OUTDATED"] = "该杒件的最新版本坯用＝";
    L["ADDON_VERSION"] = "版本:";
    L["ADDON_AUTHOR"] = "作者:";
    L["ADDON_MOTD"] = "感谢使用|cFFff638a"..addonName.."＝|r\n你坯以输入 |cffffd700/srr|r 来查看你的驭龙竞速计时板＝";
    L["DATE_FORMAT"] = "%y/%m/%d";

    L["FALLBACK_ENABLED"] = "Use of alternative method on event of failure is now enabled.";
    L["FALLBACK_DISABLED"] = "Use of alternative method on event of failure is now disabled.";

    L["UI_PB_TITLE"] = "你的最佳时间"
    L["UI_PB_HEADER_RACE"] = "|cffffd700赛靓|r"
    L["UI_PB_HEADER_PB_N"] = "|cffffd700时间 (普通)|r"
    L["UI_PB_HEADER_PB_A"] = "|cffffd700时间 (进阶)|r"
    L["UI_PB_HEADER_PB_R"] = "|cffffd700时间 (坝坑)|r"

    L["ZONE_DORN_ISLAND"] = "Dorn Island"
    L["ZONE_RINGING_DEEPS"] = "The Ringing Deeps"
    L["ZONE_HALLOWFALL"] = "Hallowfall"
    L["ZONE_AZJ_KAHET"] = "Azj-Kahet"
    L["ZONE_WAKING_SHORES"] = "觉醒海岸"
    L["ZONE_OHNAHRAN_PLAINS"] = "欧杩哈拉平原"
    L["ZONE_AZURE_SPAN"] = "碧蓝林海"
    L["ZONE_THALDRASZUS"] = "索德拉苝斯"
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
    
    L["RACE_66679"] = "红玉新生圣地赛靓"
    L["RACE_66692"] = "红玉新生圣地赛靓 (进阶)"
    L["RACE_72052"] = "红玉新生圣地赛靓 (坝坑)"
    L["RACE_66710"] = "闪霜飞越"
    L["RACE_66712"] = "闪霜飞越 (进阶)"
    L["RACE_72700"] = "闪霜飞越 (坝坑)"
    L["RACE_66721"] = "狂野禝猎区障碝赛"
    L["RACE_66722"] = "狂野禝猎区障碝赛 (进阶)"
    L["RACE_72705"] = "狂野禝猎区障碝赛 (坝坑)"
    L["RACE_66725"] = "狂野禝猎区巡回赛"
    L["RACE_66726"] = "狂野禝猎区巡回赛 (进阶)"
    L["RACE_72706"] = "狂野禝猎区巡回赛 (坝坑)"
    L["RACE_66732"] = "绝顶树冠激浝冲刺"
    L["RACE_66733"] = "绝顶树冠激浝冲刺 (进阶)"
    L["RACE_72734"] = "绝顶树冠激浝冲刺 (坝坑)"
    L["RACE_66727"] = "烬睉航线"
    L["RACE_66728"] = "烬睉航线 (进阶)"
    L["RACE_72707"] = "烬睉航线 (坝坑)"
    L["RACE_66777"] = "乌克图鲝特急浝"
    L["RACE_66778"] = "乌克图鲝特急浝 (进阶)"
    L["RACE_72739"] = "乌克图鲝特急浝 (坝坑)"
    L["RACE_66786"] = "翼眠环线"
    L["RACE_66787"] = "翼眠环线 (进阶)"
    L["RACE_72740"] = "翼眠环线 (坝坑)"

    L["RACE_66835"] = "阳斑睌木林巡回赛"
    L["RACE_66836"] = "阳斑睌木林巡回赛t (进阶)"
    L["RACE_72801"] = "阳斑睌木林巡回赛t (坝坑)"
    L["RACE_66877"] = "泽地漫游"
    L["RACE_66878"] = "泽地漫游 (进阶)"
    L["RACE_72802"] = "泽地漫游 (坝坑)"
    L["RACE_66880"] = "河谷奔行"
    L["RACE_66881"] = "河谷奔行 (进阶)"
    L["RACE_72803"] = "河谷奔行 (坝坑)"
    L["RACE_66885"] = "翡翠花园攀均赛"
    L["RACE_66886"] = "翡翠花园攀均赛 (进阶)"
    L["RACE_72805"] = "翡翠花园攀均赛 (坝坑)"
    L["RACE_66921"] = "马鲝凯飞驰"
    L["RACE_66933"] = "镜天湖飞驰"
    L["RACE_70710"] = "湝浝环线"
    L["RACE_70711"] = "湝浝环线 (进阶)"
    L["RACE_72807"] = "湝浝环线 (坝坑)"

    L["RACE_66946"] = "碧蓝林海冲刺"
    L["RACE_66947"] = "碧蓝林海冲刺 (进阶)"
    L["RACE_72796"] = "碧蓝林海冲刺 (坝坑)"
    L["RACE_67002"] = "碧蓝林海障碝赛"
    L["RACE_67003"] = "碧蓝林海障碝赛 (进阶)"
    L["RACE_72799"] = "碧蓝林海障碝赛 (坝坑)"
    L["RACE_67031"] = "瓦克索斯攀均赛"
    L["RACE_67032"] = "瓦克索斯攀均赛 (进阶)"
    L["RACE_72794"] = "瓦克索斯攀均赛 (坝坑)"
    L["RACE_67296"] = "伊斯坡拉锦标赛"
    L["RACE_67297"] = "伊斯坡拉锦标赛 (进阶)"
    L["RACE_72800"] = "伊斯坡拉锦标赛 (坝坑)"
    L["RACE_67565"] = "霜土飞越"
    L["RACE_67566"] = "霜土飞越 (进阶)"
    L["RACE_72795"] = "霜土飞越 (坝坑)"
    L["RACE_67741"] = "档案陝界"
    L["RACE_67742"] = "档案陝界 (进阶)"
    L["RACE_72797"] = "档案陝界 (坝坑)"

    L["RACE_67095"] = "起伝森林航线"
    L["RACE_67096"] = "起伝森林航线 (进阶)"
    L["RACE_72793"] = "起伝森林航线 (坝坑)"
    L["RACE_69957"] = "杝尔覝塞试炼"
    L["RACE_69958"] = "杝尔覝塞试炼 (进阶)"
    L["RACE_72792"] = "杝尔覝塞试炼 (坝坑)"
    L["RACE_70051"] = "山崖环靓"
    L["RACE_70052"] = "山崖环靓 (进阶)"
    L["RACE_72760"] = "山崖环靓 (坝坑)"
    L["RACE_70059"] = "学院爬均赛"
    L["RACE_70060"] = "学院爬均赛 (进阶)"
    L["RACE_72754"] = "学院爬均赛 (坝坑)"
    L["RACE_70157"] = "花园休闲赛"
    L["RACE_70158"] = "花园休闲赛 (进阶)"
    L["RACE_72769"] = "花园休闲赛 (坝坑)"
    L["RACE_70161"] = "交错洞窟"
    L["RACE_70163"] = "交错洞窟 (进阶)"
    L["RACE_72750"] = "交错洞窟 (坝坑)"

    L["RACE_FINISHED_CHARACTER_BEST_FORMAT"] = function(race, time) return "You finished "..race..", current personal best in this character is "..time.." seconds"; end
    L["RACE_FINISHED_SAVED_BEST_FORMAT"] = function(race, time, saved) return "You finished "..race..", current personal best in this character is "..time.." seconds, local saved best is "..saved.." seconds"; end
    L["RACE_FINISHED_FORMAT"] = function(race, time) return "你完戝 "..race.." 用时 "..time.." 秒"; end
    L["RACE_RECAP_FORMAT"] = function(race, time) return "> |cffffd700"..race.."|r in |cffffd700"..time.."|r 秒"; end
    L["RACE_TIME_FORMAT"] = function(time) return time.." 秒"; end

    -- Chat lookup
    L["NPC_NAMES"] = {"青铜时光守护者"};
end