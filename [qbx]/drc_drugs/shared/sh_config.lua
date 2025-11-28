Config = {}

Config.Debug = false
--SERVER SETTINGS
Config.Framework = "qbcore" -- Set your framework! qbcore, ESX, standalone
Config.Target = "qb-target" -- Which Target system do u use? qb-target, qtarget
Config.Dispatch = { enabled = true, script = "cd_dispatch" } -- cd_dispatch, linden_outlawalert, ps-disptach
Config.NotificationType = "ox_lib" -- ESX, ox_lib, qbcore
Config.Bob74_ipl = true -- Loads lab interiors
Config.PoliceJobs = { 'police', 'sheriff' }
Config.Clothing = "custom" -- fivem-appearance, esx_skin, qb-clothing, custom | change in client/cl_Utils.lua | GetSkin = function() | ApplySkin = function()
--PLAYER CONTROL
Config.Logs = { enabled = true, type = "webhook" } -- use webhook or ox_lib (datadog) Can be changed in server > sv_utils.lua
Config.DropPlayer = true -- Drop (Kick) Player if tries to cheat!
Config.AnticheatBan = false -- Change in server/sv_Utils.lua!!! WIll not work by default you need to add your custom trigger to ban player!
--BLIPS
Config.Blips = {
    FlowerShop = { -- do not use same value twice (will result in overwriting of blip)
        BlipCoords = vec3(307.91, -1286.48, 29.53), -- Blip coords
        Sprite = 40, -- Blip Icon
        Display = 4, -- keep 4
        Scale = 0.6, -- Size of blip
        Colour = 69, -- colour
        Name = "Fleuriste" -- Blip name
    },
    ComicShop = {
        BlipCoords = vec3(-143.52, 229.53, 93.94),
        Sprite = 280,
        Display = 4,
        Scale = 0.8,
        Colour = 50,
        Name = "Magasin de BD"
    },
}

--Madrazo Trade
Config.Madrazo = {
    Header = "Madrazo",
    Title = "Acheter l'accès au laboratoire de méthamphétamine",
    Description = "Échangez 10 figurines complètes contre un accès au laboratoire !",
    Available = { -- Time
        enabled = false, from = 1, to = 22
    },
    RequiredItems = {
        { item = "coke_figure", count = 10, remove = true },  -- Augmenté à 10 figurines pour un plus grand défi
    },
    AddItems = {
        { item = "meth_access", count = 1 },
    },
    Location = {
        Coords = vec3(-1032.44, 686.0, 161.45),
        Heading = 270.7,
        radius = 0.7,
    },
    Log = "A échangé 10 figurines de coke contre 1 carte d'accès à la méthamphétamine"
}


--Gerald Trade
Config.Gerald = {
    Header = "Gerald",
    Title = "Acheter l'accès au labo de Coke",
    Description = "Échangez 60 paquets d'herbe contre une carte d'accès au labo de coke !",
    Available = { -- Time
        enabled = false, from = 3, to = 10
    },
    RequiredItems = {
        { item = "weed_package", count = 60, remove = true },  -- Réduit à 60 paquets pour rendre l'accès plus accessible
    },
    AddItems = {
        { item = "coke_access", count = 1 },
    },
    Location = {
        Coords = vec3(-58.91, -1530.98, 34.5),
        Heading = 229.64,
        radius = 0.7,
    },
    Log = "A échangé 60x le paquet d'herbe contre 1 carte d'accès au labo de coke"
}


--Locate Dealer
Config.LocateDealer = {
    RequiredItems = {
        --{ item = "hack_usb", count = 1, remove = true }, -- Add you hacking usb item from your server or just create one!
    },
    DealerPos = { -- Location of dealers
        vec2(-1301.67, -776.34),
        vec2(819.61, -2348.83),
    },
    Location = { --Target
        Coords = vector3(-1055.31, -243.29, 44.05),
        radius = 0.4,
    },
}

--Pharmacist
Config.Pharmacist = {
    Header = "Pharmacien",
    Available = { -- Time
        enabled = false, from = 18, to = 23
    },
    Items = {
        { label = 'Empty Plastic Can', item = 'meth_emptysacid', description = "Acheter une boîte en plastique vide pour: $",
            price = 2500, MinAmount = 1, MaxAmount = 5 },  -- Prix conservé, quantité stable
        { label = 'Amonian', item = 'meth_amoniak', description = "Acheter Amoniak pour: $", price = 1000, MinAmount = 1,
            MaxAmount = 5 },  -- Réduit le maximum à 3, ajusté le prix pour l'équilibre
        { label = 'Syringe', item = 'syringe', description = "Acheter une seringue pour: $", price = 140, MinAmount = 1,
            MaxAmount = 5 },  -- Prix stable, quantité raisonnable
        { label = 'Meth Pipe', item = 'meth_pipe', description = "Acheter une pipe à méthamphétamine pour: $", price = 150, MinAmount = 1,
            MaxAmount = 10 },  -- Légère augmentation du prix pour refléter la valeur
        { label = 'Crack Pipe', item = 'crack_pipe', description = "Acheter une pipe à crack pour: $", price = 190, MinAmount = 1,
            MaxAmount = 10 },  -- Légère augmentation du prix, en raison de la spécialisation
    },

    Ped = {
        { model = "s_m_m_doctor_01", coords = vec4(75.76, -1622.35, 30.9 - 1.0, 236.13), scenario = "WORLD_HUMAN_SMOKING" },
    },
}


