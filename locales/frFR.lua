
local addonName, addon = ...;
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "frFR", false);

if L then
    L["ADDON_NAME"] = addonName;
    L["ADDON_DESCRIPTION"] = "Enregistre tes meilleurs temps et entre en comp√©tition avec tes amis !";
    L["ADDON_VERSION_OUTDATED"] = "Une version plus r√©cente de l'addon est disponible !";
    L["ADDON_VERSION"] = "Version :";
    L["ADDON_AUTHOR"] = "Auteur :";
    L["ADDON_MOTD"] = "Hey, merci d'utiliser "..addonName.."! Entre |cffffd700/srr|r pour voir tes meilleurs temps !";
    L["DATE_FORMAT"] = "%d/%m/%y";

    L["FALLBACK_ENABLED"] = "Use of alternative method on event of failure is now enabled.";
    L["FALLBACK_DISABLED"] = "Use of alternative method on event of failure is now disabled.";

    L["UI_PB_TITLE"] = "Tes meilleurs temps"
    L["UI_PB_HEADER_RACE"] = "|cffffd700Course|r"
    L["UI_PB_HEADER_PB_N"] = "|cffffd700Temps (normal)|r"
    L["UI_PB_HEADER_PB_A"] = "|cffffd700Temps (avanc√©)|r"
    L["UI_PB_HEADER_PB_R"] = "|cffffd700Temps (invers√©s)|r"

    L["UI_PB_HEADER_GPB_A"] = "|cffffd700Temps guilde (avanc√©)|r"
    L["UI_PB_HEADER_GPB_R"] = "|cffffd700Temps guilde (invers√©s)|r"
    L["UI_PB_GUILD_INFO"] = "Seuls les temps des membres de guilde ayant l'addon SkyridingRace sont affich√©s."
    L["GUILD_BEST_TIME_FORMAT"] = function(time, character) return character..": "..time.."s"; end
    L["GUILD_BEST_BEATEN"] = function(time, race, character) return character.." a battu le meilleur temps de la guilde sur "..race.." en "..time.." secondes !"; end
    L["RACE_FINISHED_GUILD_PB_FORMAT"] = function(race, time) return "Wouhou, vous venez de battre le meilleur temps de la guilde sur "..race.." avec un chrono de "..time.." secondes !"; end

    L["RACE_FINISHED_CHARACTER_BEST_FORMAT"] = function(race, time) return "You finished "..race..", current personal best in this character is "..time.." seconds"; end
    L["RACE_FINISHED_SAVED_BEST_FORMAT"] = function(race, time, saved) return "You finished "..race..", current personal best in this character is "..time.." seconds, local saved best is "..saved.." seconds"; end
    L["RACE_FINISHED_FORMAT"] = function(race, time) return "Vous avez termin√© la course "..race.." en "..time.." secondes"; end
    L["RACE_FINISHED_PB_FORMAT"] = function(race, time, previousTime) return "Waah, vous avez battu votre record sur  "..race.." en faisant un temps de "..time.." secondes ! Bien jou√© ! Ton meilleur temps pr√©c√©dent √©tait "..previousTime.." secondes."; end
    L["RACE_RECAP_FORMAT"] = function(race, time) return "> |cffffd700"..race.."|r en |cffffd700"..time.."|r secondes"; end
    L["RACE_TIME_FORMAT"] = function(time) return time.."s"; end

    -- Chat lookup
    L["NPC_NAMES"] = {"Chronom√©treur de bronze", "Chronom√©treuse de bronze", "Assistant chronom√©treur de bronze"};

    L["ZONE_DORN_ISLAND"] = "Ile de Dorn"
    L["ZONE_RINGING_DEEPS"] = "Les Abimes Retentissants"
    L["ZONE_HALLOWFALL"] = "Sainte-Chute"
    L["ZONE_AZJ_KAHET"] = "Azj-Kahet"
    L["ZONE_WAKING_SHORES"] = "Rivages de l'Eveil"
    L["ZONE_OHNAHRAN_PLAINS"] = "Plaines d'Ohn'Ahra"
    L["ZONE_AZURE_SPAN"] = "Trav√©e d'Azur"
    L["ZONE_THALDRASZUS"] = "Thaldraszus"
    L["ZONE_DORN_ISLAND"] = "Dorn Island"

    -- Dorn Island
    L["RACE_80219"] = "Derby de Dornogal"
    L["RACE_80225"] = "Derby de Dornogal (AvancÈ)"
    L["RACE_80231"] = "Derby de Dornogal (InversÈ)"
    L["RACE_80220"] = "Survol du guet de la TempÍte"
    L["RACE_80226"] = "Survol du guet de la TempÍte (AvancÈ)"
    L["RACE_80232"] = "Survol du guet de la TempÍte (InversÈ)"
    L["RACE_80221"] = "Canal de DÈrivation"
    L["RACE_80227"] = "Canal de DÈrivation (AvancÈ)"
    L["RACE_80233"] = "Canal de DÈrivation (InversÈ)"
    L["RACE_80222"] = "Elan de la lande"
    L["RACE_80228"] = "Elan de la lande (AvancÈ)"
    L["RACE_80234"] = "Elan de la lande (InversÈ)"
    L["RACE_80223"] = "Piste du TÍte-tonerre"
    L["RACE_80229"] = "Piste du TÍte-tonerre (AvancÈ)"
    L["RACE_80235"] = "Piste du TÍte-tonerre (InversÈ)"
    L["RACE_80224"] = "Virages de Mineroc"
    L["RACE_80230"] = "Virages de Mineroc (AvancÈ)"
    L["RACE_80236"] = "Virages de Mineroc (InversÈ)"
    -- The Ringing Deeps
    L["RACE_80237"] = "Virages des Ouvrages terrestres"
    L["RACE_80244"] = "Virages des Ouvrages terrestres (advanced)"
    L["RACE_80250"] = "Virages des Ouvrages terrestres (reverse)"
    L["RACE_80238"] = "Cours des abÓmes retentissants"
    L["RACE_80245"] = "Cours des abÓmes retentissants (advanced)"
    L["RACE_80251"] = "Cours des abÓmes retentissants (reverse)"
    L["RACE_80239"] = "Course cliquetante"
    L["RACE_80246"] = "Course cliquetante (avanced)"
    L["RACE_80252"] = "Course cliquetante (reverse)"
    L["RACE_80240"] = "CroisiËre de la Cataracte"
    L["RACE_80247"] = "CroisiËre de la Cataracte (avanced)"
    L["RACE_80253"] = "CroisiËre de la Cataracte (reverse)"
    L["RACE_80242"] = "Approche de Taelloch"
    L["RACE_80248"] = "Approche de Taelloch (avanced)"
    L["RACE_80254"] = "Approche de Taelloch (reverse)"
    L["RACE_80243"] = "Parcours de la halte de l'Aubaine"
    L["RACE_80249"] = "Parcours de la halte de l'Aubaine (avanced)"
    L["RACE_80255"] = "Parcours de la halte de l'Aubaine (reverse)"
    -- HallowFall
    L["RACE_80256"] = "DÈtour de Dunelle"
    L["RACE_80265"] = "DÈtour de Dunelle (advanced)"
    L["RACE_80271"] = "DÈtour de Dunelle (reverse)"
    L["RACE_80257"] = "TraversÈe de Tenir"
    L["RACE_80266"] = "TraversÈe de Tenir (advanced)"
    L["RACE_80272"] = "TraversÈe de Tenir (reverse)"
    L["RACE_80258"] = "Descente de la redoute de la LumiËre"
    L["RACE_80267"] = "Descente de la redoute de la LumiËre (avanced)"
    L["RACE_80273"] = "Descente de la redoute de la LumiËre (reverse)"
    L["RACE_80259"] = "Slalom de Roche-Tranquille"
    L["RACE_80268"] = "Slalom de Roche-Tranquille (avanced)"
    L["RACE_80274"] = "Slalom de Roche-Tranquille (reverse)"
    L["RACE_80260"] = "MÈandre de Mereldar"
    L["RACE_80269"] = "MÈandre de Mereldar (avanced)"
    L["RACE_80275"] = "MÈandre de Mereldar (reverse)"
    L["RACE_80261"] = "VirÈe de Velhan"
    L["RACE_80270"] = "VirÈe de Velhan (avanced)"
    L["RACE_80276"] = "VirÈe de Velhan (reverse)"
    -- Azj-Kahet
    L["RACE_80277"] = "Approche de la citÈ des Fils"
    L["RACE_80283"] = "Approche de la citÈ des Fils (advanced)"
    L["RACE_80289"] = "Approche de la citÈ des Fils (reverse)"
    L["RACE_80278"] = "Descente des profondeurs DÈmentielles"
    L["RACE_80284"] = "Descente des profondeurs DÈmentielles (advanced)"
    L["RACE_80290"] = "Descente des profondeurs DÈmentielles (reverse)"
    L["RACE_80279"] = "Trot de la Tisserande"
    L["RACE_80285"] = "Trot de la Tisserande (avanced)"
    L["RACE_80291"] = "Trot de la Tisserande (reverse)"
    L["RACE_80280"] = "RuÈe de Rak-Ahat"
    L["RACE_80286"] = "RuÈe de Rak-Ahat (avanced)"
    L["RACE_80292"] = "RuÈe de Rak-Ahat (reverse)"
    L["RACE_80281"] = "Folie de la Fosse"
    L["RACE_80287"] = "Folie de la Fosse (avanced)"
    L["RACE_80293"] = "Folie de la Fosse (reverse)"
    L["RACE_80282"] = "Calvacade du bastion du SiËge"
    L["RACE_80288"] = "Calvacade du bastion du SiËge (avanced)"
    L["RACE_80294"] = "Calvacade du bastion du SiËge (reverse)"

    L["RACE_66679"] = "Boucle du sanctuaire de l‚ÄôEssence"
    L["RACE_66692"] = "Boucle du sanctuaire de l‚ÄôEssence (avanc√©)"
    L["RACE_72052"] = "Boucle du sanctuaire de l‚ÄôEssence (invers√©)"
    L["RACE_66710"] = "Survol de givr√©clair"
    L["RACE_66712"] = "Survol de givr√©clair (avanc√©)"
    L["RACE_72700"] = "Survol de givr√©clair (invers√©)"
    L["RACE_66721"] = "Slalom du domaine Sauvage"
    L["RACE_66722"] = "Slalom du domaine Sauvage (avanc√©)"
    L["RACE_72705"] = "Slalom du domaine Sauvage (invers√©)"
    L["RACE_66725"] = "Circuit du domaine Sauvage"
    L["RACE_66726"] = "Circuit du domaine Sauvage (avanc√©)"
    L["RACE_72706"] = "Circuit du domaine Sauvage (invers√©)"
    L["RACE_66732"] = "Descente de rapides de la canop√©e de l'Apog√©e"
    L["RACE_66733"] = "Descente de rapides de la canop√©e de l'Apog√©e (avanc√©)"
    L["RACE_72734"] = "Descente de rapides de la canop√©e de l'Apog√©e (invers√©)"
    L["RACE_66727"] = "Vol de Ruisse-Braise"
    L["RACE_66728"] = "Vol de Ruisse-Braise (avanc√©)"
    L["RACE_72707"] = "Vol de Ruisse-Braise (invers√©)"
    L["RACE_66777"] = "Circuit d‚ÄôUktulut"
    L["RACE_66778"] = "Circuit d‚ÄôUktulut (avanc√©)"
    L["RACE_72739"] = "Circuit d‚ÄôUktulut (invers√©)"
    L["RACE_66786"] = "Tour de Tr√™ve-Ail√©e"
    L["RACE_66787"] = "Tour de Tr√™ve-Ail√©e (avanc√©)"
    L["RACE_72740"] = "Tour de Tr√™ve-Ail√©e (invers√©)"

    L["RACE_66835"] = "Parcours du taillis Soltavel"
    L["RACE_66836"] = "Parcours du taillis Soltavel (avanc√©)"
    L["RACE_72801"] = "Parcours du taillis Soltavel (invers√©)"
    L["RACE_66877"] = "Travers√©e des marais"
    L["RACE_66878"] = "Travers√©e des marais (avanc√©)"
    L["RACE_72802"] = "Travers√©e des marais (invers√©)"
    L["RACE_66880"] = "Descente des gorges"
    L["RACE_66881"] = "Descente des gorges (avanc√©)"
    L["RACE_72803"] = "Descente des gorges (invers√©)"
    L["RACE_66885"] = "Ascension des jardins d'Emeraude"
    L["RACE_66886"] = "Ascension des jardins d'Emeraude (avanc√©)"
    L["RACE_72805"] = "Ascension des jardins d'Emeraude (invers√©)"
    L["RACE_66921"] = "Marathon de Maruuka√Ø"
    L["RACE_66933"] = "Marathon du miroir c√©leste"
    L["RACE_70710"] = "Descente des rapides"
    L["RACE_70711"] = "Descente des rapides (avanc√©)"
    L["RACE_72807"] = "Descente des rapides (invers√©)"

    L["RACE_66946"] = "Sprint de la trav√©e d'Azur"
    L["RACE_66947"] = "Sprint de la trav√©e d'Azur (avanc√©)"
    L["RACE_72796"] = "Sprint de la trav√©e d'Azur (invers√©)"
    L["RACE_67002"] = "Slalom de la trav√©e d'Azur"
    L["RACE_67003"] = "Slalom de la trav√©e d'Azur (avanc√©)"
    L["RACE_72799"] = "Slalom de la trav√©e d'Azur (invers√©)"
    L["RACE_67031"] = "Ascension du Vakthros"
    L["RACE_67032"] = "Ascension du Vakthros (avanc√©)"
    L["RACE_72794"] = "Ascension du Vakthros (invers√©)"
    L["RACE_67296"] = "Tour d'Iskaara"
    L["RACE_67297"] = "Tour d'Iskaara (avanc√©)"
    L["RACE_72800"] = "Tour d'Iskaara (invers√©)"
    L["RACE_67565"] = "Survol glaciaire"
    L["RACE_67566"] = "Survol glaciaire (avanc√©)"
    L["RACE_72795"] = "Survol glaciaire (invers√©)"
    L["RACE_67741"] = "Domaine des Archives"
    L["RACE_67742"] = "Domaine des Archives (avanc√©)"
    L["RACE_72797"] = "Domaine des Archives (invers√©)"

    L["RACE_67095"] = "Vol de la for√™t Ondoyante"
    L["RACE_67096"] = "Vol de la for√™t Ondoyante (avanc√©)"
    L["RACE_72793"] = "Vol de la for√™t Ondoyante (invers√©)"
    L["RACE_69957"] = "Epreuve du bastion de Tyr"
    L["RACE_69958"] = "Epreuve du bastion de Tyr (avanc√©)"
    L["RACE_72792"] = "Epreuve du bastion de Tyr (invers√©)"
    L["RACE_70051"] = "Circuit des falaises"
    L["RACE_70052"] = "Circuit des falaises (avanc√©)"
    L["RACE_72760"] = "Circuit des falaises (invers√©)"
    L["RACE_70059"] = "Ascension de l'acad√©mie"
    L["RACE_70060"] = "Ascension de l'acad√©mie (avanc√©)"
    L["RACE_72754"] = "Ascension de l'acad√©mie (invers√©)"
    L["RACE_70157"] = "Promenade des jardins"
    L["RACE_70158"] = "Promenade des jardins (avanc√©)"
    L["RACE_72769"] = "Promenade des jardins (invers√©)"
    L["RACE_70161"] = "R√©seau des grottes"
    L["RACE_70163"] = "R√©seau des grottes (avanc√©)"
    L["RACE_72750"] = "R√©seau des grottes (invers√©)"
end