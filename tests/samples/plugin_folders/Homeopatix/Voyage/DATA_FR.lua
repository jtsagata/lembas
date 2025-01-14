------------------------------------------------------------------------------------------
-- Datas file
-- Written by Homeopatix
-- 7 january 2021
------------------------------------------------------------------------------------------
	-- � = \195\160
    -- � = \195\162
    -- � = \195\161
	-- � = \195\164
    -- � = \195\132
	-- � = \195\169
	-- � = \195\168
    -- � = \195\170
    -- � = \195\186
    -- � = \195\187
    -- � = \195\188
	-- � = \195\182
    -- � = \195\179
	-- � = \195\159
    -- � = \195\173
    -- � = \195\155
    -- � = \195\185

------------------------------------------------------------------------------------------
-- DATA house
------------------------------------------------------------------------------------------
houseLocations = {
        "0x7000D046",
        "0x7000D047",
        "0x70057C36",
        "0x70046EE4"
        };

houseLocationsMap = {
    house1 = {mapHex = 0x410d9a54, texte = "R\195\169sidences du pays de Bree"},
    house2 = {mapHex = 0x410d9934, texte = "R\195\169sidences de Falathlorn"},
    house3 = {mapHex = 0x410d9a56, texte = "R\195\169sidences du Palais de Thorin"},
    house4 = {mapHex = 0x410d9a57, texte = "R\195\169sidences de La Comt\195\169"},
    house5 = {mapHex = 0x411ee217, texte = "Les R\195\169sidences de l'Estfolde"},
    house6 = {mapHex = 0x411ee218, texte = "Les R\195\169sidences des prairies de terre-du-roi"},
    house7 = {mapHex = 0x411aef52, texte = "R\195\169sidences Cap de Belfalas"}
    };
------------------------------------------------------------------------------------------
-- DATA racial
------------------------------------------------------------------------------------------
racialLocations = {
        "0x700062F6",-- "Retour � Bree" -- homme
        "0x700062C8", --"Retournez dans la Comt�" -- hobbit
        "0x70006346",-- "Retour : Porte de Thorin" -- nain
        "0x7000631F",-- "Retour � Fondcombe" -- elf
        "0x70041A22", --"Retour � la maison" -- beornide
        "0x70048C8C",-- "Voyage vers Caras Galadhon, en Lothl�rien" -- elf haut
        "0x70053C0F" -- "Aller au Palais de Thorin" -- nain des haches
        };

racialLocationsMap = {
        racial1 = {mapHex = 0x41008136, texte = "Retour \195\160 Bree", coordx = "470", coordy = "500"},
        racial2 = {mapHex =  0x41008137, texte = "Retournez dans la Comt\195\169", coordx = "270", coordy = "525"},
        racial3 = {mapHex =  0x4100812B, texte = "Retour : Porte de Thorin", coordx = "450", coordy = "320"},
        racial4 = {mapHex =  0x4100812D, texte = "Retour \195\160 Fondcombe", coordx = "520", coordy = "420"},
        racial5 = {mapHex =  0x4115B98B, texte = "Retour \195\160 la maison", coordx = "640", coordy = "400"},
        racial6 = {mapHex =  0x410E8706, texte = "Voyage vers Caras Galadhon, en Lothl\195\179rien", coordx = "370", coordy = "520"},
        racial7 = {mapHex =  0x4100812B, texte = "Aller au Palais de Thorin", coordx = "450", coordy = "320"}
        };
------------------------------------------------------------------------------------------
-- DATA chasseur
------------------------------------------------------------------------------------------
hunterLocations = { 
       "0x7000A2C1",
       "0x70003F42",
       "0x70003F41",
       "0x7000A2C3",
       "0x70003F43",
       "0x7000A2C4",
       "0x7000A2C2",
       "0x70003F44",
       "0x70017C82",
       "0x7000A2C5",
       "0x7000A2C6",
       "0x70017C81",
       "0x70017C7A",
       "0x7001F459",
       "0x700235EF",
       "0x7002A93F",
       "0x7002C62C",
       "0x7002E754",
       "0x7002E756",
       "0x7003198E",
       "0x70036B5D",
       "0x7003DC71",
       "0x7003DC72",
       "0x70041197",
       "0x70043A63",
       "0x70044985",
       "0x700459AF",
       "0x70046CBB",
       "0x70047077",
       "0x70047074",
       "0x70047BFA",
       "0x70047C1D",
       "0x7004AE1E",
       "0x7004D73B",
       "0x7004FACC",
       "0x7004FACB",
       "0x70052F07",
       "0x70052F08",
       "0x700551F4",
       "0x7005762D",
       "0x70058571",
       "0x70059D0C", -- new from U29
       "0x70059D16", 
       "0x7005AA91", -- NEW FROM u30
       "0x7005AA95"
        } ;