--Dealer
Config.Dealer = {
    Header = "Marchand de mauvaises herbes",
    Items = {
        { label = 'Weed Access Card', item = 'weed_access', description = "Achetez un carte d'accès au lab de weed pour: $", price = 10000,
            MinAmount = 1, MaxAmount = 1 },  -- Prix stable, quantité raisonnable
        { label = 'Weed Papers', item = 'weed_papers', description = "Acheter des papiers de désherbage pour: $", price = 250, MinAmount = 1,
            MaxAmount = 10 },  -- Légère augmentation du prix et réduction de la quantité
        { label = 'Blunt Wraps', item = 'weed_wrap', description = "Acheter des enveloppes Blunt pour: $", price = 290, MinAmount = 1,
            MaxAmount = 10 },  -- Légère augmentation du prix et réduction de la quantité
        { label = 'Plastic Bag', item = 'plastic_bag', description = "Acheter un sac plastique pour: $", price = 500, MinAmount = 1,
            MaxAmount = 200 },  -- Réduction de la quantité maximale pour éviter la surproduction
    },
    Ped = {
        { model = "s_m_y_dealer_01", coords = vec4(-1301.67, -776.34, 18.47, 202.49), scenario = "WORLD_HUMAN_SMOKING" },
    },
}


--Medicament dealer
Config.MedicamentsShop = {
    Header = "Revendeur de médicaments",
    Items = {
        { label = 'LSD', item = 'lsd', description = "Acheter du LSD pour: $", price = 500, MinAmount = 1, MaxAmount = 10 },  -- Légère augmentation du prix et réduction de la quantité
        { label = 'Xanax', item = 'xanaxpack', description = "Acheter Xanax pour: $", price = 2000, MinAmount = 1, MaxAmount = 20 },  -- Augmentation du prix pour équilibrer l'offre
        { label = 'Ecstasy', item = 'ecstasy', description = "Acheter de l'ecstasy pour: $", price = 300, MinAmount = 1, MaxAmount = 20 },  -- Augmentation du prix pour équilibrer
    },
    Ped = {
        { model = "s_m_y_dealer_01", coords = vec4(819.61, -2348.83, 29.33, 261.57), scenario = "WORLD_HUMAN_SMOKING" },
    },
}


--ComicShop
Config.ComicShop = {
    Header = "Boutique de BD",
    Items = {
        { label = 'Action Figure', item = 'coke_figureempty', description = "Acheter une figurine pour: $", price = 500,
            MinAmount = 1, MaxAmount = 10 },  -- Augmentation du prix et réduction de la quantité maximale à 1 pour éviter une surconsommation
    },
    Ped = {
        { model = "u_m_y_imporage", coords = vec4(-143.52, 229.53, 93.94, 1.4), scenario = "WORLD_HUMAN_MUSCLE_FLEX" },
    },
    Log = "A acheté l'article %s, nombre %s"
}


--Flowershop
Config.FlowerShop = {
    Header = "Fleuriste",
    Items = {
        { label = 'Hammer', item = 'hammer', description = "Acheter un marteau pour: $", price = 200, MinAmount = 1, MaxAmount = 5 },  -- Légère réduction du prix et réduction de la quantité
        { label = 'Trowel', item = 'trowel', description = "Acheter une truelle pour: $", price = 350, MinAmount = 1, MaxAmount = 5 },  -- Légère réduction du prix et réduction de la quantité
        { label = 'Scissors', item = 'scissors', description = "Acheter des ciseaux pour: $", price = 150, MinAmount = 1, MaxAmount = 5 },  -- Légère réduction du prix et réduction de la quantité
        { label = 'Glue', item = 'glue', description = "Acheter de la colle pour: $", price = 120, MinAmount = 1, MaxAmount = 5 },  -- Augmentation du prix pour éviter un achat excessif
        { label = 'Baking Soda', item = 'baking_soda', description = "Acheter bicarbonate de soude pour: $", price = 200, MinAmount = 1, MaxAmount = 5 },  -- Augmentation du prix pour éviter un achat excessif
    },
    Ped = {
        { model = "s_m_m_gardener_01", coords = vec4(307.91, -1286.48, 29.53, 165.26), scenario = "WORLD_HUMAN_SMOKING" },
    },
}


