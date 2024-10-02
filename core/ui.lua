local addonName, SRR = ...;
local L = LibStub("AceLocale-3.0"):GetLocale(addonName, true);
local setmetatable = _G.setmetatable;

local AceGUI = LibStub("AceGUI-3.0");
local isOpened = false;

function SRR:AddAllPB(container)
    container:ReleaseChildren();
    SRR:AddDornIslandPB(container)
    SRR:AddRingingDeepsPB(container)
    SRR:AddHallowfallPB(container)
    SRR:AddAzjKahetPB(container)
    SRR:AddWakingShoresPB(container);
    SRR:AddOhnahranPlainsPB(container);
    SRR:AddAzureSpanPB(container);
    SRR:AddThaldraszusPB(container);
    SRR:AddForbiddenReachPB(container);
    SRR:AddZaralekCavernPB(container);
    SRR:AddKalimdorCupPB(container);
    --container:DoLayout();
end

function SRR:AddPBLine_Table(races, container)
    if races then
        table.foreach(races, function(k, data)
            local race = SRR:GetRace(data.normal);
            local raceAdv = SRR:GetRace(data.advanced);
            local raceReverse = SRR:GetRace(data.reverse);

            local normal = SRR.db.global.pb[data.normal];
            local advanced = SRR.db.global.pb[data.advanced or 0];
            local reverse = SRR.db.global.pb[data.reverse or 0];
            SRR:AddPBLine(race, raceAdv, raceReverse, normal, advanced, reverse, container);
        end);
    end
end

function SRR:AddDornIslandPB(container)
    SRR:AddPBZoneHeader(L["ZONE_DORN_ISLAND"], container)
    SRR:AddPBHeader(container);
    local races = {
        {normal = 80219, advanced = 80225, reverse = 80231},
        {normal = 80220, advanced = 80226, reverse = 80232},
        {normal = 80221, advanced = 80227, reverse = 80233},
        {normal = 80222, advanced = 80228, reverse = 80234},
        {normal = 80223, advanced = 80229, reverse = 80235},
        {normal = 80224, advanced = 80230, reverse = 80236},
    };
    SRR:AddPBLine_Table(races, container);
end

function SRR:AddRingingDeepsPB(container)
    SRR:AddPBZoneHeader(L["ZONE_RINGING_DEEPS"], container)
    SRR:AddPBHeader(container);
    local races = {
        {normal = 80237, advanced = 80244, reverse = 80250},
        {normal = 80238, advanced = 80245, reverse = 80251},
        {normal = 80239, advanced = 80246, reverse = 80252},
        {normal = 80240, advanced = 80247, reverse = 80253},
        {normal = 80242, advanced = 80248, reverse = 80254},
        {normal = 80243, advanced = 80249, reverse = 80255},
    };
    SRR:AddPBLine_Table(races, container);
end

function SRR:AddHallowfallPB(container)
    SRR:AddPBZoneHeader(L["ZONE_HALLOWFALL"], container)
    SRR:AddPBHeader(container);
    local races = {
        {normal = 80256, advanced = 80265, reverse = 80271},
        {normal = 80257, advanced = 80266, reverse = 80272},
        {normal = 80258, advanced = 80267, reverse = 80273},
        {normal = 80259, advanced = 80268, reverse = 80274},
        {normal = 80260, advanced = 80269, reverse = 80275},
        {normal = 80261, advanced = 80270, reverse = 80276},
    };
    SRR:AddPBLine_Table(races, container);
end

function SRR:AddAzjKahetPB(container)
    SRR:AddPBZoneHeader(L["ZONE_AZJ_KAHET"], container)
    SRR:AddPBHeader(container);
    local races = {
        {normal = 80277, advanced = 80283, reverse = 80289},
        {normal = 80278, advanced = 80284, reverse = 80290},
        {normal = 80279, advanced = 80285, reverse = 80291},
        {normal = 80280, advanced = 80286, reverse = 80292},
        {normal = 80281, advanced = 80287, reverse = 80293},
        {normal = 80282, advanced = 80288, reverse = 80294},
    };
    SRR:AddPBLine_Table(races, container);
end

function SRR:AddWakingShoresPB(container)
    SRR:AddPBZoneHeader(L["ZONE_WAKING_SHORES"], container)
    SRR:AddPBHeader(container);
    local races = {
        {normal = 66679, advanced = 66692, reverse = 72052},
        {normal = 66710, advanced = 66712, reverse = 72700},
        {normal = 66721, advanced = 66722, reverse = 72705},
        {normal = 66725, advanced = 66726, reverse = 72706},
        {normal = 66732, advanced = 66733, reverse = 72734},
        {normal = 66727, advanced = 66728, reverse = 72707},
        {normal = 66777, advanced = 66778, reverse = 72739},
        {normal = 66786, advanced = 66787, reverse = 72740},
    };
    SRR:AddPBLine_Table(races, container);
