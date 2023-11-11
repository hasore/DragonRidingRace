local addonName, addon = ...;
---@class DRR
local DRR = addon;
local L = LibStub("AceLocale-3.0"):GetLocale(addonName, true);
local HBD = LibStub("HereBeDragons-2.0");
local setmetatable = _G.setmetatable;

local AceGUI = LibStub("AceGUI-3.0");
local opened = false;
local frame = AceGUI:Create("DRRWindow");
frame:Hide();
local scrollFrame = AceGUI:Create("ScrollFrame");
local mainGroup = AceGUI:Create("SimpleGroup");
-- local mapFrame = CreateFrame("Frame", nil, frame.frame);

function DRR:AddAllPB(container)
    container:ReleaseChildren();
    DRR:AddWakingShoresPB(container);
    DRR:AddOhnahranPlainsPB(container);
    DRR:AddAzureSpanPB(container);
    DRR:AddThaldraszusPB(container);
    DRR:AddForbiddenReachPB(container);
    DRR:AddZaralekCavernPB(container);
    DRR:AddKalimdorCupPB(container);
    --container:DoLayout();
end

function DRR:AddPBLine_Table(races, container)
    if races then
        table.foreach(races, function(k, data)
            local race = DRR:GetRace(data.normal);
            local raceAdv = DRR:GetRace(data.advanced);
            local raceReverse = DRR:GetRace(data.reverse);

            local normal = DRR.db.global.pb[data.normal];
            local advanced = DRR.db.global.pb[data.advanced or 0];
            local reverse = DRR.db.global.pb[data.reverse or 0];
            DRR:AddPBLine(race, raceAdv, raceReverse, normal, advanced, reverse, container);
        end);
    end
end

function DRR:AddWakingShoresPB(container)
    DRR:AddPBZoneHeader(L["ZONE_WAKING_SHORES"], container)
    DRR:AddPBHeader(container);
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
    DRR:AddPBLine_Table(races, container);
end

function DRR:AddOhnahranPlainsPB(container)
    DRR:AddPBZoneHeader(L["ZONE_OHNAHRAN_PLAINS"], container)
    DRR:AddPBHeader(container);
    local races = {
        {normal = 66835, advanced = 66836, reverse = 72801},
        {normal = 66877, advanced = 66878, reverse = 72802},
        {normal = 66880, advanced = 66881, reverse = 72803},
        {normal = 66885, advanced = 66886, reverse = 72805},
        {normal = 66921, advanced = nil, reverse = nil},
        {normal = 66933, advanced = nil, reverse = nil},
        {normal = 70710, advanced = 70711, reverse = 72807},
    };
    DRR:AddPBLine_Table(races, container);
end

function DRR:AddAzureSpanPB(container)
    DRR:AddPBZoneHeader(L["ZONE_AZURE_SPAN"], container)
    DRR:AddPBHeader(container);
    local races = {
        {normal = 66946, advanced = 66947, reverse = 72796},
        {normal = 67002, advanced = 67003, reverse = 72799},
        {normal = 67031, advanced = 67032, reverse = 72794},
        {normal = 67296, advanced = 67297, reverse = 72800},
        {normal = 67565, advanced = 67566, reverse = 72795},
        {normal = 67741, advanced = 67742, reverse = 72797},
    };
    DRR:AddPBLine_Table(races, container);
end

function DRR:AddThaldraszusPB(container)
    DRR:AddPBZoneHeader(L["ZONE_THALDRASZUS"], container)
    DRR:AddPBHeader(container);
    local races = {
        {normal = 67095, advanced = 67096, reverse = 72793},
        {normal = 69957, advanced = 69958, reverse = 72792},
        {normal = 70051, advanced = 70052, reverse = 72760},
        {normal = 70059, advanced = 70060, reverse = 72754},
        {normal = 70157, advanced = 70158, reverse = 72769},
        {normal = 70161, advanced = 70163, reverse = 72750},
    };
    DRR:AddPBLine_Table(races, container);
end

function DRR:AddForbiddenReachPB(container)
    DRR:AddPBZoneHeader(L["ZONE_FORBIDDENREACH"], container)
    DRR:AddPBHeader(container);
    local races = {
        {normal = 73017, advanced = 73018, reverse = 73019},
        {normal = 73020, advanced = 73023, reverse = 73024},
        {normal = 73025, advanced = 73027, reverse = 73028},
        {normal = 73029, advanced = 73030, reverse = 73032},
        {normal = 73033, advanced = 73034, reverse = 73052},
        {normal = 73061, advanced = 73062, reverse = 73065},
    };
    DRR:AddPBLine_Table(races, container);
end