--Weed
Config.Weed = {
    --LABORATOIRE
    ElectricityNeeded = true,
    --Zone du laboratoire
    Lab = {
        coords = vector3(1054.33, -3196.17, -39.17),
        radius = 23.85,
        DebugPoly = false,
        name = "WeedLab",
    },
    --Climatisation
    AC = {
        coords = vector3(1045.32, -3194.84, -38.33),
        radius = 0.4,
    },
    --ENTRER DANS LE LABO
    Enterlab = {
        coords = vector3(2855.56, 4447.03, 48.88),
        radius = 1.2,
        teleport = vector3(1066.12, -3183.43, -40.16),
        NeedItem = true,
        ItemName = "weed_access"
    },
    --SORTIR DU LABO
    LeaveLab = {
        coords = vector3(1066.57, -3183.46, -38.96), radius = 1.0, teleport = vector3(2855.99, 4445.97, 47.54),
    },
    --Collecte de la weed
    Pickup = {
        Models = { [`bkr_prop_weed_lrg_01a`] = true, [`bkr_prop_weed_lrg_01b`] = true },
        RequiredItems = {
            { item = "scissors", count = 1, remove = false },
        },
        AddItems = {
            { item = "weed_bud", count = 10 },  -- Augmentation de la quantité récoltée
        },
        Log = "A récolté 10x Weed bud avec des feuilles"
    },
    --Nettoyage
    Clean = {
        header = "Nettoyer la Weed",
        description = "Ingrédients : 10x Weed bud avec des feuilles",  -- Quantité réduite
        coords = vector3(1038.67, -3205.93, -38.3),
        radius = 0.8,
        teleport = vector3(1039.3 - 0.8, -3205.95, -37.69 - 1.4),
        heading = 90.0,
        leave = vector3(1039.28, -3205.38, -39.17),
        RequiredItems = {
            { item = "weed_bud", count = 10, remove = true },  -- Réduction de la quantité pour un processus plus rapide
        },
        AddItems = {
            { item = "weed_budclean", count = 10 },  -- Augmentation de la récompense
        },
        Log = "A transformé 10x Weed bud avec des feuilles en 10x Weed bud propre"
    },
    --Emballage
    Package = {
        header = "Emballer la Weed",
        description = "Ingrédients : 10x Weed bud propre, 10x Sac plastique",  -- Réduction de la Weed bud propre nécessaire
        coords = vector3(1036.35, -3203.13, -38.24),
        radius = 0.8,
        RequiredItems = {
            { item = "weed_budclean", count = 10, remove = true },  -- Réduction pour rendre le processus plus rapide
            { item = "plastic_bag", count = 10, remove = true },
        },
        AddItems = {
            { item = "weed_package", count = 10 },  -- Maintien de la même quantité pour l'emballage
        },
        Log = "A transformé 10x Weed bud propre et 10x Sac plastique en 10x Weed emballée"
    },
}


--Meth
Config.Meth = {
    --LABORATOIRE
    ElectricityNeeded = true,
    --Electricité
    Electricity = {
        coords = vector3(998.33, -3202.35, -38.48), radius = 0.7,
    },
    --Jeu de mémoire
    Memorygame = true,
    --Zone du laboratoire
    Lab = {
        coords = vector3(1013.22, -3194.95, -37.88),
        radius = 18.85,
        DebugPoly = false,
        name = "MethLab",
    },
    --ENTRER DANS LE LABO
    Enterlab = {
        coords = vector3(762.93, -1092.78, 22.58),
        radius = 1.6,
        teleport = vector3(996.99, -3200.7, -37.39),
        NeedItem = true,
        ItemName = "meth_access"
    },
    --SORTIR DU LABO
    LeaveLab = {
        coords = vector3(996.49, -3200.62, -36.32),
        radius = 1.0,
        teleport = vector3(763.09, -1092.92, 21.22),
    },
    --RÉCUPÉRATION DE L'ACIDE
    GetSacid = {
        coords = vector3(2718.76, 1558.05, 21.4),
        radius = 1.0,
        teleport = vector3(2718.82, 1558.8, 19.82),
        RequiredItems = {
            { item = "meth_emptysacid", count = 1, remove = true },
        },
        AddItems = {
            { item = "meth_sacid", count = 1 },
        },
        Log = "A rempli son bidon avec du Sodium Benzoate"
    },
    --CHAUFFAGE
    Heat = {
        coords = vector3(1001.97, -3198.86, -38.53),
        radius = 0.4,
        teleport = vector3(1002.38, -3198.91, -39.99),
        heading = 82.52,
    },
    --CUISSON
    Pouring = {
        header = "Commencer la cuisson",
        description = "Ingrédients : 1x Amoniak, 1x Sodium benzoate",
        coords = vector3(1005.76, -3200.91, -38.1),
        radius = 0.6,
        teleport = vector3(1005.71, -3200.39, -38.51),
        heading = 180.0,
    },
    --FINITION
    Complete = {
        coords = vector3(1007.84, -3201.51, -38.53),
        radius = 0.5,
        teleport = vector3(1007.89, -3201.09, -39.99),
        heading = 188.27,
        RequiredItems = {
            { item = "meth_amoniak", count = 1, remove = true },
            { item = "meth_sacid", count = 1, remove = true },
        },
        AddItems = {
            { item = "meth_glass", count = 1 },
            { item = "meth_emptysacid", count = 1 },
        },
        Log = "A transformé 1x Amoniak, 1x Sodium benzoate en 1x Plateau de méthamphétamine"
    },
    --BRISURE
    Break = {
        header = "Casser la méthamphétamine",
        description = "Ingrédients : 1x Plateau de méthamphétamine, 1x Marteau",
        coords = vector3(1016.47, -3194.15, -39.01),
        radius = 0.5,
        teleport = vector3(1016.70 - 3.6, -3195.64 - 1.0, -38.99 - 1.0),
        heading = 180.0,
        RequiredItems = {
            { item = "meth_glass", count = 1, remove = true },
            { item = "hammer", count = 1, remove = false },
        },
        AddItems = {
            { item = "meth_sharp", count = 1 },
        },
        Log = "A transformé 1x Plateau de méthamphétamine, 1x Marteau en 1x Plateau de méthamphétamine cassé"
    },
    --EMBALLAGE
    Package = {
        header = "Emballer la méthamphétamine",
        description = "Ingrédients : 1x Plateau de méthamphétamine cassé, 5x Sac plastique",
        coords = vector3(1011.28, -3194.15, -39.04),
        radius = 0.5,
        teleport = vector3(1012.24, -3196.25, -38.99),
        heading = 180.0,
        RequiredItems = {
            { item = "meth_sharp", count = 1, remove = true },
            { item = "plastic_bag", count = 1, remove = true },
        },
        AddItems = {
            { item = "meth_bag", count = 1 },
        },
        Log = "A transformé 1x Plateau de méthamphétamine cassé, 5x Sac plastique en 5x Sac de méthamphétamine"
    },
}