end

function SRR:AddOhnahranPlainsPB(container)
    SRR:AddPBZoneHeader(L["ZONE_OHNAHRAN_PLAINS"], container)
    SRR:AddPBHeader(container);
    local races = {
        {normal = 66835, advanced = 66836, reverse = 72801},
        {normal = 66877, advanced = 66878, reverse = 72802},
        {normal = 66880, advanced = 66881, reverse = 72803},
        {normal = 66885, advanced = 66886, reverse = 72805},
        {normal = 66921, advanced = nil, reverse = nil},
        {normal = 66933, advanced = nil, reverse = nil},
        {normal = 70710, advanced = 70711, reverse = 72807},
    };
    SRR:AddPBLine_Table(races, container);
end

function SRR:AddAzureSpanPB(container)
    SRR:AddPBZoneHeader(L["ZONE_AZURE_SPAN"], container)
    SRR:AddPBHeader(container);
    local races = {
        {normal = 66946, advanced = 66947, reverse = 72796},
        {normal = 67002, advanced = 67003, reverse = 72799},
        {normal = 67031, advanced = 67032, reverse = 72794},
        {normal = 67296, advanced = 67297, reverse = 72800},
        {normal = 67565, advanced = 67566, reverse = 72795},
        {normal = 67741, advanced = 67742, reverse = 72797},
    };
    SRR:AddPBLine_Table(races, container);
end

function SRR:AddThaldraszusPB(container)
    SRR:AddPBZoneHeader(L["ZONE_THALDRASZUS"], container)
    SRR:AddPBHeader(container);
    local races = {
        {normal = 67095, advanced = 67096, reverse = 72793},
        {normal = 69957, advanced = 69958, reverse = 72792},
        {normal = 70051, advanced = 70052, reverse = 72760},
        {normal = 70059, advanced = 70060, reverse = 72754},
        {normal = 70157, advanced = 70158, reverse = 72769},
        {normal = 70161, advanced = 70163, reverse = 72750},
    };
    SRR:AddPBLine_Table(races, container);
end

function SRR:AddForbiddenReachPB(container)
    SRR:AddPBZoneHeader(L["ZONE_FORBIDDENREACH"], container)
    SRR:AddPBHeader(container);
    local races = {
        {normal = 73017, advanced = 73018, reverse = 73019},
        {normal = 73020, advanced = 73023, reverse = 73024},
        {normal = 73025, advanced = 73027, reverse = 73028},
        {normal = 73029, advanced = 73030, reverse = 73032},
        {normal = 73033, advanced = 73034, reverse = 73052},
        {normal = 73061, advanced = 73062, reverse = 73065},
    };
    SRR:AddPBLine_Table(races, container);
end

function SRR:AddZaralekCavernPB(container)
    SRR:AddPBZoneHeader(L["ZONE_ZARALEKCAVERN"], container)
    SRR:AddPBHeader(container);
    local races = {
        {normal = 74839, advanced = 74842, reverse = 74882},
        {normal = 74889, advanced = 74899, reverse = 74925},
        {normal = 74939, advanced = 74943, reverse = 74944},
        {normal = 74951, advanced = 74954, reverse = 74956},
        {normal = 74972, advanced = 74975, reverse = 74977},
        {normal = 75035, advanced = 75042, reverse = 75043},
    };
    SRR:AddPBLine_Table(races, container);
end

function SRR:AddKalimdorCupPB(container)
    SRR:AddPBZoneHeader(L["ZONE_KALIMDORCUP"], container)
    SRR:AddPBHeader(container);
    local races = {
        {normal = 75330, advanced = 75331, reverse = 75332},
        {normal = 75310, advanced = 75311, reverse = 75312},
        {normal = 75317, advanced = 75318, reverse = 75319},
        {normal = 75277, advanced = 75293, reverse = 75294},
        {normal = 75347, advanced = 75355, reverse = 75356},
        {normal = 75378, advanced = 75379, reverse = 75380},
        {normal = 75385, advanced = 75386, reverse = 75387},
        {normal = 75394, advanced = 75395, reverse = 75396},
        {normal = 75409, advanced = 75410, reverse = 75411},
        {normal = 75412, advanced = 75413, reverse = 75414},
        {normal = 75437, advanced = 75438, reverse = 75439},
        {normal = 75463, advanced = 75464, reverse = 75465},
        {normal = 75468, advanced = 75469, reverse = 75470},
        {normal = 75472, advanced = 75473, reverse = 75474},
        {normal = 75481, advanced = 75482, reverse = 75483},
        {normal = 75485, advanced = 75486, reverse = 75487},
    };
    SRR:AddPBLine_Table(races, container);
