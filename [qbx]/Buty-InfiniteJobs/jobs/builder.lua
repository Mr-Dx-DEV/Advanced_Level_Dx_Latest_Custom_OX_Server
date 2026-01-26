return {
    JobInfo = {
        Name = "builder", 
        JobID = {"builder", 0},
        Img = "img/builder.jpg",
        ExperienceRequired = 500,
        info = "Help needed to clear debris, break the rubble and we will pay you!",

        Tutorial = {
            [1] = "First you must know that your tool is in the trunk, approach and take it.",
            [2] = "Go to the debris marked on the map and break it to clear the area.",
            [3] = "When you're done, go here to get paid.",
        }            
    },

    JobConfig = {

        Tool = {
            prop = "prop_tool_sledgeham", 
            objcoord = {57005,0.13, -0.06, -0.08, -50.0, -10.0, 0.0}, 
            objcoord2 = {57005,0.05, -0.14, -0.04, -77.0, 10.0, -16.0},
            animation_action = {"melee@large_wpn@streamed_core", "ground_attack_-90",3000},
            animation_take = nil,
            particles = "ent_amb_stoner_landing",
        },

        type = 1,

        deleteprop = true,

        {
            CreateGroup = vec4(287.6853, 2843.9131, 43.7041, 103.5782),

            CreateGroupPed_model = "s_m_m_gentransport",

            Workclothes = vec4(274.9899, 2833.8276, 42.4350, 121.9453),

            Vehicle = {
                coord = vec4(271.3973, 2841.8230, 42.5248, 126.6675),
                spawnvehicle = vec4(278.7767, 2840.9663, 43.6032, 39.0601),
                doors = {2,3},
                model = "burrito",
                coord_prop_tool = {
                    [1] = { -0.6, -0.26, -0.1, 0.0, 0.0, 0.0},
                    [2] = {-0.2, -0.26, -0.1, 0.0, 0.0, 0.0},
                    [3] = {0.3, -0.26, -0.1, 0.0, 0.0, 0.0},
                    [4] = {0.1, -0.26, -0.1, 0.0, 0.0, 0.0},
                }, 
            },

            skill = {
                use = true,
                difficultyLevels = { 'easy', 'easy', {areaSize = 60, speedMultiplier = 1.1}, 'easy' },
                controls = {'w', 'a', 's', 'd'},
                particles = "",
            }, 

            Route = {
                
                [1] = {   
                    
                    {
                        coord = vec4(1391.8737, -770.6639, 66.5736, 206.0694),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1387.9877, -768.0642, 66.4225, 153.2973),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1400.2695, -771.9638, 66.4457, 316.0774),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1378.3201, -775.4029, 67.2598, 277.9289),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1346.6077, -757.6568, 66.8321, 50.1938),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1322.4427, -749.8093, 65.5533, 192.2993),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1299.9766, -739.0598, 64.6914, 97.9586),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1334.3262, -710.2812, 66.0226, 9.8139),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1381.5667, -716.8509, 66.7037, 336.8094),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1394.7711, -727.2147, 66.8482, 247.2716),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1395.1368, -770.2751, 66.5351, 28.6468),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1388.0621, -776.1995, 67.2008, 85.3849),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                },  
                [2] = {
                    {
                        coord = vec4(1150.7467, 2080.6348, 56.0206, 174.2820),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1125.1262, 2096.3408, 55.1526, 108.6394),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1133.0973, 2073.4146, 55.5591, 100.4273),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1144.8624, 2111.3188, 55.7950, 190.2439),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1131.8691, 2126.2139, 55.6310, 320.0310),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1159.2792, 2137.4856, 54.5607, 278.7899),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1065.1110, 2117.9504, 53.1775, 172.7505),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1077.9353, 2139.8918, 53.0864, 288.2689),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1080.4930, 2127.4214, 53.5064, 304.2961),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1123.4109, 2116.3032, 55.4550, 296.0431),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1145.8679, 2117.1792, 55.7950, 28.9570),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(1164.2178, 2133.1108, 54.9508, 289.4349),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                },
                [3] = {
                    {
                        coord = vec4(91.0027, -392.1507, 41.2653, 203.2798),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(102.8367, -369.4041, 42.3798, 283.9532),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(104.2208, -375.6540, 42.1912, 332.6984),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(60.5992, -395.7755, 39.9210, 130.4164),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(84.7375, -463.8255, 38.0029, 115.8338),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(92.0265, -413.3936, 37.5526, 25.5271),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(69.2543, -364.8543, 42.5218, 102.0710),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(64.7741, -352.8059, 42.4554, 17.1344),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(57.3120, -346.1539, 42.8592, 237.6314),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(102.8443, -364.5626, 42.0533, 213.6819),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(102.2484, -373.1782, 42.2092, 261.7281),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                    
                    {
                        coord = vec4(134.0267, -347.5901, 43.6006, 14.9322),                                                   
                        propname = "prop_ld_rubble_02",               
                        GetItem = { use = false, name = "builder", quantity = 1},                                                 
                    },
                },
            },

            Finish = {
                model = "a_m_m_indian_01", 
                coord = vec4(304.7230, 2821.4929, 42.4369, 7.2370), 
                Quantity = 800, 
                paymentmethod = {
                    option = "cash", -- cash/bank/item
                    item_name = "" -- if you use <option = "item"> then put here the name of the item you will pay with.
                },
                exp = 50, 
                increase_per_level = 100
            },
        },

    },

    Clothes = {
        male = {
            tshirt_1 = 15,  tshirt_2 = 0,
            torso_1 = 238,   torso_2 = 0,
            decals_1 = 0,   decals_2 = 0,
            arms = 43,
            pants_1 = 47,   pants_2 = 0,
            shoes_1 = 35,   shoes_2 = 0,
            chain_1 = 0,    chain_2 = 0,
            helmet_1 = 145,  helmet_2 = 0,
            ears_1 = -1,     ears_2 = 0,
            bproof_1 = 0,  bproof_2 = 0,
        },
        female = {
            tshirt_1 = 14,  tshirt_2 = 0,
            torso_1 = 247,   torso_2 = 0,
            decals_1 = 0,   decals_2 = 0,
            arms = 55,
            pants_1 = 49,   pants_2 = 0,
            shoes_1 = 36,   shoes_2 = 0,
            chain_1 = -1,    chain_2 = 0,
            helmet_1 = 144,  helmet_2 = 0,
            bproof_1 = 0,  bproof_2 = 0,
        }
    }
}