--Heroin
Config.Heroin = {
    --Champ de pavot
    Field = {
        coords = vec3(4123.8, 4499.54, 17.55),
        radius = 20.85,
        Duration = 10000,
        name = "Champ de pavot",
        debugPoly = false,
        RequiredItems = {
            { item = "trowel", count = 1, remove = false },
        },
        AddItems = {
            { item = "poppyplant", count = 7 }, -- Augmentation du nombre de plantes récoltées
        },
        prop = `prop_plant_01b`, -- NE PAS MODIFIER SI VOUS NE SAVEZ PAS CE QUE VOUS FAITES
        Log = "A récolté 2x Plantes de pavot"
    },
    --Processus
    Process = {
        header = "Transformer les plantes de pavot",
        description = "Ingrédients : 6x Plantes de pavot, 1x Amoniak, 10x Sac plastique", -- Réduction des plantes nécessaires
        coords = vector3(1391.41, 3605.55, 39.07),
        radius = 0.4,
        Teleport = vector3(1391.87, 3605.64, 37.94),
        Duration = 30000,
        RequiredItems = {
            { item = "poppyplant", count = 6, remove = true }, -- Réduction du nombre de plantes nécessaires
            { item = "meth_amoniak", count = 1, remove = true },
            { item = "plastic_bag", count = 10, remove = true },
        },
        AddItems = {
            { item = "heroin", count = 10 },
        },
        Log = "A transformé 6x Plantes de pavot, 1x Amoniak, 10x Sac plastique en 10x héroïne"
    },
}


--Crack
Config.Crack = {
    --Processus
    Process = {
        header = "Fabriquer du Crack",
        description = "Ingrédients : 15x Cocaïne pure, 5x Bicarbonate de soude, 2x Bouteille d'eau", -- Réduction des quantités
        coords = vector3(2431.04, 4971.46, 42.28),
        radius = 0.4,
        Teleport = vector3(2431.47, 4970.94, 41.35),
        Duration = 30000, -- Réduction de la durée pour accélérer le processus
        RequiredItems = {
            { item = "coke_pure", count = 15, remove = true }, -- Réduction de 2 à 1 pour la cocaïne pure
            { item = "baking_soda", count = 5, remove = true },
            { item = "water_bottle", count = 2, remove = true },
        },
        AddItems = {
            { item = "crack", count = 15 },
        },
        Log = "A transformé 15x Cocaïne pure, 5x Bicarbonate de soude, 2x Bouteille d'eau en 15x Crack"
    },
}