end

function SRR:AddPBZoneHeader(zoneName, container)
    local lineGroup = AceGUI:Create("SimpleGroup");
    lineGroup:SetFullWidth(true);
    lineGroup:SetLayout("Flow");
    container:AddChild(lineGroup);

    local zone = AceGUI:Create("Heading");
    zone:SetText(zoneName);
    zone:SetRelativeWidth(1);
    lineGroup:AddChild(zone);
end

function SRR:AddPBHeader(container)
    local lineGroup = AceGUI:Create("SimpleGroup");
    lineGroup:SetFullWidth(true);
    lineGroup:SetLayout("Flow");
    container:AddChild(lineGroup);

    local raceName = AceGUI:Create("Label");
    raceName:SetText(L["UI_PB_HEADER_RACE"]);
    raceName:SetRelativeWidth(0.2);
    lineGroup:AddChild(raceName);

    local raceTimeN = AceGUI:Create("Label");
    raceTimeN:SetText(L["UI_PB_HEADER_PB_N"]);
    raceTimeN:SetRelativeWidth(0.1);
    lineGroup:AddChild(raceTimeN);

    local raceTimeA = AceGUI:Create("Label");
    raceTimeA:SetText(L["UI_PB_HEADER_PB_A"]);
    raceTimeA:SetRelativeWidth(0.11);
    lineGroup:AddChild(raceTimeA);

    local raceTimeR = AceGUI:Create("Label");
    raceTimeR:SetText(L["UI_PB_HEADER_PB_R"]);
    raceTimeR:SetRelativeWidth(0.12);
    lineGroup:AddChild(raceTimeR);
    
    local raceGTimeN = AceGUI:Create("Label");
    raceGTimeN:SetText(L["UI_PB_HEADER_GPB_N"]);
    raceGTimeN:SetRelativeWidth(0.15);
    lineGroup:AddChild(raceGTimeN);

    local raceGTimeA = AceGUI:Create("Label");
    raceGTimeA:SetText(L["UI_PB_HEADER_GPB_A"]);
   raceGTimeA:SetRelativeWidth(0.15);
    lineGroup:AddChild(raceGTimeA);

    local raceGTimeR = AceGUI:Create("Label");
    raceGTimeR:SetText(L["UI_PB_HEADER_GPB_R"]);
    raceGTimeR:SetRelativeWidth(0.15);
    lineGroup:AddChild(raceGTimeR);
end

