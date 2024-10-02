
local addonName, addon = ...;
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "frFR", false);

if L then
    L["ADDON_NAME"] = addonName;
    L["ADDON_DESCRIPTION"] = "Enregistre tes meilleurs temps et entre en compétition avec tes amis !";
    L["ADDON_VERSION_OUTDATED"] = "Une version plus récente de l'addon est disponible !";
    L["ADDON_VERSION"] = "Version :";
    L["ADDON_AUTHOR"] = "Auteur :";
    L["ADDON_MOTD"] = "Hey, merci d'utiliser "..addonName.."! Entre |cffffd700/srr|r pour voir tes meilleurs temps !";
    L["DATE_FORMAT"] = "%d/%m/%y";

    L["FALLBACK_ENABLED"] = "Use of alternative method on event of failure is now enabled.";
    L["FALLBACK_DISABLED"] = "Use of alternative method on event of failure is now disabled.";

    L["UI_PB_TITLE"] = "Tes meilleurs temps"
    L["UI_PB_HEADER_RACE"] = "|cffffd700Course|r"
    L["UI_PB_HEADER_PB_N"] = "|cffffd700Temps (normal)|r"
    L["UI_PB_HEADER_PB_A"] = "|cffffd700Temps (avancé)|r"
    L["UI_PB_HEADER_PB_R"] = "|cffffd700Temps (inversés)|r"

    L["UI_PB_HEADER_GPB_N"] = "|cffffd700Temps guilde (normal)|r"
    L["UI_PB_HEADER_GPB_A"] = "|cffffd700Temps guilde (avancé)|r"
    L["UI_PB_HEADER_GPB_R"] = "|cffffd700Temps guilde (inversés)|r"
    L["UI_PB_GUILD_INFO"] = "Seuls les temps des membres de guilde ayant l'addon SkyridingRace sont affichés."
    L["GUILD_BEST_TIME_FORMAT"] = function(time, character) return character..": "..time.."s"; end
    L["GUILD_BEST_BEATEN"] = function(time, race, character) return character.." a battu le meilleur temps de la guilde sur "..race.." en "..time.." secondes !"; end
    L["RACE_FINISHED_GUILD_PB_FORMAT"] = function(race, time) return "Wouhou, vous venez de battre le meilleur temps de la guilde sur "..race.." avec un chrono de "..time.." secondes !"; end

    L["RACE_FINISHED_CHARACTER_BEST_FORMAT"] = function(race, time) return "You finished "..race..", current personal best in this character is "..time.." seconds"; end
    L["RACE_FINISHED_SAVED_BEST_FORMAT"] = function(race, time, saved) return "You finished "..race..", current personal best in this character is "..time.." seconds, local saved best is "..saved.." seconds"; end
    L["RACE_FINISHED_FORMAT"] = function(race, time) return "Vous avez terminé la course "..race.." en "..time.." secondes"; end
    L["RACE_FINISHED_PB_FORMAT"] = function(race, time, previousTime) return "Waah, vous avez battu votre record sur  "..race.." en faisant un temps de "..time.." secondes ! Bien joué ! Ton meilleur temps précédent était "..previousTime.." secondes."; end
    L["RACE_RECAP_FORMAT"] = function(race, time) return "> |cffffd700"..race.."|r en |cffffd700"..time.."|r secondes"; end
    L["RACE_TIME_FORMAT"] = function(time) return time.."s"; end

    -- Chat lookup
    L["NPC_NAMES"] = {"Chronométreur de bronze", "Chronométreuse de bronze", "Assistant chronométreur de bronze"};

    L["ZONE_DORN_ISLAND"] = "Ile de Dorn"
    L["ZONE_RINGING_DEEPS"] = "Les Abimes Retentissants"
    L["ZONE_HALLOWFALL"] = "Sainte-Chute"
    L["ZONE_AZJ_KAHET"] = "Azj-Kahet"
    L["ZONE_WAKING_SHORES"] = "Rivages de l'Eveil"
    L["ZONE_OHNAHRAN_PLAINS"] = "Plaines d'Ohn'Ahra"
    L["ZONE_AZURE_SPAN"] = "Travée d'Azur"
    L["ZONE_THALDRASZUS"] = "Thaldraszus"

    -- Dorn Island
    L["RACE_80219"] = "Derby de Dornogal"
    L["RACE_80225"] = "Derby de Dornogal (Avancé)"
    L["RACE_80231"] = "Derby de Dornogal (Inversé)"
    L["RACE_80220"] = "Survol du guet de la Tempéte"
    L["RACE_80226"] = "Survol du guet de la Tempéte (Avancé)"
    L["RACE_80232"] = "Survol du guet de la Tempéte (Inversé)"
    L["RACE_80221"] = "Canal de Dérivation"
    L["RACE_80227"] = "Canal de Dérivation (Avancé)"
    L["RACE_80233"] = "Canal de Dérivation (Inversé)"
    L["RACE_80222"] = "Elan de la lande"
    L["RACE_80228"] = "Elan de la lande (Avancé)"
    L["RACE_80234"] = "Elan de la lande (Inversé)"
    L["RACE_80223"] = "Piste du Téte-tonerre"
    L["RACE_80229"] = "Piste du Téte-tonerre (Avancé)"
    L["RACE_80235"] = "Piste du Téte-tonerre (Inversé)"
    L["RACE_80224"] = "Virages de Mineroc"
    L["RACE_80230"] = "Virages de Mineroc (Avancé)"
    L["RACE_80236"] = "Virages de Mineroc (Inversé)"
    -- The Ringing Deeps
    L["RACE_80237"] = "Virages des Ouvrages terrestres"
    L["RACE_80244"] = "Virages des Ouvrages terrestres (advanced)"
    L["RACE_80250"] = "Virages des Ouvrages terrestres (reverse)"
    L["RACE_80238"] = "Cours des abémes retentissants"
    L["RACE_80245"] = "Cours des abémes retentissants (advanced)"
    L["RACE_80251"] = "Cours des abémes retentissants (reverse)"
    L["RACE_80239"] = "Course cliquetante"
    L["RACE_80246"] = "Course cliquetante (avanced)"
    L["RACE_80252"] = "Course cliquetante (reverse)"
    L["RACE_80240"] = "Croisiére de la Cataracte"
    L["RACE_80247"] = "Croisiére de la Cataracte (avanced)"
    L["RACE_80253"] = "Croisiére de la Cataracte (reverse)"
    L["RACE_80242"] = "Approche de Taelloch"
    L["RACE_80248"] = "Approche de Taelloch (avanced)"
    L["RACE_80254"] = "Approche de Taelloch (reverse)"
    L["RACE_80243"] = "Parcours de la halte de l'Aubaine"
    L["RACE_80249"] = "Parcours de la halte de l'Aubaine (avanced)"
    L["RACE_80255"] = "Parcours de la halte de l'Aubaine (reverse)"
    -- HallowFall
    L["RACE_80256"] = "Détour de Dunelle"
    L["RACE_80265"] = "Détour de Dunelle (advanced)"
    L["RACE_80271"] = "Détour de Dunelle (reverse)"
    L["RACE_80257"] = "Traversée de Tenir"
    L["RACE_80266"] = "Traversée de Tenir (advanced)"
    L["RACE_80272"] = "Traversée de Tenir (reverse)"
    L["RACE_80258"] = "Descente de la redoute de la Lumiére"
    L["RACE_80267"] = "Descente de la redoute de la Lumiére (avanced)"
    L["RACE_80273"] = "Descente de la redoute de la Lumiére (reverse)"
    L["RACE_80259"] = "Slalom de Roche-Tranquille"
    L["RACE_80268"] = "Slalom de Roche-Tranquille (avanced)"
    L["RACE_80274"] = "Slalom de Roche-Tranquille (reverse)"
    L["RACE_80260"] = "Méandre de Mereldar"
    L["RACE_80269"] = "Méandre de Mereldar (avanced)"
    L["RACE_80275"] = "Méandre de Mereldar (reverse)"
    L["RACE_80261"] = "Virée de Velhan"
    L["RACE_80270"] = "Virée de Velhan (avanced)"
    L["RACE_80276"] = "Virée de Velhan (reverse)"
    -- Azj-Kahet
    L["RACE_80277"] = "Approche de la cité des Fils"
    L["RACE_80283"] = "Approche de la cité des Fils (advanced)"
    L["RACE_80289"] = "Approche de la cité des Fils (reverse)"
    L["RACE_80278"] = "Descente des profondeurs Démentielles"
    L["RACE_80284"] = "Descente des profondeurs Démentielles (advanced)"
    L["RACE_80290"] = "Descente des profondeurs Démentielles (reverse)"
    L["RACE_80279"] = "Trot de la Tisserande"
    L["RACE_80285"] = "Trot de la Tisserande (avanced)"
    L["RACE_80291"] = "Trot de la Tisserande (reverse)"
    L["RACE_80280"] = "Ruée de Rak-Ahat"
    L["RACE_80286"] = "Ruée de Rak-Ahat (avanced)"
    L["RACE_80292"] = "Ruée de Rak-Ahat (reverse)"
    L["RACE_80281"] = "Folie de la Fosse"
    L["RACE_80287"] = "Folie de la Fosse (avanced)"
    L["RACE_80293"] = "Folie de la Fosse (reverse)"
    L["RACE_80282"] = "Calvacade du bastion du Siége"
    L["RACE_80288"] = "Calvacade du bastion du Siége (avanced)"
    L["RACE_80294"] = "Calvacade du bastion du Siége (reverse)"
    

    L["RACE_66679"] = "Boucle du sanctuaire de l’Essence"
    L["RACE_66692"] = "Boucle du sanctuaire de l’Essence (avancé)"
    L["RACE_72052"] = "Boucle du sanctuaire de l’Essence (inversé)"
    L["RACE_66710"] = "Survol de givréclair"
    L["RACE_66712"] = "Survol de givréclair (avancé)"
    L["RACE_72700"] = "Survol de givréclair (inversé)"
    L["RACE_66721"] = "Slalom du domaine Sauvage"
    L["RACE_66722"] = "Slalom du domaine Sauvage (avancé)"
    L["RACE_72705"] = "Slalom du domaine Sauvage (inversé)"
    L["RACE_66725"] = "Circuit du domaine Sauvage"
    L["RACE_66726"] = "Circuit du domaine Sauvage (avancé)"
    L["RACE_72706"] = "Circuit du domaine Sauvage (inversé)"
    L["RACE_66732"] = "Descente de rapides de la canopée de l'Apogée"
    L["RACE_66733"] = "Descente de rapides de la canopée de l'Apogée (avancé)"
    L["RACE_72734"] = "Descente de rapides de la canopée de l'Apogée (inversé)"
    L["RACE_66727"] = "Vol de Ruisse-Braise"
    L["RACE_66728"] = "Vol de Ruisse-Braise (avancé)"
    L["RACE_72707"] = "Vol de Ruisse-Braise (inversé)"
    L["RACE_66777"] = "Circuit d’Uktulut"
    L["RACE_66778"] = "Circuit d’Uktulut (avancé)"
    L["RACE_72739"] = "Circuit d’Uktulut (inversé)"
    L["RACE_66786"] = "Tour de Trêve-Ailée"
    L["RACE_66787"] = "Tour de Trêve-Ailée (avancé)"
    L["RACE_72740"] = "Tour de Trêve-Ailée (inversé)"

    L["RACE_66835"] = "Parcours du taillis Soltavel"
    L["RACE_66836"] = "Parcours du taillis Soltavel (avancé)"
    L["RACE_72801"] = "Parcours du taillis Soltavel (inversé)"
    L["RACE_66877"] = "Traversée des marais"
    L["RACE_66878"] = "Traversée des marais (avancé)"
    L["RACE_72802"] = "Traversée des marais (inversé)"
    L["RACE_66880"] = "Descente des gorges"
    L["RACE_66881"] = "Descente des gorges (avancé)"
    L["RACE_72803"] = "Descente des gorges (inversé)"
    L["RACE_66885"] = "Ascension des jardins d'Emeraude"
    L["RACE_66886"] = "Ascension des jardins d'Emeraude (avancé)"
    L["RACE_72805"] = "Ascension des jardins d'Emeraude (inversé)"
    L["RACE_66921"] = "Marathon de Maruukaï"
    L["RACE_66933"] = "Marathon du miroir céleste"
    L["RACE_70710"] = "Descente des rapides"
    L["RACE_70711"] = "Descente des rapides (avancé)"
    L["RACE_72807"] = "Descente des rapides (inversé)"

    L["RACE_66946"] = "Sprint de la travée d'Azur"
    L["RACE_66947"] = "Sprint de la travée d'Azur (avancé)"
    L["RACE_72796"] = "Sprint de la travée d'Azur (inversé)"
    L["RACE_67002"] = "Slalom de la travée d'Azur"
    L["RACE_67003"] = "Slalom de la travée d'Azur (avancé)"
    L["RACE_72799"] = "Slalom de la travée d'Azur (inversé)"
    L["RACE_67031"] = "Ascension du Vakthros"
    L["RACE_67032"] = "Ascension du Vakthros (avancé)"
    L["RACE_72794"] = "Ascension du Vakthros (inversé)"
    L["RACE_67296"] = "Tour d'Iskaara"
    L["RACE_67297"] = "Tour d'Iskaara (avancé)"
    L["RACE_72800"] = "Tour d'Iskaara (inversé)"
    L["RACE_67565"] = "Survol glaciaire"
    L["RACE_67566"] = "Survol glaciaire (avancé)"
    L["RACE_72795"] = "Survol glaciaire (inversé)"
    L["RACE_67741"] = "Domaine des Archives"
    L["RACE_67742"] = "Domaine des Archives (avancé)"
    L["RACE_72797"] = "Domaine des Archives (inversé)"

    L["RACE_67095"] = "Vol de la forêt Ondoyante"
    L["RACE_67096"] = "Vol de la forêt Ondoyante (avancé)"
    L["RACE_72793"] = "Vol de la forêt Ondoyante (inversé)"
    L["RACE_69957"] = "Epreuve du bastion de Tyr"
    L["RACE_69958"] = "Epreuve du bastion de Tyr (avancé)"
    L["RACE_72792"] = "Epreuve du bastion de Tyr (inversé)"
    L["RACE_70051"] = "Circuit des falaises"
    L["RACE_70052"] = "Circuit des falaises (avancé)"
    L["RACE_72760"] = "Circuit des falaises (inversé)"
    L["RACE_70059"] = "Ascension de l'académie"
    L["RACE_70060"] = "Ascension de l'académie (avancé)"
    L["RACE_72754"] = "Ascension de l'académie (inversé)"
    L["RACE_70157"] = "Promenade des jardins"
    L["RACE_70158"] = "Promenade des jardins (avancé)"
    L["RACE_72769"] = "Promenade des jardins (inversé)"
    L["RACE_70161"] = "Réseau des grottes"
    L["RACE_70163"] = "Réseau des grottes (avancé)"
    L["RACE_72750"] = "Réseau des grottes (inversé)"
end