hunterLocationsMap = { 
    hunter1 = {mapHex = 0x41008139, texte = "Retour au campement", coordx = "0", coordy = "0"},
    hunter2 = {mapHex = 0x41008136, texte = "Guide vers Bree", coordx = "470", coordy = "500"},
    hunter3 = {mapHex = 0x4100812B, texte = "Guide vers le Palais de Thorin", coordx = "450", coordy = "320"},
    hunter4 = {mapHex = 0x41008137, texte = "Guide vers Grand'Cave", coordx = "270", coordy = "525"},
    hunter5 = {mapHex = 0x41008132, texte = "Guide vers Esteld\195\173n", coordx = "650", coordy = "320"},
    hunter6 = {mapHex = 0x4101f084, texte = "Guide vers Evendim", coordx = "510", coordy = "750"},
    hunter7 = {mapHex = 0x41008130, texte = "Guide vers Ost Guruth", coordx = "630", coordy = "245"},
    hunter8 = {mapHex = 0x4100812D, texte = "Guide vers Fondcombe", coordx = "520", coordy = "420"},
    hunter9 = {mapHex = 0x410e3f46, texte = "Guide vers S\195\187ri-kyl\195\164", coordx = "540", coordy = "160"},
    hunter10 = {mapHex = 0x41008131, texte = "Guide vers l'ouest d'Angmar", coordx = "100", coordy = "520"},
    hunter11 = {mapHex = 0x41008131, texte = "Guide vers l'est d'Angmar", coordx = "650", coordy = "160"},
    hunter12 = {mapHex = 0x410e8686, texte = "Guide vers Echad D\195\186nann", coordx = "540", coordy = "530"},
    hunter13 = {mapHex = 0x410e871b, texte = "Guide vers la vingt et uni\195\168me salle", coordx = "670", coordy = "180"},
    hunter14 = {mapHex = 0x41100DF2, texte = "Guide vers l'Or\195\169e noire", coordx = "100", coordy = "450"},
    hunter15 = {mapHex = 0x411ad8a9, texte = "Guide vers Harndirion", coordx = "460", coordy = "530"},
    hunter16 = {mapHex = 0x41116EFE, texte = "Guide pour Galtrev", coordx = "450", coordy = "360"},
    hunter17 = {mapHex = 0x41123F09, texte = "Guide vers Stangarde", coordx = "440", coordy = "510"},
    hunter18 = {mapHex = 0x410E8706, texte = "Guide vers Caras Galadhon", coordx = "370", coordy = "520"},
    hunter19 = {mapHex = 0x4100812f, texte = "Guide vers les Monts Brumeux", coordx = "760", coordy = "420"},
    hunter20 = {mapHex = 0x41132E57, texte = "Guide vers Neigebronne", coordx = "425", coordy = "430"},
    hunter21 = {mapHex = 0x411379FF, texte = "Guide vers Forloi", coordx = "530", coordy = "700"},
    hunter22 = {mapHex = 0x4113C321, texte = "Guide vers Aldburg", coordx = "315", coordy = "410"},
    hunter23 = {mapHex = 0x4113C323, texte = "Guide vers le Gouffre de Helm", coordx = "445", coordy = "430"},
    hunter24 = {mapHex = 0x41154e05, texte = "Guide vers Dol Amroth", coordx = "460", coordy = "340"},
    hunter25 = {mapHex = 0x4115ee3c, texte = "Guide pour Arnach", coordx = "535", coordy = "435"},
    hunter26 = {mapHex = 0x411656ef, texte = "Guide vers Minas Tirith", coordx = "860", coordy = "410"},
    hunter27 = {mapHex = 0x4113C31F, texte = "Guide pour se rendre au camp militaire", coordx = "460", coordy = "620"},
    hunter28 = {mapHex = 0x4119389d, texte = "Guide vers Minas Tirith apr\195\168s la bataille", coordx = "860", coordy = "410"},
    hunter29 = {mapHex = 0x411a42e7, texte = "Guide vers Henneth Ann\195\187n", coordx = "600", coordy = "250"},
    hunter30 = {mapHex = 0x411a42e5, texte = "Guide vers Osgiliath apr\195\168s la bataille", coordx = "650", coordy = "280"},
    hunter31 = {mapHex = 0x411a42e7, texte = "Guide vers le Camp de l'arm\195\169e", coordx = "600", coordy = "250"},
    hunter32 = {mapHex = 0x411ad8a9, texte = "Guide vers Haerondir", coordx = "430", coordy = "540"},
    hunter33 = {mapHex = 0x411b9591, texte = "Guide vers le fort d'Ud\195\187n", coordx = "140", coordy = "150"},
    hunter34 = {mapHex = 0x411c2de2, texte = "Guide vers Dale", coordx = "750", coordy = "340"},
    hunter35 = {mapHex = 0x411cd4b8, texte = "Guide vers J\195\161rnfast", coordx = "910", coordy = "260"},
    hunter36 = {mapHex = 0x411c8da9, texte = "Guide vers Skarh\195\161ld", coordx = "450", coordy = "460"},
    hunter37 = {mapHex = 0x4115B98B, texte = "Guide pour Beorningh\195\186s", coordx = "640", coordy = "400"},
    hunter38 = {mapHex = 0x411da4a0, texte = "Guide de Hultvis", coordx = "670", coordy = "350"},
    hunter39 = {mapHex = 0x411e9a41, texte = "Guide vers Estolad L\195\187n", coordx = "610", coordy = "320"},
    hunter40 = {mapHex = 0x411ee769, texte = "Guide de Liml\195\179k", coordx = "730", coordy = "560"},
    hunter41 = {mapHex = 0x411fb86f, texte = "Guide vers Ann\195\187k-khurfu", coordx = "720", coordy = "720"},
    hunter42 = {mapHex = 0x4101f084, texte = "Guide vers le Quai des marchands", coordx = "720", coordy = "680"}, -- new from Update U29
    hunter43 = {mapHex = 0x41008132, texte = "Guide vers Pont-\195\160-Tr\195\169teaux", coordx = "240", coordy = "640"},
    -- need to change 0x41008139 to the real map
    hunter44 = {mapHex = 0x4120d01b, texte = "Guide vers Akr\195\162z-zahar", coordx = "580", coordy = "680"}, -- new from U30
    hunter45 = {mapHex = 0x4120d01b, texte = "Guide vers Azanulbizar", coordx = "580", coordy = "680"}
    };
------------------------------------------------------------------------------------------
-- DATA warden
------------------------------------------------------------------------------------------
wardenLocations = {
        "0x70014786",
        "0x70014798",
        "0x7001478E",
        "0x70014791",
        "0x700237D4",
        "0x7001819E",
        "0x7001F45C",
        "0x700235EB",
        "0x7002A90A",
        "0x7002C646",
        "0x700303DF",
        "0x700303DD",
        "0x7003198D",
        "0x70036B5B",
        "0x7003DC7A",
        "0x7003DC79",
        "0x70041198",
        "0x70043A66",
        "0x70044982",
        "0x700459AA",
        "0x70046CBF",
        "0x70047075",
        "0x70047076",
        "0x70047BFC",
        "0x70047C23",
        "0x7004AE1F",
        "0x7004D73A",
        "0x7004FACA",
        "0x7004FACD",
        "0x70052F0A",
        "0x70052F06",
        "0x700551F2",
        "0x70057635",
        "0x70058572",
        "0x70059D09", -- new from U29
        "0x70059D10",
	"0x7005AA8F", -- new from U30
        "0x7005AA8C"
        };