function DRR:AddZaralekCavernPB(container)
    DRR:AddPBZoneHeader(L["ZONE_ZARALEKCAVERN"], container)
    DRR:AddPBHeader(container);
    local races = {
        {normal = 74839, advanced = 74842, reverse = 74882},
        {normal = 74889, advanced = 74899, reverse = 74925},
        {normal = 74939, advanced = 74943, reverse = 74944},
        {normal = 74951, advanced = 74954, reverse = 74956},
        {normal = 74972, advanced = 74975, reverse = 74977},
        {normal = 75035, advanced = 75042, reverse = 75043},
    };
    DRR:AddPBLine_Table(races, container);
end

function DRR:AddKalimdorCupPB(container)
    DRR:AddPBZoneHeader(L["ZONE_KALIMDORCUP"], container)
    DRR:AddPBHeader(container);
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
    DRR:AddPBLine_Table(races, container);
end

function DRR:AddPBZoneHeader(zoneName, container)
    local lineGroup = AceGUI:Create("SimpleGroup");
    lineGroup:SetFullWidth(true);
    lineGroup:SetLayout("Flow");
    container:AddChild(lineGroup);

    local zone = AceGUI:Create("Heading");
    zone:SetText(zoneName);
    zone:SetRelativeWidth(1);
    lineGroup:AddChild(zone);
end

function DRR:AddPBHeader(container)
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
    raceTimeN:SetRelativeWidth(0.15);
    lineGroup:AddChild(raceTimeN);

    local raceTimeA = AceGUI:Create("Label");
    raceTimeA:SetText(L["UI_PB_HEADER_PB_A"]);
    raceTimeA:SetRelativeWidth(0.15);
    lineGroup:AddChild(raceTimeA);

    local raceTimeR = AceGUI:Create("Label");
    raceTimeR:SetText(L["UI_PB_HEADER_PB_R"]);
    raceTimeR:SetRelativeWidth(0.15);
    lineGroup:AddChild(raceTimeR);

    local raceGTimeA = AceGUI:Create("Label");
    raceGTimeA:SetText(L["UI_PB_HEADER_GPB_A"]);
    raceGTimeA:SetRelativeWidth(0.17);
    lineGroup:AddChild(raceGTimeA);

    local raceGTimeR = AceGUI:Create("Label");
    raceGTimeR:SetText(L["UI_PB_HEADER_GPB_R"]);
    raceGTimeR:SetRelativeWidth(0.17);
    lineGroup:AddChild(raceGTimeR);
end

function DRR:AddPBLine(race, raceAdv, raceReverse, normalTime, advancedTime, reverseTime, container)
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
    raceTimeN:SetRelativeWidth(0.15);
    lineGroup:AddChild(raceTimeN);

    local raceTimeA = AceGUI:Create("Label");
    raceTimeA:SetText(formatedAdvanced);
    raceTimeA:SetRelativeWidth(0.15);
    lineGroup:AddChild(raceTimeA);

    local raceTimeR = AceGUI:Create("Label");
    raceTimeR:SetText(formatedReverse);
    raceTimeR:SetRelativeWidth(0.15);
    lineGroup:AddChild(raceTimeR);

    local gtimeA = nil;
    if nil ~= raceAdv then
        local gBest = DRR.db.global.guildpb[raceAdv.id];
        if nil ~= gBest then
            local player = UnitName("player")
            gtimeA = L["GUILD_BEST_TIME_FORMAT"](gBest.time, gBest.addedBy);
            if DRR.CURRENT_PLAYER == gBest.addedBy then
                gtimeA = "|cff13ef13"..gtimeA.."|r";
            end
        end
    end

    local gtimeR = nil;
    if nil ~= raceReverse then
        local gBest = DRR.db.global.guildpb[raceReverse.id];
        if nil ~= gBest then
            local player = UnitName("player")
            gtimeR = L["GUILD_BEST_TIME_FORMAT"](gBest.time, gBest.addedBy);
            if DRR.CURRENT_PLAYER == gBest.addedBy then
                gtimeR = "|cff13ef13"..gtimeR.."|r";
            end
        end
    end

    gtimeA = gtimeA or '-';
    gtimeR = gtimeR or '-';

    local raceGTimeA = AceGUI:Create("Label");
    raceGTimeA:SetText(gtimeA);
    raceGTimeA:SetRelativeWidth(0.17);
    lineGroup:AddChild(raceGTimeA);

    local raceGTimeR = AceGUI:Create("Label");
    raceGTimeR:SetText(gtimeR);
    raceGTimeR:SetRelativeWidth(0.17);
    lineGroup:AddChild(raceGTimeR);
end