--Coke
Config.Coke = {
    --LABORATORY
    ElectricityNeeded = true,
    --Lab circlezone
    Electricity = {
        coords = vector3(1091.5, -3191.67, -39.7),
        radius = 0.4
    },
    --Lab Circlezone
    Lab = {
        coords = vector3(1092.68, -3194.89, -38.99),
        radius = 18.85,
        DebugPoly = false,
        name = "CokeLab",
    },
    --ENTER LAB
    Enterlab = {
        coords = vector3(1242.16, -3113.78, 6.01),
        radius = 1.2,
        teleport = vector3(1088.76, -3187.68, -39.99),
        NeedItem = true,
        ItemName = "coke_access"
    },
    --LEAVE LAB
    LeaveLab = {
        coords = vector3(1088.66, -3187.51, -38.83),
        radius = 0.8,
        teleport = vector3(1242.16, -3113.78, 6.01),
    },
    --Field
    Field = {
        coords = vector3(2526.91, 4358.54, 40.09),
        radius = 40.0,
        DebugPoly = false,
        name = "Cokefield",
        RequiredItems = {
            { item = "trowel", count = 1, remove = false },
        },
        AddItems = {
            { item = "coke_leaf", count = 8 },
        },
        Log = "A récolté 8x Feuille de Coke"
    },
    --LeafProcess
    LeafProcess = {
        header = "Traiter les feuilles de Coke",
        description = "Ingrédients : 8x Feuille de Coke", -- Réduction à 1 feuille de coke pour simplifier
        coords = vector3(1101.8, -3193.06, -38.98),
        radius = 0.4,
        boxcoords = vector4(1101.81, -3193.14, -39.18, 90),
        RequiredItems = {
            { item = "coke_leaf", count = 1, remove = true }, -- Réduction à 1 feuille
        },
        AddItems = {
            { item = "coke_box", count = 8 },
        },
        Log = "A transformé 8x Feuille de Coke en 8x Boîte de Coke"
    },
    --CokeBox
    CokeBox = {
        header = "Verser le Coke",
        description = "Ingrédients : 8x Boîte de Coke",
        coords = vector3(1086.8, -3195.31, -39.15), radius = 0.4, teleport = vector3(1087.31, -3196.04, -38.99),
        heading = 0.0,
        RequiredItems = {
            { item = "coke_box", count = 8, remove = true },
        },
        AddItems = {
            { item = "coke_raw", count = 12 }, -- Réduction du rendement de 3 à 2
        },
        Log = "A transformé 8x Boîte de Coke en 12x Coke brut"
    },
    --Coke Cleaning
    Soda = {
        header = "Nettoyer le Coke",
        description = "Ingrédients : 12x Coke brut", -- Réduction de 2 à 1 Coke brut
        RequiredItems = {
            { item = "coke_raw", count = 12, remove = true }, -- Réduction à 1 Coke brut
        },
        AddItems = {
            { item = "coke_pure", count = 12 },
        },
        Log = "A transformé 12x Coke brut en 12x Coke pur"
    },
    SodaTables = {
        { coords = vector3(1095.39, -3196.3, -39.15), radius = 0.4, DebugPoly = false, headingtotable = 0.0 },
        { coords = vector3(1093.04, -3196.36, -39.15), radius = 0.4, DebugPoly = false, headingtotable = 0.0 },
        { coords = vector3(1090.33, -3196.2, -39.15), radius = 0.4, DebugPoly = false, headingtotable = 0.0 },
        { coords = vector3(1095.36, -3195.34, -39.15), radius = 0.4, DebugPoly = false, headingtotable = 180.0 },
        { coords = vector3(1093.09, -3195.33, -39.15), radius = 0.4, DebugPoly = false, headingtotable = 180.0 },
        { coords = vector3(1090.28, -3195.3, -39.15), radius = 0.4, DebugPoly = false, headingtotable = 180.0 },
    },
    --Packaging
    FigurePackage = {
        header = "Emballer le Coke",
        description = "Ingrédients : 1x Figurine vide, 5x Coke pur", -- Réduction de 5 à 4 Coke pur
        coords = vector3(1100.43, -3199.39, -39.26), radius = 0.5,
        teleport = vector3(1100.62 - 7.0, -3198.83 + 2.2, -38.99 - 1.0), heading = 180.0,
        RequiredItems = {
            { item = "coke_pure", count = 5, remove = true }, -- Réduction de 5 à 4 Coke pur
            { item = "coke_figureempty", count = 1, remove = true },
        },
        AddItems = {
            { item = "coke_figure", count = 1 },
        },
        Log = "A transformé 1x Figurine vide, 5x Coke pur en 1x Figurine de Coke"
    },
}


--Mushrooms
Config.MushroomsField = {
    --Field!
    coords = vec3(-582.9, 5834.17, 30.61),
    radius = 18.85,
    name = "MushroomsField",
    debugPoly = false,
    prop = `prop_stoneshroom2`, -- DO NOT CHANGE THIS UNLESS YOU KNOW WHAT YOU ARE DOING
    RequiredItems = {
        { item = "trowel", count = 1, remove = false }, -- Le trowel est toujours nécessaire
    },
    AddItems = {
        { item = "magicmushroom", count = 8 }, -- Augmenter la chance de récolter plusieurs champignons par récolte
    },
    Log = "A récolté 8x Champignon magique",
    Duration = 5000, -- Réduction du temps de récolte à 5 secondes pour un gain de temps
    MultipleItems = true, -- Ajout d'une option pour que les joueurs récoltent plus d'un champignon à la fois (à ajuster selon les besoins)
    MaxItems = 6, -- Limite de 6 champignons par récolte
}


--Peyote
Config.PeyoteField = {
    --Field!
    coords = vec3(318.78, 4319.8, 48.09),
    radius = 38.85,
    name = "PeyoteField",
    debugPoly = false,
    RequiredItems = {
        { item = "trowel", count = 1, remove = false }, -- Le trowel est toujours nécessaire pour récolter
    },
    AddItems = {
        { item = "peyote", count = 7 }, -- Vous pouvez récolter plusieurs Peyotes en une seule interaction
    },
    prop = `prop_peyote_highland_01`, -- Assurez-vous que le modèle du Peyote est bien associé
    Log = "A récolté 7x Peyote",
}

