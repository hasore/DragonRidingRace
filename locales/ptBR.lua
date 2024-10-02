 
local addonName, addon = ...;
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "ptBR", false);
 
if L then
    L["ADDON_NAME"] = addonName;
    L["ADDON_DESCRIPTION"] = "Registre seus melhores tempos nas corridas de dragonaria e compita com seus amigos!";
    L["ADDON_VERSION_OUTDATED"] = "Uma versão mais recente do addon está disponível!";
    L["ADDON_VERSION"] = "Versão:";
    L["ADDON_AUTHOR"] = "Autor:";
    L["ADDON_MOTD"] = "Oi, obrigado por usar "..addonName.."! Digite |cffffd700/srr|r para ver seus melhores tempos!";
    L["DATE_FORMAT"] = "%d/%m/%y";
 
    L["FALLBACK_ENABLED"] = "Chamada de metodo alternativo em caso de falha foi ativada.";
    L["FALLBACK_DISABLED"] = "Chamada de metodo alternativo em caso de falha foi desativada.";

    L["UI_PB_TITLE"] = "Seus melhores tempos"
    L["UI_PB_HEADER_RACE"] = "|cffffd700Circuito|r"
    L["UI_PB_HEADER_PB_N"] = "|cffffd700Tempo (normal)|r"
    L["UI_PB_HEADER_PB_A"] = "|cffffd700Tempo (avançado)|r"
    L["UI_PB_HEADER_PB_R"] = "|cffffd700Tempo (reverso)|r"
 
    L["UI_PB_HEADER_GPB_A"] = "|cffffd700Melhor da guilda (avançado)|r"
    L["UI_PB_HEADER_GPB_R"] = "|cffffd700Melhor da guilda (avançado)|r"
    L["UI_PB_GUILD_INFO"] = "Melhores tempos da guilda apenas para membros com o addon SkyridingRace ativado."
    L["GUILD_BEST_TIME_FORMAT"] = function(time, character) return character..": "..time.."s"; end
    L["GUILD_BEST_BEATEN"] = function(time, race, character) return character.." superou o tempo da guilda em "..race.." por "..time.." segundos!"; end
    L["RACE_FINISHED_GUILD_PB_FORMAT"] = function(race, time) return "Você superou o melhor tempo da guilda em  "..race.." completando em "..time.." segundos!"; end
 
    L["RACE_FINISHED_CHARACTER_BEST_FORMAT"] = function(race, time) return "Você terminou "..race..", o seu recorde atual neste personagem é de "..time.." segundos"; end
    L["RACE_FINISHED_SAVED_BEST_FORMAT"] = function(race, time, saved) return "Você terminou "..race..", o seu recorde atual neste personagem é de "..time.." segundos, recorde salvo localmente de "..saved.." segundos"; end
    L["RACE_FINISHED_FORMAT"] = function(race, time) return "Você terminou "..race.." em "..time.." segundos"; end
    L["RACE_FINISHED_PB_FORMAT"] = function(race, time, previousTime) return "Wow, você quebrou seu recorde em  "..race.." terminando em "..time.." segundos! Seu recorde anterior era "..previousTime.." segundos"; end
    L["RACE_RECAP_FORMAT"] = function(race, time) return "> |cffffd700"..race.."|r in |cffffd700"..time.."|r seconds"; end
    L["RACE_TIME_FORMAT"] = function(time) return time.."s"; end
 
    -- Chat lookup
    L["NPC_NAMES"] = {"Guarda-tempo Bronze", "Guarda-tempo Bronze Assistant"};
 
    L["ZONE_DORN_ISLAND"] = "Dorn Island"
    L["ZONE_RINGING_DEEPS"] = "The Ringing Deeps"
    L["ZONE_HALLOWFALL"] = "Hallowfall"
    L["ZONE_AZJ_KAHET"] = "Azj-Kahet"
    L["ZONE_WAKING_SHORES"] = "Costa Desperta"
    L["ZONE_OHNAHRAN_PLAINS"] = "Chapada Ohn'ahrana"
    L["ZONE_AZURE_SPAN"] = "Vasta Lazúli"
    L["ZONE_THALDRASZUS"] = "Thaldraszus"
 
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
    
    L["RACE_66679"] = "Circuito do Santuário da Vida Rubi"
    L["RACE_66692"] = "Circuito do Santuário da Vida Rubi (avançado)"
    L["RACE_72052"] = "Circuito do Santuário da Vida Rubi (reverso)"
    L["RACE_66710"] = "Sobrevoo do Gelo Súbito"
    L["RACE_66712"] = "Sobrevoo do Gelo Súbito (avançado)"
    L["RACE_72700"] = "Sobrevoo do Gelo Súbito (reverso)"
    L["RACE_66721"] = "Slalom da Reserva Selvagem"
    L["RACE_66722"] = "Slalom da Reserva Selvagem (avançado)"
    L["RACE_72705"] = "Slalom da Reserva Selvagem (reverso)"
    L["RACE_66725"] = "Circuito da Reserva Selvagem"
    L["RACE_66726"] = "Circuito da Reserva Selvagem (avançado)"
    L["RACE_72706"] = "Circuito da Reserva Selvagem (reverso)"
    L["RACE_66732"] = "Disputa do Rio do Dossel do Ýpice"
    L["RACE_66733"] = "Disputa do Rio do Dossel do Ýpice (avançado)"
    L["RACE_72734"] = "Disputa do Rio do Dossel do Ýpice (reverso)"
    L["RACE_66727"] = "Voo de Fluibrasa"
    L["RACE_66728"] = "Voo de Fluibrasa (avançado)"
    L["RACE_72707"] = "Voo de Fluibrasa (reverso)"
    L["RACE_66777"] = "Montanha-russa de Uktulut"
    L["RACE_66778"] = "Montanha-russa de Uktulut (avançado)"
    L["RACE_72739"] = "Montanha-russa de Uktulut (reverso)"
    L["RACE_66786"] = "Rotatória Pouso das Asas"
    L["RACE_66787"] = "Rotatória Pouso das Asas (avançado)"
    L["RACE_72740"] = "Rotatória Pouso das Asas (reverso)"
 
    L["RACE_66835"] = "Circuito do Arvoredo Verdelume"
    L["RACE_66836"] = "Circuito do Arvoredo Verdelume (avançado)"
    L["RACE_72801"] = "Circuito do Arvoredo Verdelume (reverso)"
    L["RACE_66877"] = "Travessia do Charco"
    L["RACE_66878"] = "Travessia do Charco (avançado)"
    L["RACE_72802"] = "Travessia do Charco (reverso)"
    L["RACE_66880"] = "Disputa do Rio da Ravina"
    L["RACE_66881"] = "Disputa do Rio da Ravina (avançado)"
    L["RACE_72803"] = "Disputa do Rio da Ravina (reverso)"
    L["RACE_66885"] = "Encosta dos Jardins Esmeraldinos"
    L["RACE_66886"] = "Encosta dos Jardins Esmeraldinos (avançado)"
    L["RACE_72805"] = "Encosta dos Jardins Esmeraldinos (reverso)"
    L["RACE_66921"] = "Arremetida de Maruukai"
    L["RACE_66933"] = "Arremetida do Espelho do Céu"
    L["RACE_70710"] = "Percurso das Corredeiras"
    L["RACE_70711"] = "Percurso das Corredeiras (avançado)"
    L["RACE_72807"] = "Percurso das Corredeiras (reverso)"
 
    L["RACE_66946"] = "Disparada de Vasta Lazúli"
    L["RACE_66947"] = "Disparada de Vasta Lazúli (avançado)"
    L["RACE_72796"] = "Disparada de Vasta Lazúli (reverso)"
    L["RACE_67002"] = "Slalom de Vasta Lazúli"
    L["RACE_67003"] = "Slalom de Vasta Lazúli (avançado)"
    L["RACE_72799"] = "Slalom de Vasta Lazúli (reverso)"
    L["RACE_67031"] = "Encosta de Vakthros"
    L["RACE_67032"] = "Encosta de Vakthros (avançado)"
    L["RACE_72794"] = "Encosta de Vakthros (reverso)"
    L["RACE_67296"] = "Rota de Iskaara"
    L["RACE_67297"] = "Rota de Iskaara (avançado)"
    L["RACE_72800"] = "Rota de Iskaara (reverso)"
    L["RACE_67565"] = "Sobrevoo das Terras Gélidas"
    L["RACE_67566"] = "Sobrevoo das Terras Gélidas (avançado)"
    L["RACE_72795"] = "Sobrevoo das Terras Gélidas (reverso)"
    L["RACE_67741"] = "Âmbito do Arquivo"
    L["RACE_67742"] = "Âmbito do Arquivo (avançado)"
    L["RACE_72797"] = "Âmbito do Arquivo (reverso)"
 
    L["RACE_67095"] = "Revoada da Floresta Fluente"
    L["RACE_67096"] = "Revoada da Floresta Fluente (avançado)"
    L["RACE_72793"] = "Revoada da Floresta Fluente (reverso)"
    L["RACE_69957"] = "Prova do Baluarte de Tyr"
    L["RACE_69958"] = "Prova do Baluarte de Tyr (avançado)"
    L["RACE_72792"] = "Prova do Baluarte de Tyr (reverso)"
    L["RACE_70051"] = "Circuito do Penhasco"
    L["RACE_70052"] = "Circuito do Penhasco (avançado)"
    L["RACE_72760"] = "Circuito do Penhasco (reverso)"
    L["RACE_70059"] = "Ascensão da Academia"
    L["RACE_70060"] = "Ascensão da Academia (avançado)"
    L["RACE_72754"] = "Ascensão da Academia (reverso)"
    L["RACE_70157"] = "Jardim Gallivant"
    L["RACE_70158"] = "Jardim Gallivant (avançado)"
    L["RACE_72769"] = "Jardim Gallivant (reverso)"
    L["RACE_70161"] = "Zigue-zague de Cavernas"
    L["RACE_70163"] = "Zigue-zague de Cavernas (avançado)"
    L["RACE_72750"] = "Zigue-zague de Cavernas (reverso)"
 
end