function SRR:AddPBLine(race, raceAdv, raceReverse, normalTime, advancedTime, reverseTime, container)
    local formatedNormal = "-";
    local formatedAdvanced = "-";
    local formatedReverse = "-";

    if nil ~= normalTime then
        formatedNormal = L["RACE_TIME_FORMAT"](normalTime);
        if tonumber(race.gold) > tonumber(normalTime) then
            formatedNormal = "|cff13ef13"..formatedNormal.."|r";
        end
    end


    formatedNormal = formatedNormal.." / |cffffd700"..L["RACE_TIME_FORMAT"](race.gold).."|r";

    if nil ~= advancedTime then
        formatedAdvanced = L["RACE_TIME_FORMAT"](advancedTime);
        if nil ~= raceAdv then
            if tonumber(raceAdv.gold) > tonumber(advancedTime) then
                formatedAdvanced = "|cff13ef13"..formatedAdvanced.."|r";
            end
        end
    end

    if nil ~= raceAdv then
        formatedAdvanced = formatedAdvanced.." / |cffffd700"..L["RACE_TIME_FORMAT"](raceAdv.gold).."|r";
    end

    if nil ~= reverseTime then
        formatedReverse = L["RACE_TIME_FORMAT"](reverseTime);
        if nil ~= raceReverse then
            if tonumber(raceReverse.gold) > tonumber(reverseTime) then
                formatedReverse = "|cff13ef13"..formatedReverse.."|r";
            end
        end
    end

    if nil ~= raceReverse then
        formatedReverse = formatedReverse.." / |cffffd700"..L["RACE_TIME_FORMAT"](raceReverse.gold).."|r";
    end

    local lineGroup = AceGUI:Create("SimpleGroup");
    lineGroup:SetFullWidth(true);
    lineGroup:SetLayout("Flow");
    container:AddChild(lineGroup);

    local raceName = AceGUI:Create("Label");
    raceName:SetText(race.name);
    raceName:SetRelativeWidth(0.2);
    lineGroup:AddChild(raceName);

    local raceTimeN = AceGUI:Create("Label");
    raceTimeN:SetText(formatedNormal);
    raceTimeN:SetRelativeWidth(0.11);
    lineGroup:AddChild(raceTimeN);

    local raceTimeA = AceGUI:Create("Label");
    raceTimeA:SetText(formatedAdvanced);
    raceTimeA:SetRelativeWidth(0.11);
    lineGroup:AddChild(raceTimeA);

    local raceTimeR = AceGUI:Create("Label");
    raceTimeR:SetText(formatedReverse);
    raceTimeR:SetRelativeWidth(0.11);
    lineGroup:AddChild(raceTimeR);

    local gtimeN = nil;
    if nil ~= race then
        local gBest = SRR.db.global.guildpb[race.id];
        if nil ~= gBest then
            local player = UnitName("player")
            gtimeN = L["GUILD_BEST_TIME_FORMAT"](gBest.time, gBest.addedBy);
            if SRR.CURRENT_PLAYER == gBest.addedBy then
                gtimeN = "|cff13ef13"..gtimeN.."|r";
            end
        end
    end

    local gtimeA = nil;
    if nil ~= raceAdv then
        local gBest = SRR.db.global.guildpb[raceAdv.id];
        if nil ~= gBest then
            local player = UnitName("player")
            gtimeA = L["GUILD_BEST_TIME_FORMAT"](gBest.time, gBest.addedBy);
            if SRR.CURRENT_PLAYER == gBest.addedBy then
                gtimeA = "|cff13ef13"..gtimeA.."|r";
            end
        end
    end

    local gtimeR = nil;
    if nil ~= raceReverse then
        local gBest = SRR.db.global.guildpb[raceReverse.id];
        if nil ~= gBest then
            local player = UnitName("player")
            gtimeR = L["GUILD_BEST_TIME_FORMAT"](gBest.time, gBest.addedBy);
            if SRR.CURRENT_PLAYER == gBest.addedBy then
                gtimeR = "|cff13ef13"..gtimeR.."|r";
            end
        end
    end

    gtimeN = gtimeN or '-';
    gtimeA = gtimeA or '-';
    gtimeR = gtimeR or '-';

    local raceGTimeN = AceGUI:Create("Label");
    raceGTimeN:SetText(gtimeN);
    raceGTimeN:SetRelativeWidth(0.15);
    lineGroup:AddChild(raceGTimeN);

    local raceGTimeA = AceGUI:Create("Label");
    raceGTimeA:SetText(gtimeA);
    raceGTimeA:SetRelativeWidth(0.15);
    lineGroup:AddChild(raceGTimeA);

    local raceGTimeR = AceGUI:Create("Label");
    raceGTimeR:SetText(gtimeR);
    raceGTimeR:SetRelativeWidth(0.15);
    lineGroup:AddChild(raceGTimeR);
end

function SRR:OpenPBWindow()
    -- Don't open multiple windows
    if isOpened then return end

    local frame = AceGUI:Create("Frame")
    frame:SetTitle(L["UI_PB_TITLE"]);
    frame:SetStatusText(L["UI_PB_GUILD_INFO"])
    frame:SetWidth(900);
    frame:SetHeight(675);
    frame:SetCallback("OnClose", function(widget)
        frame:ReleaseChildren();
        AceGUI:Release(widget);
        isOpened = false;
    end)
    frame:SetLayout("Flow");

    local mainGroup = AceGUI:Create("SimpleGroup");
    mainGroup:SetFullWidth(true);
    mainGroup:SetFullHeight(true);
    mainGroup:SetLayout("Flow");

    local scrollGroup = AceGUI:Create("SimpleGroup");
    scrollGroup:SetFullWidth(true);
    scrollGroup:SetFullHeight(true);
    scrollGroup:SetLayout("Fill");
    mainGroup:AddChild(scrollGroup);

    scrollFrame = AceGUI:Create("ScrollFrame");
    scrollFrame:SetLayout("Flow");
    scrollGroup:AddChild(scrollFrame);

    SRR:AddAllPB(scrollFrame);

    frame:AddChild(mainGroup);

    isOpened = true;
end