wardenLocationsMap = { 
    warden1 = {mapHex = 0x41008130, texte = "Rassemblement \195\160 Ost Guruth", coordx = "630", coordy = "245"},
    warden2 = {mapHex = 0x41008132, texte = "Rassemblement \195\160 Esteld\195\173n", coordx = "650", coordy = "320"},
    warden3 = {mapHex = 0x4101f084, texte = "Rassemblement dans la r\195\169gion d'Evendim", coordx = "510", coordy = "750"},
    warden4 = {mapHex = 0x4100812D, texte = "Rassemblement \195\160 Fondcombe", coordx = "520", coordy = "420"},
    warden5 = {mapHex = 0x410e3f46, texte = "Rassemblement \195\160 S\195\187ri-kyl\195\164", coordx = "540", coordy = "160"},
    warden6 = {mapHex = 0x410e871b, texte = "Rassemblement \195\160 la vingt et uni\195\168me salle", coordx = "670", coordy = "180"},
    warden7 = {mapHex = 0x41100DF2, texte = "Rassemblement \195\160 l'Or\195\169e noire", coordx = "100", coordy = "450"},
    warden8 = {mapHex = 0x411ad8a9, texte = "Rassemblement \195\160 Harndirion", coordx = "460", coordy = "530"},
    warden9 = {mapHex = 0x41116EFE, texte = "Rassemblement \195\160 Galtrev", coordx = "450", coordy = "360"},
    warden10 = {mapHex = 0x41123F09, texte = "Rassemblement \195\160 Stangarde", coordx = "440", coordy = "510"},
    warden11 = {mapHex = 0x410E8706, texte = "Rassemblement \195\160 Caras Galadhon", coordx = "370", coordy = "520"},
    warden12 = {mapHex = 0x4100812f, texte = "Rassemblement dans les Monts Brumeux", coordx = "760", coordy = "420"},
    warden13 = {mapHex = 0x41132E57, texte = "Rassemblement \195\160 Neigebronne", coordx = "425", coordy = "430"},
    warden14 = {mapHex = 0x411379FF, texte = "Rassemblement \195\160 Forloi", coordx = "530", coordy = "700"},
    warden15 = {mapHex = 0x4113C321, texte = "Rassemblement \195\160 Aldburg", coordx = "315", coordy = "410"},
    warden16 = {mapHex = 0x4113C323, texte = "Rassemblement au Gouffre de Helm", coordx = "445", coordy = "430"},
    warden17 = {mapHex = 0x41154e05, texte = "Rassemblement \195\160 Dol Amroth", coordx = "460", coordy = "340"},
    warden18 = {mapHex = 0x4115ee3c, texte = "Rassemblement \195\160 Arnach", coordx = "535", coordy = "435"},
    warden19 = {mapHex = 0x411656ef, texte = "Rassemblement \195\160 Minas Tirith", coordx = "860", coordy = "410"},
    warden20 = {mapHex = 0x4113C31F, texte = "Rassemblement au camp militaire", coordx = "460", coordy = "620"},
    warden21 = {mapHex = 0x4119389d, texte = "Rassemblement \195\160 Minas Tirith apr\195\168s la bataille", coordx = "860", coordy = "410"},
    warden22 = {mapHex = 0x411a42e7, texte = "Rassemblement \195\160 Henneth Ann\195\187n", coordx = "600", coordy = "250"},
    warden23 = {mapHex = 0x411a42e5, texte = "Rassemblement \195\160 Osgiliath apr\195\168s la bataille", coordx = "650", coordy = "280"},
    warden24 = {mapHex = 0x411ad8a9, texte = "Rassemblement au Camp de l'arm\195\169e", coordx = "600", coordy = "250"},
    warden25 = {mapHex = 0x411ad8a9, texte = "Rassemblement \195\160 Haerondir", coordx = "430", coordy = "540"},
    warden26 = {mapHex = 0x411b9591, texte = "Rassemblement dans le fort d'Ud\195\187n", coordx = "140", coordy = "150"},
    warden27 = {mapHex = 0x411c2de2, texte = "Retour \195\160 Dale", coordx = "750", coordy = "340"},
    warden28 = {mapHex = 0x411cd4b8, texte = "Retour \195\160 J\195\161rnfast", coordx = "910", coordy = "260"},
    warden29 = {mapHex = 0x411c8da9, texte = "Retour \195\160 Skarh\195\161ld", coordx = "450", coordy = "460"},
    warden30 = {mapHex = 0x4115B98B, texte = "Rassemblement \195\160 Beorningh\195\186s", coordx = "640", coordy = "400"},
    warden31 = {mapHex = 0x411da4a0, texte = "Rassemblement \195\160 Hultvis", coordx = "670", coordy = "350"},
    warden32 = {mapHex = 0x411e9a41, texte = "Rassemblement \195\160 Estolad L\195\187n", coordx = "610", coordy = "320"},
    warden33 = {mapHex = 0x411ee769, texte = "Rassemblement \195\160 Liml\195\179k", coordx = "730", coordy = "560"},
    warden34 = {mapHex = 0x411fb86f, texte = "Rassemblement \195\160 Ann\195\187k-khurfu", coordx = "720", coordy = "720"},
    warden35 = {mapHex = 0x4101f084, texte = "Rassemblement au Quai des marchands", coordx = "720", coordy = "680"}, -- new from update U29
    warden36 = {mapHex = 0x41008132, texte = "Rassemblement \195\160 Pont-\195\160-Tr\195\169teaux", coordx = "240", coordy = "640"},
    warden37 = {mapHex = 0x4120d01b, texte = "Rassemblement � Akr\195\162z-zahar", coordx = "580", coordy = "680"},
    warden38 = {mapHex = 0x4120d01b, texte = "Rassemblement � Azanulbizar", coordx = "580", coordy = "680"}
    };
