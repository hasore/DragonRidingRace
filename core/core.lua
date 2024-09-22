--[[
SkyridingRace
Thank your group at the end of a dungeon run!
]]--

local addonName, addon = ...;
local L = LibStub("AceLocale-3.0"):GetLocale(addonName, true);
local SRR = LibStub("AceAddon-3.0"):NewAddon(addon, addonName, "AceEvent-3.0", "AceConsole-3.0", "AceComm-3.0", "AceTimer-3.0");

-- CONFIGURATION
--SRR.version = "0.0.1";
SRR.version = "dev";
SRR.versionAlertSent = false

SRR.COMM_PREFIX = addonName;
SRR.COMM_CHANNEL = "GUILD";
SRR.CURRENT_PLAYER = UnitName("player");

local options = {
    name = addonName,
    desc = L["ADDON_DESCRIPTION"],
    handler = SRR,
    type = "group",
    args = {
        intro = {
            order = 1,
            type = "description",
            name = L["ADDON_DESCRIPTION"],
            cmdHidden = true
        },
        vers = {
            order = 2,
            type = "description",
            name = "|cffffd700    "..L["ADDON_VERSION"].."|r "..SRR.version,
            cmdHidden = true
        },
        desc = {
            order = 3,
            type = "description",
            name = "|cffffd700    "..L["ADDON_AUTHOR"].."|r Tzinn\n\n",
            cmdHidden = true
        },
    }
};
LibStub("AceConfig-3.0"):RegisterOptionsTable(addonName, options);
local AceConfigDialog = LibStub("AceConfigDialog-3.0");

-- DEFAULTS
local dbDefaults = {
    global = {
        options = {
            fallback = true,
        },
        pb = {},
        guildpb = {},
        races = {},
    }
};

function SRR:OnInitialize()
    -- init database
    SRR.db = LibStub("AceDB-3.0"):New("SRRDB", dbDefaults);

    -- init options
    SRR.optionsFrames = AceConfigDialog:AddToBlizOptions(addonName, L["ADDON_NAME"]);
end

function SRR:OnEnable()
    -- init commands
    SRR:RegisterChatCommand("srr", "OnSlashCommand");

    -- hook to events
    SRR:RegisterComm(SRR.COMM_PREFIX);
    SRR:RegisterEvent("QUEST_ACCEPTED", "OnQuestAccepted");
    SRR:RegisterEvent("QUEST_REMOVED", "OnQuestRemoved");
    SRR:RegisterEvent("CHAT_MSG_MONSTER_SAY", "OnMonsterSay");

    -- say hello
    SRR:Print(L["ADDON_MOTD"]);

    SRR:Fallback();
    SRR:SendPing();
    SRR:SendAskPBS();
    SRR:SendAllPBs();
    SRR:Cleanup();

    --SRR:OnMonsterSay("CHAT_MSG_MONSTER_SAY", "Your race time was 51.637 seconds. That was your best time yet!", "Bronze Timekeeper");
    --SRR:OnMonsterSay("CHAT_MSG_MONSTER_SAY", "Eure Zeit liegt bei 62,677 Sekunden. Eure persönliche Bestzeit für dieses Rennen liegt bei 53.632 Sekunden.", "Bronzezeithüterin");
end

function SRR:Cleanup()
    local count = table.getn(SRR.db.global.races);
    local start = count - 10;
    if start < 1 then
        return;
    end

    local keep = {};
    for i = start, count, 1 do
        local data =  SRR.db.global.races[i];
        table.insert(keep, data);
    end
    SRR.db.global.races = keep;
end

function SRR:OnSlashCommand(input)
    if nil ~= input and "" ~= input then
        local command, nextposition = SRR:GetArgs(input, 1);
        if "ping" == command then
            SRR:SendPing();
        elseif "fallback" == command then
            SRR:Fallback(true);
        elseif "last" == command then
            local count = table.getn(SRR.db.global.races);
            local max = count - 10;
            if max < 1 then
                max = 1;
            end
            for i = count, max, -1 do
                local data =  SRR.db.global.races[i];
                local race = SRR:GetRace(data.race);
                if race then
                    SRR:Print(L["RACE_RECAP_FORMAT"](race.name, data.time));
                end
            end
        end
    else
        SRR:OpenPBWindow();
    end
end

local function locate(table, value)
    for i = 1, #table do
        if table[i] == value then return true end
    end
    return false;
end

