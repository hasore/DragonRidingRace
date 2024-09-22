
local addonName, SRR = ...;
local L = LibStub("AceLocale-3.0"):GetLocale(addonName, true);

-- MESSAGES CONSTANTS
local MESSAGE_PING = "PING";
local MESSAGE_PONG = "PONG";
local MESSAGE_ASK_PBS = "ASK_PBS";
local MESSAGE_SEND_PB = "SEND_PB";

-- send comm message to all addon owners in the guild
function SRR:SendComm(message)
    -- since the addon only support guilds, checking if the player is in a guild in order to avoid annoying chat messages
    if not IsInGuild() then
        return;
    end

    SRR:SendCommMessage(SRR.COMM_PREFIX, message, SRR.COMM_CHANNEL);
    SRR:Debug("Comm Sent // ".. message);
end

-- process the incoming message
function SRR:OnCommReceived(prefix, message, distribution, sender)
    --if "XXXXX" == prefix then
        --SRR:HandleD4Message(prefix, message, distribution, sender);
    --else
        SRR:HandleAddonMessage(prefix, message, distribution, sender);
    --end
end

function SRR:HandleAddonMessage(prefix, message, distribution, sender)
    -- ignore messages we have sent
    if SRR.CURRENT_PLAYER == sender then return end
 
    SRR:Debug("Comm Received // ".. message .. " // from ".. sender);

    local command, nextposition = SRR:GetArgs(message, 1);
    if MESSAGE_PING == command then
        local version = string.sub(message, nextposition);
        SRR:OnPingReceived(sender, version);
    elseif MESSAGE_PONG == command then
        local version = string.sub(message, nextposition);
        SRR:OnPongReceived(sender, version);
    elseif MESSAGE_ASK_PBS == command then
        SRR:SendAllPBs();
    elseif MESSAGE_SEND_PB == command then
        local message = string.sub(message, nextposition);
        local raceTime = SRR.RaceTime:Create(nil, nil, nil);
        raceTime:Unpack(message);
        if raceTime.race and raceTime.time and raceTime.addedBy then
            SRR:OnPBReceived(raceTime, sender);
        end
    end
end

function SRR:SendAskPBS()
    SRR:SendComm(MESSAGE_ASK_PBS);
end

function SRR:SendAllPBs()
    table.foreach(SRR.db.global.pb, function(raceId, time)
        local race = SRR:GetRace(raceId);
        local raceTime = SRR.RaceTime:Create(race.id, time, race.raceType);
        SRR:SendPB(raceTime);
    end);
end

function SRR:SendPB(raceTime)
    if nil == raceTime then
        return;
    end

    local message = raceTime:Pack();
    SRR:SendComm(MESSAGE_SEND_PB .. " " .. message);
end

function SRR:SendPing()
    SRR:SendComm(MESSAGE_PING .." ".. SRR.version);
end

function SRR:SendPong()
    SRR:SendComm(MESSAGE_PONG .." ".. SRR.version);
end