--Selling
Config.PhoneBooths = { -- use hash
    -429560270,
    -1559354806,
    -78626473,
    295857659,
    -2103798695,
    1158960338,
    1511539537,
    1281992692
}

Config.Drugs = {
    weed_package = { -- Item name
        Label = "Weed", -- Item label
        ReqPolice = 2, -- Police count adjusted to moderate enforcement
        ReportChance = 10, -- Dispatch Chance adjusted to make it more realistic for a visible drug
        MinPrice = 200, -- Min price adjusted for more realistic cannabis pricing
        MaxPrice = 500, -- Max price adjusted accordingly
        MinCount = 1, -- Min Count stays the same
        MaxCount = 20, -- Max Count stays the same
        Chance = 50, -- Increased chance to negotiate for better price in an economy where weed is popular
        AttackChance = 7, -- Reduced chance of NPC attack since it’s less dangerous
        animation = {
            model = `bkr_prop_weed_bag_01a`,
            pos = vec3(0.16, 0.04, -0.05),
            rot = vec3(0.0, 26.0, 100.0),
            bone = 57005
        },
    },

    meth_bag = { -- Item name
        Label = "Meth", -- Item label
        ReqPolice = 0, -- Police count
        ReportChance = 25, --Dispatch Chance 0 - 100 %
        MinPrice = 500, -- Min price
        MaxPrice = 1000, -- Max price
        MinCount = 1, -- Min Count
        MaxCount = 25, -- Max Count
        Chance = 40, -- 0 - 40% succes of negotiate for better price
        AttackChance = 5, -- 0 - 50% Chance of NPC atacking player
        animation = {
            model = `prop_meth_bag_01`,
            pos = vec3(0.16, 0.04, -0.05),
            rot = vec3(0.0, 26.0, 100.0),
            bone = 57005
        },
    },
    crack = { -- Item name
        Label = "Crack", -- Item label
        ReqPolice = 1, -- Police count
        ReportChance = 25, --Dispatch Chance 0 - 100 %
        MinPrice = 600, -- Min price
        MaxPrice = 1100, -- Max price
        MinCount = 1, -- Min Count
        MaxCount = 25, -- Max Count
        Chance = 40, -- 0 - 40% succes of negotiate for better price
        AttackChance = 5, -- 0 - 50% Chance of NPC atacking player
        animation = {
            model = `bkr_prop_weed_bag_01a`,
            pos = vec3(0.16, 0.04, -0.05),
            rot = vec3(0.0, 26.0, 100.0),
            bone = 57005
        },
    },
    heroin = { -- Item name
        Label = "Heroin", -- Item label
        ReqPolice = 1, -- Police count
        ReportChance = 25, --Dispatch Chance 0 - 100 %
        MinPrice = 700, -- Min price
        MaxPrice = 1200, -- Max price
        MinCount = 1, -- Min Count
        MaxCount = 30, -- Max Count
        Chance = 40, -- 0 - 40% succes of negotiate for better price
        AttackChance = 5, -- 0 - 50% Chance of NPC atacking player
        animation = {
            model = `bkr_prop_weed_bag_01a`,
            pos = vec3(0.16, 0.04, -0.05),
            rot = vec3(0.0, 26.0, 100.0),
            bone = 57005
        },
    },
    coke_figure = { -- Item name
        Label = "Action Figure with Coke", -- Item label
        ReqPolice = 1, -- Police count
        ReportChance = 25, --Dispatch Chance 0 - 100 %
        MinPrice = 1500, -- Min price
        MaxPrice = 2100, -- Max price
        MinCount = 1, -- Min Count
        MaxCount = 27, -- Max Count
        Chance = 40, -- 0 - 40% succes of negotiate for better price
        AttackChance = 5, -- 0 - 50% Chance of NPC atacking player
        animation = {
            model = `bkr_prop_coke_doll`,
            pos = vec3(0.16, 0.04, -0.05),
            rot = vec3(0.0, 26.0, 100.0),
            bone = 57005
        }
    }
}