function DRR:OpenPBWindow()
    if not opened then
        frame:SetTitle(L["UI_PB_TITLE"]);
        -- frame:SetStatusText(L["UI_PB_GUILD_INFO"])
        -- frame:SetWidth(800);
        -- frame:SetHeight(800 * 0.66);
        -- frame.frame:SetResizeBounds(500, 500 * 0.66);
        -- frame.frame:SetFrameStrata("HIGH");
        -- frame:SetCallback("OnClose", function(widget)
        --     frame:Hide();
        -- end)
        -- frame:SetLayout("Flow");

        -- function frame:OnWidthSet(width)
        --     frame:SetHeight(width * 0.66);
        -- end

        mainGroup:SetFullWidth(true);
        mainGroup:SetFullHeight(true);
        mainGroup:SetLayout("Fill");

        -- local scrollGroup = AceGUI:Create("SimpleGroup");
        -- scrollGroup:SetFullWidth(true);
        -- scrollGroup:SetFullHeight(true);
        -- scrollGroup:SetLayout("Fill");
        -- mainGroup:AddChild(scrollGroup);

        -- scrollFrame:SetLayout("Flow");
        -- scrollGroup:AddChild(scrollFrame);

        -- local iconFrame = CreateFrame("Frame", nil, frame.frame);
        -- iconFrame:SetFrameStrata("TOOLTIP")
        -- iconFrame:SetFrameLevel(100)
        -- iconFrame:SetWidth(75);
        -- iconFrame:SetHeight(75);
        -- local icon = iconFrame:CreateTexture(nil, "OVERLAY", nil);
        -- icon:SetTexture("Interface\\AddOns\\"..addonName.."\\images\\logo_window.tga", "CLAMP", "CLAMPTOBLACKADDITIVE");
        -- icon:SetAllPoints(iconFrame);
        -- iconFrame.texture = icon;
        -- iconFrame:SetPoint("TOPLEFT", -15, 15);
        -- iconFrame:Show();

        -- mapFrame:SetAllPoints(frame.frame);
        -- mapFrame:SetPoint("TOPLEFT", frame.frame, "TOPLEFT", 5, -30);
        -- mapFrame:SetPoint("BOTTOMRIGHT", frame.frame, "BOTTOMRIGHT", -5, 5);
        -- mapFrame:SetFrameStrata("BACKGROUND");
        -- local map = mainGroup.frame:CreateTexture(nil, "OVERLAY", nil);
        -- map:SetTexture("Interface\\AddOns\\"..addonName.."\\images\\zones\\2022.tga");
        -- map:SetTexCoord(0, 0.75, 0, 1);
        -- map:SetAllPoints(mainGroup.frame);
        -- map:SetAlpha(0.6);
        -- mapFrame:Show();

        -- local map = AceGUI:Create("DRRMapFrame");
        -- map:SetPoint("TOPLEFT", frame.frame, "TOPLEFT", 5, -30);
        -- map:SetPoint("BOTTOMRIGHT", frame.frame, "BOTTOMRIGHT", -5, 5);
        -- map:SetTexture("Interface\\AddOns\\"..addonName.."\\images\\zones\\2022.tga");
        -- map:SetTextureCoord(0, 0.75, 0, 1);
        -- frame:AddChild(map);

        local map = DRR:UI_CreateMap(frame.content, 2022);
        local playerX, playerY, mapId, mapType = HBD:GetPlayerZonePosition();
        map:AddPin(playerX, playerY);

        -- add name input
        -- local name = AceGUI:Create("EditBox");
        -- name:SetLabel("Name");
        -- name:SetRelativeWidth(0.5);
        -- mainGroup:AddChild(name);


        -- frame:AddChild(mainGroup);
        opened = true;
    end


    -- DRR:AddAllPB(scrollFrame);
    frame:Show();
    

    local playerX, playerY, mapId, mapType = HBD:GetPlayerZonePosition();
    DRR:Debug(playerX.." "..playerY.." "..mapId);
    DRR:Debug(HBD:GetLocalizedMap(mapId));
    local sizeX, sizeY = HBD:GetZoneSize(mapId);
    DRR:Debug(sizeX.." "..sizeY);

    -- local playerIcon = mainGroup.frame:CreateTexture(nil, "OVERLAY", nil);
    -- playerIcon:SetTexture("Interface\\AddOns\\"..addonName.."\\images\\icons.tga");
    -- playerIcon:SetTexCoord(0, 0.5, 0, 1);
    -- playerIcon:SetWidth(24);
    -- playerIcon:SetHeight(24);
    -- playerIcon:SetPoint("CENTER", mainGroup.frame, "TOPLEFT", playerX * mainGroup.frame:GetWidth(), -playerY * mainGroup.frame:GetHeight());
    -- playerIcon:Show();

    _G["DRR_Mainwindow"] = frame.frame;
end
