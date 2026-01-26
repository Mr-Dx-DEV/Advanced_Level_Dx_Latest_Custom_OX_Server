return {
    JobInfo = {
        Name = "sweeper city", 
        JobID = {"sweeper_city", 0},
        Img = "img/sweepercity.jpg",
        ExperienceRequired = 500,
        info = "Help needed to clean the city streets, sweep the marked areas and we will pay you!",

        Tutorial = {
            [1] = "First you must know that your tool is in the trunk, approach and take it.",
            [2] = "Go to the areas marked on the map and sweep them clean.",
            [3] = "When you're done, go here to get paid.",
        }

    },

    JobConfig = {

        Tool = {
            prop = "prop_tool_broom", 
            objcoord = {28422,0.02, 0.08, 0.20, 0.0, 0.0, 0.0}, 
            objcoord2 = {28422,0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
            animation_action = {"amb@world_human_janitor@male@idle_a","idle_a",8000},
            animation_take = {"missfbi4prepp1","idle"},
            particles = ""
        },

        type = 1,

        deleteprop = true,

        {
            CreateGroup = vec4(-570.9614, -1775.8206, 22.1804, 153.3054),

            CreateGroupPed_model = "s_m_m_gentransport",

            Workclothes = vec4(-575.1273, -1794.0156, 21.7322, 237.1176),

            Vehicle = {
                coord = vec4(-592.8213, -1789.2881, 21.8871, 124.2650),
                spawnvehicle = vec4(-586.9118, -1791.0530, 22.8388, 134.3930),
                doors = {5},
                model = "bison",
                coord_prop_tool = {
                    [1] = {-0.78, -2.2, 0.94, 0.90, -210.0, 90.0},
                    [2] = {-0.78, -1.7, 0.94, 0.90, -210.0, 90.0},
                    [3] = {0.78, -1.7, 0.97, 0.90, -160.0, 90.0},
                    [4] = {0.78, -2.2, 0.97, 0.90, -160.0, 90.0},
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
                        coord = vec4(482.2822, -1536.7952, 29.2701, 335.3844),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },   
                    {
                        coord = vec4(494.2733, -1542.2352, 29.2828, 33.0962),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },   
                    {
                        coord = vec4(470.1936, -1566.0829, 29.2826, 349.9083),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(444.4032, -1577.4465, 29.2826, 88.9332),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(452.7091, -1548.8308, 29.4329, 359.2648),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(460.9600, -1543.1838, 29.2826, 2.5179),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(498.6881, -1581.9633, 29.6016, 158.3911),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(512.2963, -1611.8629, 29.3358, 149.2663),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(499.2963, -1627.9193, 29.3735, 175.8856),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(497.4041, -1637.0237, 29.2306, 297.9328),
                        propname = "prop_rub_litter_01",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },    
                    {
                        coord = vec4(494.5436, -1683.7089, 29.2698, 179.8349),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },   
                    {
                        coord = vec4(501.2144, -1710.5902, 29.3247, 178.8073),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                }, 
                
                [2] = {
                    {
                        coord = vec4(314.3246, -1098.8964, 29.4011, 255.4307),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(312.1354, -1078.2047, 29.4058, 53.3719),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(325.1300, -1071.7865, 29.4734, 139.7340),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(305.5328, -1032.9426, 29.2094, 127.5648),
                        propname = "prop_rub_litter_01",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(263.3745, -1068.6906, 29.4188, 161.9892),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(286.0663, -1064.7683, 29.4187, 340.5598),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(303.8794, -1035.6466, 29.0532, 343.2774),
                        propname = "prop_rub_litter_01",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(328.3827, -1021.7993, 29.2783, 29.5842),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(345.1715, -1033.5098, 29.3307, 143.3533),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(386.2063, -1024.5127, 29.3981, 343.7742),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(412.9038, -996.4557, 29.3897, 191.7900),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(410.1230, -971.5308, 29.4240, 47.0358),
                        propname = "prop_rub_litter_01",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                },

                [3] = {
                    {
                        coord = vec4(-995.7831, 384.6340, 73.0584, 222.4424),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(-973.4306, 400.1141, 75.5372, 225.6076),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(-960.4079, 421.0269, 78.2861, 356.0251),
                        propname = "prop_rub_litter_01",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(-896.2921, 419.6543, 85.6266, 251.2909),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(-874.2616, 413.7719, 87.2255, 273.8853),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(-844.4418, 387.8695, 87.4202, 277.1676),
                        propname = "prop_rub_litter_01",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(-847.1588, 346.1046, 86.5547, 181.4067),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(-847.1890, 292.0798, 86.4578, 75.4914),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(-840.0163, 273.7943, 84.5848, 127.7167),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(-858.4726, 250.1052, 74.7624, 289.8376),
                        propname = "prop_rub_litter_01",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(-871.4509, 259.7094, 75.8838, 273.0835),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                    
                    {
                        coord = vec4(-896.2963, 257.1815, 71.2144, 332.3036),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                }
            },

            Finish = {
                model = "a_m_m_indian_01",
                coord = vec4(-592.4219, -1765.3323, 22.1803, 232.7668),
                Quantity = 1000, 
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
            tshirt_1 = 15, tshirt_2 = 0,
            torso_1 = 314, torso_2 = 1,
            decals_1 = 0, decals_2 = 0,
            arms = 64,
            pants_1 = 120, pants_2 = 1,
            shoes_1 = 51, shoes_2 = 5,
            chain_1 = 0, chain_2 = 0,
            helmet_1 = 142, helmet_2 = 15,
            ears_1 = -1, ears_2 = 0,
            bproof_1 = 0, bproof_2 = 0,
        },
        female = {
            tshirt_1 = 14,  tshirt_2 = 0,
            torso_1 = 326,   torso_2 = 1,
            decals_1 = 0,   decals_2 = 0,
            arms = 75,
            pants_1 = 126,   pants_2 = 1,
            shoes_1 = 52,   shoes_2 = 5,
            chain_1 = -1,    chain_2 = 0,
            helmet_1 = 141,  helmet_2 = 15,
            bproof_1 = 0,  bproof_2 = 0,
        }
    }
}