------------------------------------------------------------------------------------------
-- reputation travel
------------------------------------------------------------------------------------------
reputLocations = {
        "0x7001BF91",
        "0x7001BF90",
        "0x700364B1",
        "0x70023262",
        "0x70023263",
        "0x70020441",
        "0x7001F374",
        "0x70021FA2",
        "0x7002C647",
        "0x7002C65D",
        "0x70031A46",
        "0x70036B5E",
        "0x7003DC81",
        "0x7004128F",
        "0x7003DC82",
        "0x700411AC",
        "0x70043A6A",
        "0x7004497E",
        "0x700459A9",
        "0x70046CC0",
        "0x70047080",
        "0x7004707D",
        "0x70047BF4",
        "0x70047C1B",
        "0x7004AE1D",
        "0x7004B8C2",
        "0x7004B8C3",
        "0x7004B8C4",
        "0x7004B8C5",
        "0x7004D738",
        "0x7004FAC3",
        "0x7004FAC5",
        "0x70052F12",
        "0x70052F04",
        "0x700551F8",
        "0x70057629",
        "0x7005856F",
        "0x70059D0E", --update for the U29 
        "0x70059D12",
	"0x7005AA90", --update for the U30 
        "0x7005AA92"
        };

reputLocationsMap = { 
        reput1 = {mapHex = 0x4100812B, texte = "Retour�: Porte de Thorin", coordx = "450", coordy = "320"},
        reput2 = {mapHex =  0x41008136, texte = "Retour \195\160 Bree", coordx = "470", coordy = "500"},
        reput3 = {mapHex =  0x41008134, texte = "Retour au March\195\169 de Lalia", coordx = "500", coordy = "370"},
        reput4 = {mapHex =  0x41008137, texte = "Retour \195\160 Grand'Cave", coordx = "270", coordy = "525"},
        reput5 = {mapHex =  0x4100812D, texte = "Retour \195\160 Fondcombe", coordx = "520", coordy = "420"},
        reput6 = {mapHex =  0x41008130, texte = "Retournez \195\160 Ost Guruth", coordx = "630", coordy = "245"},
        reput7 = {mapHex =  0x41100DF2, texte = "Retour dans la For\195\170t Noire", coordx = "100", coordy = "450"},
        reput8 = {mapHex =  0x411041a4, texte = "Retour en Enedwaith", coordx = "480", coordy = "440"},
        reput9 = {mapHex =  0x41116EFE, texte = "Retour \195\160 Galtrev", coordx = "450", coordy = "360"},
        reput10 = {mapHex =  0x41123F09, texte = "Retour \195\160 Stangarde", coordx = "440", coordy = "510"},
        reput11 = {mapHex =  0x41132E57, texte = "Retourner \195\160 Neigebronne", coordx = "425", coordy = "430"},
        reput12 = {mapHex =  0x411379FF, texte = "Retour \195\160 Forloi", coordx = "530", coordy = "700"},
        reput13 = {mapHex =  0x4113C321, texte = "Retour \195\160 Aldburg", coordx = "315", coordy = "410"}, 
        reput14 = {mapHex =  0x4114BEAA, texte = "Retour \195\160 Derunant", coordx = "0", coordy = "0"}, -- to check
        reput15 = {mapHex =  0x4113C323, texte = "Retour au Gouffre de Helm", coordx = "445", coordy = "430"},
        reput16 = {mapHex =  0x41154e05, texte = "Retour \195\160 Dol Amroth", coordx = "460", coordy = "340"},
        reput17 = {mapHex =  0x4115ee3c, texte = "Retournez \195\160 Arnach", coordx = "535", coordy = "435"},
        reput18 = {mapHex =  0x411656ef, texte = "Retour \195\160 Minas Tirith", coordx = "860", coordy = "410"},
        reput19 = {mapHex =  0x4113C31F, texte = "Retour au camp militaire", coordx = "460", coordy = "620"},
        reput20 = {mapHex =  0x4119389d, texte = "Retour \195\160 Minas Tirith apr\195\168s la bataille", coordx = "860", coordy = "410"},
        reput21 = {mapHex =  0x411a42e7, texte = "Retour \195\160 Henneth Ann\195\187n", coordx = "600", coordy = "250"},
        reput22 = {mapHex =  0x411a42e5, texte = "Retour \195\160 Osgiliath apr\195\168s la bataille", coordx = "650", coordy = "280"},
        reput23 = {mapHex =  0x411ad8a9, texte = "Retour au Camp de l'arm\195\169e", coordx = "600", coordy = "250"},
        reput24 = {mapHex =  0x411ad8a9, texte = "Retour \195\160 Haerondir", coordx = "430", coordy = "540"},
        reput25 = {mapHex =  0x411b84d4, texte = "Retour au fort d'Ud\195\187n", coordx = "140", coordy = "150"},
        reput26 = {mapHex =  0x410e8707, texte = "Voyager jusqu'\195\160 la Cour de Lothl�rien", coordx = "730", coordy = "540"},
        reput27 = {mapHex =  0x4100812B, texte = "Voyager jusqu'au Palais du roi", coordx = "450", coordy = "320"},
        reput28 = {mapHex =  0x4100812B, texte = "Voyager jusqu'au Palais sous la Montagne", coordx = "450", coordy = "320"},
        reput29 = {mapHex =  0x411a4436, texte = "Voyager jusqu'\195\160 B\195\187r Thorenion", coordx = "0", coordy = "0"},
        reput30 = {mapHex =  0x411c2de2, texte = "Revenir \195\160 Dale", coordx = "750", coordy = "340"},
        reput31 = {mapHex =  0x411cd4b8, texte = "Revenir \195\160 J\195\161rnfast", coordx = "910", coordy = "260"},
        reput32 = {mapHex =  0x411c8da9, texte = "Revenir \195\160 Skarh\195\161ld", coordx = "450", coordy = "460"},
        reput33 = {mapHex =  0x4115B98B, texte = "Retournez aupr\195\168s de Beorningh\195\186s", coordx = "640", coordy = "400"},
        reput34 = {mapHex =  0x411da4a0, texte = "Retournez aupr\195\168s de Hultvis", coordx = "670", coordy = "350"},
        reput35 = {mapHex =  0x411e9a41, texte = "Retour \195\160 Estolad L\195\187n", coordx = "610", coordy = "320"},
        reput36 = {mapHex =  0x411ee769, texte = "Retour \195\160 Liml\195\179k", coordx = "730", coordy = "560"},
        reput37 = {mapHex =  0x411fb86f, texte = "Retournez \195\160 Ann\195\187k-khurfu", coordx = "720", coordy = "720"},
        reput38 = {mapHex =  0x4101f084, texte = "Retournez au Quai des marchands", coordx = "720", coordy = "680"}, -- new from Update U29
        reput39 = {mapHex =  0x41008132, texte = "Retournez \195\160 Pont-\195\160-Tr\195\169teaux", coordx = "240", coordy = "640"},
        reput40 = {mapHex =  0x4120d01b, texte = "Retour � Akr\195\162z-zahar", coordx = "580", coordy = "680"},
        reput41 = {mapHex =  0x4120d01b, texte = "Retour � Azanulbizar", coordx = "580", coordy = "680"}
        };