function SRR:OnMonsterSay(event, message, npc)
    if SRR.CURRENT_RACE_CURRENCY then
        return
    end

    -- messages :
    -- - Your race time was 51.637 seconds. That was your best time yet!
    -- - Bronze Timekeeper says: Your race time was 64.944 seconds. Your personal best for this race is 51.064 seconds.
    -- - Bronzezeithüterin sagt: Eure Zeit liegt bei 62,677 Sekunden. Eure persönliche Bestzeit für dieses Rennen liegt bei 53.632 Sekunden.
    if true == locate(L["NPC_NAMES"], npc) then
        local i = 0;
        message = string.gsub(message, ",", ".");
        local times = {};
        for time in string.gmatch(message, "(%d+.%d+)") do
            time = tonumber(time);
            table.insert(times, time);
            i = i + 1;
        end

        if table.getn(times) == 1 then
            SRR:EndRace(times[1]);
        elseif table.getn(times) > 1 then
            -- the NPC spoke about the PB, just try to add it in case it's not there
            SRR:EndRaceWithBetterTime(times[1], times[2]);
        end
    end
end

function SRR:OnQuestAccepted(event, questId)
    SRR:Debug("Quest ACCEPTED: ".. questId);
    if questId
    then
        local race = SRR:GetRace(questId);
        if race then
            SRR:StartRace(race);
        else
            SRR:Debug("Quest ".. questId .." is not a race, skipping");
        end
    end
end

function SRR:OnQuestRemoved(event, questId)
    SRR:Debug("Quest REMOVED: ".. questId);
    if not SRR.CURRENT_RACE_CURRENCY or not SRR.CURRENT_RACE then
        -- we were not racing, skip
        SRR:Debug("We were not racing, skip");
        return
    end

    local race = SRR.CURRENT_RACE;

    if race.id ~= questId then
        SRR:Debug("The removed questId isn't the current race id, skip");
        return
    end

    local currencyInfo = C_CurrencyInfo.GetCurrencyInfo(SRR.CURRENT_RACE_CURRENCY);
    if not currencyInfo then
        SRR:Debug("Race currency does not correspond to any existing currency, skip");
        return
    end

    local currencyPb = currencyInfo.quantity;
    local savedPb = SRR.db.global.pb[questId];
    SRR:Debug("Time : ".. currencyInfo.quantity);

    -- Normalize currencyPb to a float with 3 decimals
    currencyPb = currencyPb * 0.001;
    currencyPb = string.format("%.3f", currencyPb);
    currencyPb = tonumber(currencyPb);

    if savedPb == 0 then
        savedPb = nil;
    end

    if savedPb ~= nil then
        -- Normalize savedPb to a float with 3 decimals
        savedPb = string.format("%.3f", savedPb);
        savedPb = tonumber(savedPb);
    end

    if not savedPb then
        if SRR.db.global.options.fallback then -- fallback to OnMonsterSay
            SRR.CURRENT_RACE_CURRENCY = nil
        else
            SRR:OnRaceEndedCharacterBest(race, currencyPb);
            SRR:TrySetScoreOnly(currencyPb);
        end
        return
    end

    if currencyPb < savedPb then
        SRR:EndRace(currencyPb);
    else
        if SRR.db.global.options.fallback then -- fallback to OnMonsterSay
            SRR.CURRENT_RACE_CURRENCY = nil
        elseif not SRR:Failed() then
            SRR:OnRaceEndedSavedBest(race, currencyPb, savedPb);
            SRR:TrySetScoreOnly(currencyPb);
        end
    end
end

function SRR:Failed()
    local spells = {394884, 382142}

    for _, spell in pairs(spells) do
        local name = C_UnitAuras.GetPlayerAuraBySpellID(spell);

        if name then
            return true
        end
    end

    return false
end

function SRR:OnPBReceived(raceTime, character)
    local timeForRace = SRR.db.global.guildpb[raceTime.race];

    if nil == timeForRace then
        SRR:TrySetGuildBest(raceTime);
        return;
    end

    if nil ~= timeForRace and tonumber(timeForRace.time) > tonumber(raceTime.time) then
        --SRR.db.global.guildpb[raceTime.race] = raceTime;
        SRR:TrySetGuildBest(raceTime);

        local race = SRR:GetRace(raceTime.race);
        if nil ~= race then
            SRR:Print(L["GUILD_BEST_BEATEN"](raceTime.time, race.name, character));
        end
        return;
    end
end

function SRR:OnPingReceived(from, version)
    if version > SRR.version and false == SRR.versionAlertSent then
        SRR:Print(L["ADDON_VERSION_OUTDATED"]);
        SRR.versionAlertSent = true;
    end
    SRR:SendPong();
end

function SRR:OnPongReceived(from, version)
    SRR:Debug("> |cffffd700".. from .."|r has version |cffffd700".. version .."|r");
end

function SRR:PrintError(message)
    SRR:Print("|cFFCC3333".. message .."|r");
end

function SRR:Debug(message)
    if "dev" == self.version then
        SRR:Print("|cFFAB18DB".. message .."|r");
    end
end

function SRR:Fallback(toggle)
    if toggle then
        SRR.db.global.options.fallback = not SRR.db.global.options.fallback
    end

    local msg = L["FALLBACK_DISABLED"]

    if SRR.db.global.options.fallback then
        msg = L["FALLBACK_ENABLED"]
    end

    SRR:Print(msg)
end