--Consumables
Config.Consumables = {
    weed_joint = { -- Item name
        Remove = true, -- Remove item
        Log = "Has smoked joint",
        RemoveItem = "weed_joint", -- Remove Item name
        RemoveItemCount = 1, -- Remove Item Count
        ProgressBar = "Smoking pot",
        duration = 5500,
        effect = "weed",
        animation = {
            emote = {
                enabled = false,
                anim = {
                    dict = 'amb@world_human_aa_smoke@male@idle_a',
                    clip = 'idle_c'
                },
                prop = {
                    model = `prop_cigar_02`,
                    pos = vec3(0.01, 0.0, 0.02),
                    rot = vec3(0.0, 0.0, -170.0),
                    bone = 28422
                },
            },
            scenario = {
                enabled = true,
                anim = {
                    scenario = "WORLD_HUMAN_SMOKING_POT"
                },
            },
            custom = {
                enabled = true,
                anim = "syringe"
            }
        }
    },
    meth_syringe = { -- Item name
        Remove = true, -- Remove item
        Log = "Has used Syringe with Meth",
        RemoveItem = "meth_syringe", -- Remove Item name
        RemoveItemCount = 1, -- Remove Item Count
        ProgressBar = "Shooting Meth",
        duration = 13500,
        effect = "Poison",
        animation = {
            emote = {
                enabled = false,
                anim = {
                    dict = 'amb@world_human_aa_smoke@male@idle_a',
                    clip = 'idle_c'
                },
                prop = {
                    model = `prop_cigar_02`,
                    pos = vec3(0.01, 0.0, 0.02),
                    rot = vec3(0.0, 0.0, -170.0),
                    bone = 28422
                },
            },
            scenario = {
                enabled = false,
                anim = {
                    scenario = "WORLD_HUMAN_SMOKING_POT"
                },
            },
            custom = {
                enabled = true,
                anim = "syringe"
            }
        }
    },
    heroin_syringe = { -- Item name
        Remove = true, -- Remove item
        Log = "Has used Syringe with Heroin",
        RemoveItem = "heroin_syringe", -- Remove Item name
        RemoveItemCount = 1, -- Remove Item Count
        ProgressBar = "Shooting Heroin",
        duration = 13500,
        effect = "Poison",
        animation = {
            emote = {
                enabled = false,
                anim = {
                    dict = 'amb@world_human_aa_smoke@male@idle_a',
                    clip = 'idle_c'
                },
                prop = {
                    model = `prop_cigar_02`,
                    pos = vec3(0.01, 0.0, 0.02),
                    rot = vec3(0.0, 0.0, -170.0),
                    bone = 28422
                },
            },
            scenario = {
                enabled = false,
                anim = {
                    scenario = "WORLD_HUMAN_SMOKING_POT"
                },
            },
            custom = {
                enabled = true,
                anim = "syringe"
            }
        }
    },
    meth_pipe = { -- Item name
        Remove = true, -- Remove item
        Log = "Has smoked Meth pipe",
        RemoveItem = "meth_bag", -- Remove Item name
        RemoveItemCount = 1, -- Remove Item Count
        ProgressBar = "Smoking Meth",
        duration = 17500,
        effect = "Poison",
        animation = {
            emote = {
                enabled = true,
                anim = {
                    dict = 'switch@trevor@trev_smoking_meth',
                    clip = 'trev_smoking_meth_loop',
                },
                prop = {
                    model = `prop_cs_meth_pipe`,
                    pos = vec3(0.12, -0.05, -0.03),
                    rot = vec3(19.0, 10.0, -10.0),
                    bone = 57005
                },
            },
            scenario = {
                enabled = false,
                anim = {
                    scenario = "WORLD_HUMAN_SMOKING_POT"
                },
            },
            custom = {
                enabled = false,
                anim = "syringe"
            }
        }
    },
    xanaxpill = { -- Item name
        Remove = true, -- Remove item
        Log = "Has popped Xanax Pill",
        RemoveItem = "xanaxpill", -- Remove Item name
        RemoveItemCount = 1, -- Remove Item Count
        ProgressBar = "Poppin pill",
        duration = 2500,
        effect = "xanax",
        animation = {
            emote = {
                enabled = true,
                anim = {
                    dict = 'mp_suicide',
                    clip = 'pill',
                },
                prop = {
                    model = nil,
                    pos = nil,
                    rot = nil,
                    bone = nil
                },
            },
            scenario = {
                enabled = false,
                anim = {
                    scenario = "WORLD_HUMAN_SMOKING_POT"
                },
            },
            custom = {
                enabled = false,
                anim = "syringe"
            }
        }
    },
    lsd = { -- Item name
        Remove = true, -- Remove item
        Log = "Has swalowed LSD",
        RemoveItem = "lsd", -- Remove Item name
        RemoveItemCount = 1, -- Remove Item Count
        ProgressBar = "Taking LSD",
        duration = 2500,
        effect = "trip",
        animation = {
            emote = {
                enabled = true,
                anim = {
                    dict = 'mp_suicide',
                    clip = 'pill',
                },
                prop = {
                    model = nil,
                    pos = nil,
                    rot = nil,
                    bone = nil
                },
            },
            scenario = {
                enabled = false,
                anim = {
                    scenario = "WORLD_HUMAN_SMOKING_POT"
                },
            },
            custom = {
                enabled = false,
                anim = "syringe"
            }
        }
    },
    ecstasy = { -- Item name
        Remove = true, -- Remove item
        Log = "Has swalowed Ecstasy",
        RemoveItem = "ecstasy", -- Remove Item name
        RemoveItemCount = 1, -- Remove Item Count
        ProgressBar = "Taking Ecstasy",
        duration = 2500,
        effect = "ecstasy",
        animation = {
            emote = {
                enabled = true,
                anim = {
                    dict = 'mp_suicide',
                    clip = 'pill',
                },
                prop = {
                    model = nil,
                    pos = nil,
                    rot = nil,
                    bone = nil
                },
            },
            scenario = {
                enabled = false,
                anim = {
                    scenario = "WORLD_HUMAN_SMOKING_POT"
                },
            },
            custom = {
                enabled = false,
                anim = "syringe"
            }
        }
    },
    coke_pure = { -- Item name
        Remove = true, -- Remove item
        Log = "Has snorted Pure Coke",
        RemoveItem = "coke_pure", -- Remove Item name
        RemoveItemCount = 1, -- Remove Item Count
        ProgressBar = "Snorting Coke",
        duration = 4000,
        effect = "coke",
        animation = {
            emote = {
                enabled = true,
                anim = {
                    dict = 'anim@amb@nightclub@peds@',
                    clip = 'missfbi3_party_snort_coke_b_male3',
                },
                prop = {
                    model = nil,
                    pos = nil,
                    rot = nil,
                    bone = nil
                },
            },
            scenario = {
                enabled = false,
                anim = {
                    scenario = "WORLD_HUMAN_SMOKING_POT"
                },
            },
            custom = {
                enabled = false,
                anim = "syringe"
            }
        }
    },
    crack_pipe = { -- Item name
        Remove = true, -- Remove item
        Log = "Has smoked Crack Pipe",
        RemoveItem = "crack", -- Remove Item name
        RemoveItemCount = 1, -- Remove Item Count
        ProgressBar = "Smoking Crack",
        duration = 17500,
        effect = "alien",
        animation = {
            emote = {
                enabled = true,
                anim = {
                    dict = 'switch@trevor@trev_smoking_meth',
                    clip = 'trev_smoking_meth_loop',
                },
                prop = {
                    model = `prop_cs_crackpipe`,
                    pos = vec3(0.13, -0.09, -0.05),
                    rot = vec3(29.0, 28.0, -1.0),
                    bone = 57005
                },
            },
            scenario = {
                enabled = false,
                anim = {
                    scenario = "WORLD_HUMAN_SMOKING_POT"
                },
            },
            custom = {
                enabled = false,
                anim = "syringe"
            }
        }
    },
    magicmushroom = { -- Item name
        Remove = true, -- Remove item
        Log = "Has eaten Magic Mushroom",
        RemoveItem = "magicmushroom", -- Remove Item name
        RemoveItemCount = 1, -- Remove Item Count
        ProgressBar = "Eating Magic Mushroom",
        duration = 17500,
        effect = "trip",
        animation = {
            emote = {
                enabled = true,
                anim = {
                    dict = 'amb@world_human_drinking@coffee@male@idle_a',
                    clip = 'idle_c',
                },
                prop = {
                    model = `ng_proc_leaves08`,
                    pos = vec3(0.14, 0.01, -0.03),
                    rot = vec3(0.0, 0.0, 50.0),
                    bone = 57005
                },
            },
            scenario = {
                enabled = false,
                anim = {
                    scenario = "WORLD_HUMAN_SMOKING_POT"
                },
            },
            custom = {
                enabled = false,
                anim = "syringe"
            }
        }
    },
    peyote = { -- Item name
        Remove = true, -- Remove item
        Log = "Has eaten Peyote",
        RemoveItem = "peyote", -- Remove Item name
        RemoveItemCount = 1, -- Remove Item Count
        ProgressBar = "Eating Peyote",
        duration = 1500,
        effect = "trip",
        animation = {
            emote = {
                enabled = true,
                anim = {
                    dict = 'amb@world_human_drinking@coffee@male@idle_a',
                    clip = 'idle_c',
                },
                prop = {
                    model = `prop_peyote_highland_01`,
                    pos = vec3(0.15, 0.01, -0.09),
                    rot = vec3(-90.0, -9.0, 0.0),
                    bone = 57005
                },
            },
            scenario = {
                enabled = false,
                anim = {
                    scenario = "WORLD_HUMAN_SMOKING_POT"
                },
            },
            custom = {
                enabled = false,
                anim = "syringe"
            }
        }
    },
    weed_blunt = { -- Item name
        Remove = true, -- Remove item
        Log = "Has smoked Blunt",
        RemoveItem = "weed_blunt", -- Remove Item name
        RemoveItemCount = 1, -- Remove Item Count
        ProgressBar = "Smoking blunt",
        duration = 17500,
        effect = "weed",
        animation = {
            emote = {
                enabled = true,
                anim = {
                    dict = 'amb@world_human_aa_smoke@male@idle_a',
                    clip = 'idle_c'
                },
                prop = {
                    model = `prop_cigar_02`,
                    pos = vec3(0.01, 0.0, 0.02),
                    rot = vec3(0.0, 0.0, -170.0),
                    bone = 28422
                },
            },
            scenario = {
                enabled = false,
                anim = {
                    scenario = "WORLD_HUMAN_SMOKING_POT"
                },
            },
            custom = {
                enabled = true,
                anim = "syringe"
            }
        }
    }
}