------------------------------------------------------------------------------------------
-- creep location for munster play
------------------------------------------------------------------------------------------
creepLocations = {
        "0x70028BBC",
        "0x70028BC1",
        "0x70028BB3",
        "0x70028BB6",
        "0x70028BB7",
        "0x70028BBE",
        "0x70028BBF",
        "0x70028BAF",
        "0x70028BB1",
        "0x70028BB2",
        "0x70028BB4",
        "0x70028BB9",
        "0x70028BC0",
        "0x70028BC2",
        "0x70028BB5",
        "0x70028BB0",
        "0x70028BBD"
        };

creepLocationsMap = {
        creep1 = {mapHex = 0x41008133, texte = "Landes d'etten"}
        };

------------------------------------------------------------------------------------------
-- DATA teleport travel
------------------------------------------------------------------------------------------
teleportLocations = {
        "0x700256BA",
        "0x70025792",
        "0x70025793",
        "0x70025794",
        "0x70025795",
        "0x70025796",
        "0x7002FF62",
        "0x7002FF61",
        "0x7002FF60",
        "0x7002FF5F",
        "0x7002FF63"
        };

teleportLocationsMap = {
        tele1 = {mapHex = 0x41008131, coordx = "100", coordy = "520"}, -- aughaire
        tele2 = {mapHex = 0x41008131, coordx = "650", coordy = "160"}, -- grath fornith
        tele3 = {mapHex = 0x41008131, coordx = "360", coordy = "100"}, -- imlad balchorth
        tele4 = {mapHex = 0x41008131, coordx = "950", coordy = "160"}, -- camp d'iorelen'
        tele5 = {mapHex = 0x41008131, coordx = "560", coordy = "640"}, -- Angmar
        tele6 = {mapHex = 0x41008135, coordx = "360", coordy = "180"}, -- Archet
        tele7 = {mapHex = 0x41008134, coordx = "600", coordy = "570"}, -- bree porte sud
        tele8 = {mapHex = 0x41008134, coordx = "480", coordy = "260"}, -- bree poney fringant
        tele9 = {mapHex = 0x41008134, coordx = "270", coordy = "240"}, -- bree - porte ouest
        tele10 = {mapHex = 0x41008136, coordx = "690", coordy = "680"}, -- residence du pay de bree
        tele11 = {mapHex = 0x41008136, coordx = "160", coordy = "590"}, -- pays de bouc
        tele12 = {mapHex = 0x41008136, coordx = "580", coordy = "480"}, -- combe    --- new from here
        tele13 = {mapHex = 0x411041a4, coordx = "560", coordy = "200"}, -- echad dagoras
        tele14 = {mapHex = 0x411041a4, coordx = "460", coordy = "440"}, -- lhanuch
        tele15 = {mapHex = 0x411041a4, coordx = "460", coordy = "530"}, -- harndirion
        tele16 = {mapHex = 0x411041a4, coordx = "280", coordy = "300"}, -- maur tulhau
        tele17 = {mapHex = 0x411041a4, coordx = "780", coordy = "430"}, -- pic de nar
        tele18 = {mapHex = 0x411041a4, coordx = "550", coordy = "640"}, -- rivemort
        tele19 = {mapHex = 0x411041a4, coordx = "330", coordy = "450"}, -- tristebois -- enedwaith
        tele20 = {mapHex = 0x4100812c, coordx = "770", coordy = "710"}, -- celondim
        tele21 = {mapHex = 0x4100812c, coordx = "735", coordy = "525"}, -- duillond
        tele22 = {mapHex = 0x4100812c, coordx = "590", coordy = "370"}, -- gondamon
        tele23 = {mapHex = 0x4100812c, coordx = "870", coordy = "630"}, -- falathorn
        tele24 = {mapHex = 0x4100812B, coordx = "450", coordy = "320"}, -- thorin's hall'
        tele25 = {mapHex = 0x4100812B, coordx = "250", coordy = "610"}, -- residences -- Ered Luin
        tele26 = {mapHex = 0x410e8686, coordx = "250", coordy = "160"}, -- gwingris
        tele27 = {mapHex = 0x410e8686, coordx = "350", coordy = "440"}, -- echad eregion
        tele28 = {mapHex = 0x410e8686, coordx = "540", coordy = "530"}, -- echad dunnan
        tele29 = {mapHex = 0x410e8686, coordx = "250", coordy = "600"}, -- echad mirobel -- eregion
        tele30 = {mapHex = 0x4101f084, coordx = "520", coordy = "390"}, -- tinnudir
        tele31 = {mapHex = 0x4101f084, coordx = "400", coordy = "610"}, -- annuminas
        tele32 = {mapHex = 0x4101f084, coordx = "360", coordy = "170"}, -- haute cime
        tele33 = {mapHex = 0x4101f084, coordx = "620", coordy = "230"}, -- ost forod
        tele34 = {mapHex = 0x4101f084, coordx = "610", coordy = "420"}, -- carrefour du roi
        tele35 = {mapHex = 0x4101f084, coordx = "510", coordy = "750"}, -- castelforge
        tele36 = {mapHex = 0x4101f084, coordx = "630", coordy = "650"}, -- dwaling -- Evendim
        tele37 = {mapHex = 0x410e3f46, coordx = "870", coordy = "570"}, -- kauppa-khota
        tele38 = {mapHex = 0x410e3f46, coordx = "570", coordy = "370"}, -- pynti-peldot
        tele39 = {mapHex = 0x410e3f46, coordx = "290", coordy = "410"}, -- zigilgund
        tele40 = {mapHex = 0x410e3f46, coordx = "210", coordy = "190"}, -- kuru-leiri
        tele41 = {mapHex = 0x410e3f46, coordx = "540", coordy = "160"}, -- suri-kyla -- Forochel
        tele42 = {mapHex = 0x41008130, coordx = "630", coordy = "245"}, -- ost guruth
        tele43 = {mapHex = 0x41008130, coordx = "160", coordy = "360"}, -- auberge abandonn�es -- The Lone-lands
        tele44 = {mapHex = 0x4100812f, coordx = "320", coordy = "440"}, -- camp de gloin
        tele45 = {mapHex = 0x4100812f, coordx = "670", coordy = "370"}, -- vindurhal -- The misty moutains
        tele46 = {mapHex = 0x41008132, coordx = "650", coordy = "320"}, -- esteldin
        tele47 = {mapHex = 0x41008132, coordx = "240", coordy = "640"}, -- pont a thretaux --The north Downs
        tele48 = {mapHex = 0x41008137, coordx = "640", coordy = "230"}, -- trous des grisard
        tele49 = {mapHex = 0x41008137, coordx = "750", coordy = "430"}, -- gue du pont    -- MODIFIED
        tele50 = {mapHex = 0x41008137, coordx = "490", coordy = "430"}, -- hobbitboutg
        tele51 = {mapHex = 0x41008137, coordx = "220", coordy = "470"}, -- courtecave
        tele52 = {mapHex = 0x41008137, coordx = "270", coordy = "525"}, -- grandcave
        tele53 = {mapHex = 0x41008137, coordx = "370", coordy = "690"}, -- residences -- shire
        tele54 = {mapHex = 0x4100812e, coordx = "470", coordy = "630"}, -- echad candelleth
        tele55 = {mapHex = 0x4100812e, coordx = "820", coordy = "370"}, -- fondcombe
        tele56 = {mapHex = 0x4100812e, coordx = "420", coordy = "440"}, -- thornhad -- trollshaws
        tele57 = {mapHex = 0x410e8706, coordx = "370", coordy = "520"}, -- Caras Galadhon
        tele58 = {mapHex = 0x410e8707, coordx = "170", coordy = "370"}, -- mekhem bizru
        tele59 = {mapHex = 0x410e8707, coordx = "430", coordy = "480"}, -- echad andestel
        tele60 = {mapHex = 0x410e8707, coordx = "830", coordy = "625"}, --  imlad lalaith -- Lothorien
        tele61 = {mapHex = 0x41100DF2, coordx = "100", coordy = "450"}, -- l'oree noire'
        tele62 = {mapHex = 0x41100DF2, coordx = "310", coordy = "370"}, -- l'auberge abandonne'
        tele63 = {mapHex = 0x41100DF2, coordx = "510", coordy = "400"}, -- ost galadh
        tele64 = {mapHex = 0x41100DF2, coordx = "370", coordy = "520"}, -- estolad mernael
        tele65 = {mapHex = 0x41100DF2, coordx = "635", coordy = "540"}, -- mithechad
        tele66 = {mapHex = 0x41100DF2, coordx = "720", coordy = "340"}, --  thanquilhad -- Mirkwood
        tele67 = {mapHex = 0x410e871c, coordx = "150", coordy = "480"}, -- La grande prospection
        tele68 = {mapHex = 0x410e871c, coordx = "730", coordy = "520"}, -- belveder enfoui
        tele69 = {mapHex = 0x410e8719, coordx = "470", coordy = "210"}, -- longue descente
        tele70 = {mapHex = 0x410e871d, coordx = "120", coordy = "450"}, -- chambre de la croise
        tele71 = {mapHex = 0x410e871b, coordx = "670", coordy = "180"}, -- 21 eme salle
        tele72 = {mapHex = 0x410e8716, coordx = "540", coordy = "200"}, -- profondeur ardente
        tele73 = {mapHex = 0x410e8717, coordx = "640", coordy = "280"}, -- systeme hydrolique
        tele74 = {mapHex = 0x410e8715, coordx = "140", coordy = "330"}, --  fondation de pierres
        tele75 = {mapHex = 0x410e8718, coordx = "250", coordy = "220"}, --  filon du rubicorn
        tele76 = {mapHex = 0x410e871d, coordx = "510", coordy = "370"}, --  jazargund
        tele77 = {mapHex = 0x410e871d, coordx = "680", coordy = "360"}, --  fosse mordante -- Moria
        tele78 = {mapHex = 0x4111961d, coordx = "230", coordy = "190"}, -- trum dreg
        tele79 = {mapHex = 0x4111961d, coordx = "480", coordy = "270"}, -- echad naeglanc
        tele80 = {mapHex = 0x4111961d, coordx = "450", coordy = "360"}, -- galtrev
        tele81 = {mapHex = 0x4111961d, coordx = "670", coordy = "300"}, -- T�l Methedras
        tele82 = {mapHex = 0x4111961d, coordx = "310", coordy = "500"}, -- avardim
        tele83 = {mapHex = 0x4111961d, coordx = "700", coordy = "400"}, -- Rohirrim Scout-camp
        tele84 = {mapHex = 0x4111961d, coordx = "210", coordy = "630"}, -- lhan rhos
        tele85 = {mapHex = 0x4111961d, coordx = "470", coordy = "555"}, -- Barnavon -- dun land
        tele86 = {mapHex = 0x411375af, coordx = "630", coordy = "450"}, -- forloi -- landes farouche
        tele87 = {mapHex = 0x41116d55, coordx = "670", coordy = "360"}, -- Forthbrond
        tele88 = {mapHex = 0x41116d55, coordx = "870", coordy = "400"}, -- Grimbold's Camp -- gap of rohan
        tele89 = {mapHex = 0x41119607, coordx = "445", coordy = "670"}, -- Dagoras' Camp
        tele90 = {mapHex = 0x41119607, coordx = "720", coordy = "320"}, -- Ox-clan Merchant Camp -- nan curundir
        tele91 = {mapHex = 0x41119607, coordx = "520", coordy = "410"}, -- Isengard (after)
        tele92 = {mapHex = 0x4111e1c0, coordx = "810", coordy = "530"}, -- Etheburg
        tele93 = {mapHex = 0x41123f09, coordx = "440", coordy = "510"}, -- Stangard
        tele94 = {mapHex = 0x4111e1c0, coordx = "290", coordy = "320"}, -- The Cuthstan
        tele95 = {mapHex = 0x4111e1c0, coordx = "590", coordy = "370"}, -- Parth Celebrant
        tele96 = {mapHex = 0x4111e1c0, coordx = "700", coordy = "460"}, -- Aculf's Camp
        tele97 = {mapHex = 0x4111e1c0, coordx = "390", coordy = "170"}, -- Haldirith -- the great river
        tele98 = {mapHex = 0x4112d1e1, coordx = "510", coordy = "450"}, --  	Eaworth
        tele99 = {mapHex = 0x4112d1e1, coordx = "320", coordy = "180"}, -- Thornhope -- ent wash
        tele100 = {mapHex = 0x4112d1e0, coordx = "490", coordy = "100"}, --  	Cliving
        tele101 = {mapHex = 0x4112d1e0, coordx = "680", coordy = "340"}, --  	Elthengels
        tele102 = {mapHex = 0x4112d1e0, coordx = "450", coordy = "600"}, -- Faldham -- norcroft
        tele103 = {mapHex = 0x4112d1df, coordx = "420", coordy = "140"}, -- Garsfeld
        tele104 = {mapHex = 0x4112d1df, coordx = "750", coordy = "285"}, -- Hytbold
        tele105 = {mapHex = 0x4112d1df, coordx = "425", coordy = "430"}, --  	Snowbourn
        tele106 = {mapHex = 0x4112d1df, coordx = "810", coordy = "530"}, -- Walstow -- sutcroft
        tele107 = {mapHex = 0x4112d1dc, coordx = "420", coordy = "280"}, -- Mansig's Encampment
        tele108 = {mapHex = 0x4112d1dc, coordx = "570", coordy = "570"}, -- Parth Galen
        tele109 = {mapHex = 0x4112d1de, coordx = "490", coordy = "390"}, -- Harwick
        tele110 = {mapHex = 0x4112d1de, coordx = "650", coordy = "650"}, -- Floodwend
        tele111 = {mapHex = 0x4112d1de, coordx = "440", coordy = "260"}, --  	Langhold -- the wold
        tele112 = {mapHex = 0x4113C31F, coordx = "640", coordy = "190"}, -- Entwade
        tele113 = {mapHex = 0x4113C31F, coordx = "420", coordy = "90"}, -- Middlemead
        tele114 = {mapHex = 0x4113C31F, coordx = "390", coordy = "310"}, -- Edoras
        tele115 = {mapHex = 0x4113C31F, coordx = "410", coordy = "465"}, -- Upbourn
        tele116 = {mapHex = 0x4113C31F, coordx = "405", coordy = "530"}, --  	Underharrow
        tele117 = {mapHex = 0x4113C31F, coordx = "460", coordy = "620"}, -- Dunharrow -- kingstead
        tele118 = {mapHex = 0x4113C321, coordx = "315", coordy = "410"}, -- Aldburg
        tele119 = {mapHex = 0x4113C321, coordx = "620", coordy = "450"}, -- Beaconwatch
        tele120 = {mapHex = 0x4113C321, coordx = "610", coordy = "310"}, --  Fenmarch --estfold
        tele121 = {mapHex = 0x4113C320, coordx = "700", coordy = "240"}, -- Oserley
        tele122 = {mapHex = 0x4113C320, coordx = "540", coordy = "490"}, --  	Stoke -- broadacres
        tele123 = {mapHex = 0x4113C322, coordx = "490", coordy = "190"}, -- Woodhurst
        tele124 = {mapHex = 0x4113C322, coordx = "570", coordy = "350"}, -- Brockbridge
        tele125 = {mapHex = 0x4113C322, coordx = "245", coordy = "505"}, --  	Gapholt -- stonedeans
        tele126 = {mapHex = 0x4113C324, coordx = "560", coordy = "460"}, --  	Grimslade
        tele127 = {mapHex = 0x4113C324, coordx = "245", coordy = "550"}, -- Helm's Deep west fold
        tele128 = {mapHex = 0x4113C323, coordx = "445", coordy = "430"}, -- Helm's Deep -- helm's deep
        tele129 = {mapHex = 0x4115B98B, coordx = "640", coordy = "400"}, -- maison de grimebeorn
        tele130 = {mapHex = 0x411da4a0, coordx = "665", coordy = "340"}, -- Hultvis
        tele131 = {mapHex = 0x411da4a0, coordx = "500", coordy = "620"}, -- Arhaim
        tele132 = {mapHex = 0x411da4a0, coordx = "650", coordy = "515"}, -- Blomgard
        tele133 = {mapHex = 0x411da4a0, coordx = "575", coordy = "280"}, -- Vegbar -- fin val d'andiun
        tele134 = {mapHex = 0x411ee769, coordx = "730", coordy = "560"}, -- limlok
        tele135 = {mapHex = 0x411ee769, coordx = "625", coordy = "320"}, -- Thokvist
        tele136 = {mapHex = 0x411ee769, coordx = "370", coordy = "290"}, -- Lyndelby
        tele137 = {mapHex = 0x411ee769, coordx = "600", coordy = "170"}, -- Hlithseld-- fin puit du long fleuve
        tele138 = {mapHex = 0x411fb86f, coordx = "720", coordy = "720"}, -- annak-kurfu -- fin val d'a�eul
        tele139 = {mapHex = 0x411cd4b8, coordx = "515", coordy = "150"}, -- martelieu
        tele140 = {mapHex = 0x411cd4b8, coordx = "915", coordy = "260"}, -- jarnfast -- les monts de fer
        tele141 = {mapHex = 0x411c2de2, coordx = "735", coordy = "315"}, -- Dale 
        tele142 = {mapHex = 0x411c2de2, coordx = "740", coordy = "210"}, -- Erebor 
        tele143 = {mapHex = 0x411c2de2, coordx = "690", coordy = "500"}, -- Ville du lac 
        tele144 = {mapHex = 0x411c2de2, coordx = "580", coordy = "570"}, -- Loeglong 
        tele145 = {mapHex = 0x411c2de2, coordx = "470", coordy = "430"}, -- Felegoth 
        tele146 = {mapHex = 0x411c2de2, coordx = "240", coordy = "630"}, -- Emyn-nu-fuin -- terres de dale
        tele147 = {mapHex = 0x411c8da9, coordx = "460", coordy = "430"}, -- Skarhald -- ered mithrin
        tele148 = {mapHex = 0x4120d01b, coordx = "560", coordy = "640"}, -- Amd�m -- azalnulbizar
        tele149 = {mapHex = 0x41154eed, coordx = "590", coordy = "240"}, -- Morlad
        tele150 = {mapHex = 0x41154eed, coordx = "545", coordy = "305"}, --  	Alagrant
        tele151 = {mapHex = 0x41154eed, coordx = "510", coordy = "390"}, --  	Sardol
        tele152 = {mapHex = 0x41154eed, coordx = "760", coordy = "290"}, --  	Lancrath -- blackroot vale
        tele153 = {mapHex = 0x41154eec, coordx = "540", coordy = "250"}, -- D�nadab
        tele154 = {mapHex = 0x41154eec, coordx = "705", coordy = "430"}, -- Calembel -- Lamedon
        tele155 = {mapHex = 0x41154eeb, coordx = "820", coordy = "280"}, -- Tadrent
        tele156 = {mapHex = 0x41154eeb, coordx = "700", coordy = "320"}, -- Ost Lontir
        tele157 = {mapHex = 0x41154eeb, coordx = "460", coordy = "340"}, --  	Dol Amroth --haven of belfalas
        tele158 = {mapHex = 0x4115b93f, coordx = "555", coordy = "290"}, -- Ethring -- ringo
        tele159 = {mapHex = 0x4115b945, coordx = "810", coordy = "340"}, --  	Linhir
        tele160 = {mapHex = 0x4115b944, coordx = "510", coordy = "260"}, -- Ost Anglebed
        tele161 = {mapHex = 0x4115b944, coordx = "805", coordy = "505"}, --  	Pelargir --lebenin
        tele162 = {mapHex = 0x4115ee38, coordx = "530", coordy = "480"}, -- Glaniath
        tele163 = {mapHex = 0x4115ee38, coordx = "545", coordy = "255"}, --  	Tumladen -- upper lebenin
        tele164 = {mapHex = 0x4115ee3c, coordx = "535", coordy = "435"}, --  	Arnach
        tele165 = {mapHex = 0x4115ee3c, coordx = "560", coordy = "195"}, --  	Imloth Melui -- lossarnach
        tele166 = {mapHex = 0x4115ee3a, coordx = "540", coordy = "520"}, --  	B�r H�rin
        tele167 = {mapHex = 0x4115ee3a, coordx = "790", coordy = "220"}, -- Faramir's Lookout -- south ilithien
        tele168 = {mapHex = 0x4116af91, coordx = "430", coordy = "480"}, -- lointain anorien
        tele169 = {mapHex = 0x4116af90, coordx = "320", coordy = "170"}, -- Taur druadan
        tele170 = {mapHex = 0x4116af90, coordx = "390", coordy = "480"}, -- Taur druadan sud
        tele171 = {mapHex = 0x411656ee, coordx = "450", coordy = "440"}, -- Talath anor
        tele172 = {mapHex = 0x411656ef, coordx = "815", coordy = "380"}, -- Minas tirith
        tele173 = {mapHex = 0x411a42e8, coordx = "550", coordy = "480"}, -- pavillion d'aragorn'
        tele174 = {mapHex = 0x411a42e8, coordx = "890", coordy = "370"}, -- osgiliath apr�s la bataille
        tele175 = {mapHex = 0x411a42e7, coordx = "565", coordy = "250"}, -- ithilien du nord
        tele176 = {mapHex = 0x411ad8a9, coordx = "330", coordy = "760"}, --  camp de l'arm�e
        tele177 = {mapHex = 0x411ad8a9, coordx = "660", coordy = "480"}, --  collines arides
        tele178 = {mapHex = 0x411ad8a9, coordx = "430", coordy = "550"}, --  haerondir --- landes desertique
        tele179 = {mapHex = 0x411ea2fa, coordx = "520", coordy = "280"}, -- torech ungol
        tele180 = {mapHex = 0x411b9591, coordx = "220", coordy = "320"}, --  fort d'udun
        tele181 = {mapHex = 0x411b84d4, coordx = "320", coordy = "300"}, --  Ruine de Dingarth
        tele182 = {mapHex = 0x411b958e, coordx = "450", coordy = "210"}, --  Rath Cail
        tele183 = {mapHex = 0x411b958e, coordx = "610", coordy = "600"}, --  Lant Angos
        tele184 = {mapHex = 0x411b9590, coordx = "745", coordy = "540"}, -- talath urui 
        tele185 = {mapHex = 0x411b958c, coordx = "400", coordy = "700"}, -- Agarnaith
        tele186 = {mapHex = 0x411b958c, coordx = "650", coordy = "620"}, -- bol rudh -- fin agarnaith
        tele187 = {mapHex = 0x411e9a43, coordx = "110", coordy = "410"}, -- dingarth
        tele188 = {mapHex = 0x411e9a43, coordx = "280", coordy = "350"}, -- Echad-in-edhil
        tele189 = {mapHex = 0x411e9a43, coordx = "330", coordy = "480"}, -- Adambel
        tele190 = {mapHex = 0x411e9a43, coordx = "620", coordy = "320"}, -- Barthost -- fin siege du mordor
        tele191 = {mapHex = 0x411e9a41, coordx = "450", coordy = "350"}, -- Minas morgul
        tele192 = {mapHex = 0x411e9a41, coordx = "420", coordy = "220"}, -- Minas morgul
        tele193 = {mapHex = 0x411e9a41, coordx = "620", coordy = "320"}, -- Minas morgul
        tele194 = {mapHex = 0x411e9a41, coordx = "370", coordy = "290"}, -- Estolad Lan
        tele195 = {mapHex = 0x411e9a41, coordx = "650", coordy = "390"} -- Taen Orwath -- fin minas morgul vale
        };