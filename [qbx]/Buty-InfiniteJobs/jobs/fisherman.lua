return {
    JobInfo = {
        Name = "fisherman", 
        JobID = {"fisherman", 0},
        Img = "img/fisherman.jpg",
        ExperienceRequired = 500,
        info = "Help needed to clean the garden, cut the grass and we will pay you!",

        Tutorial = {
            [1] = "First you need to know that your tool is in the trunk of the car, go over and grab it.",
            [2] = "Go to the points marked on the GPS and start fishing!",
            [3] = "When you're done, go here to get paid.",
        } 
    },

    JobConfig = {
        Tool = {
            prop = "prop_fishing_rod_01", 
            objcoord = {18905,0.13, 0.05, 0.0, 270.0, 100.0, -30.0}, 
            objcoord2 = {18905,0.10, 0.05, 0.0, 250.0, 20.0, -30.0},
            animation_action = {"amb@world_human_stand_fishing@idle_a", "idle_c",3000},
            animation_take = nil,
            particles = "",
        },

        type = 1,

        deleteprop = false,

        {
            CreateGroup = vec4(180.4742, 2793.1926, 44.6552, 269.0002),

            CreateGroupPed_model = "cs_omega",

            Workclothes = vec4(182.6344, 2800.1389, 44.6552, 54.0660),

            Vehicle = {
                coord = vec4(194.9359, 2804.9250, 44.6552, 282.7847),
                spawnvehicle = vec4(199.7814, 2798.6389, 45.2341, 96.5394),
                doors = {5},
                model = "bison",
                coord_prop_tool = {
                    [1] = {-0.25, -1.03, 0.45, 76.0, 0.0, 0.0},
                    [2] = {-0.08, -1.03, 0.45, 76.0, 0.0, 0.0},
                    [3] = {0.08, -1.03, 0.45, 76.0, 0.0, 0.0},
                    [4] = {0.25, -1.03, 0.45, 76.0, 0.0, 0.0},
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
                        coord = vec4(3867.0776, 4465.0098, 2.7252, 273.4271),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(3866.9851, 4462.3535, 2.7256, 179.3812),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(3864.8960, 4462.3140, 2.7239, 85.8719),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(3863.3274, 4465.0054, 2.7167, 23.9205),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(3861.5544, 4462.2437, 2.7240, 188.3942),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(3859.0806, 4458.6602, 1.8349, 208.7337),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                     {
                        coord = vec4(3856.6121, 4458.3208, 1.8400, 209.1111),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(3852.7444, 4458.3389, 1.8498, 107.1398),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(3850.9446, 4458.6133, 1.8498, 99.2499),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(3845.1365, 4464.9980, 2.6702, 15.8011),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                },  
                [2] = {
                    {
                        coord = vec4(1298.7756, 4215.6782, 33.9087, 182.3919),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(1302.3387, 4218.9424, 33.9086, 257.2803),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(1297.2294, 4219.7407, 33.9086, 81.2477),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(1297.8109, 4223.9780, 33.9086, 353.3794),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(1299.3102, 4231.0542, 33.9087, 351.2968),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(1307.8777, 4230.0283, 33.9155, 251.3901),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                     {
                        coord = vec4(1308.7615, 4232.8774, 33.9155, 326.5857),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(1314.7877, 4228.7402, 33.9155, 226.3750),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(1316.7323, 4231.3291, 33.9155, 325.8569),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(1321.5753, 4227.3667, 33.9155, 218.8990),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                },    
                [3] = {
                    {
                        coord = vec4(715.0892, 4134.0103, 35.7792, 256.5486),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(713.2277, 4130.2910, 35.7792, 115.3655),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(713.2022, 4122.6055, 35.7792, 114.3682),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(715.1296, 4120.3501, 35.7792, 271.3537),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(713.2084, 4115.6494, 35.7792, 102.7685),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(715.0787, 4112.9653, 35.7792, 284.7225),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                     {
                        coord = vec4(712.9769, 4107.1636, 35.7687, 5.1417),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(715.1179, 4109.3350, 35.7792, 281.8810),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(714.9489, 4093.6345, 34.7278, 209.2926),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                    {
                        coord = vec4(711.9592, 4094.8005, 34.7278, 85.7236),
                        propname = "prop_cs_diaphram",
                        GetItem = { use = false, name = "fisherman", quantity = 1},
                    },
                },  
            },

            Finish = {
                model = "s_m_m_cntrybar_01", 
                coord = vec4(173.2311, 2778.2515, 45.0773, 279.7583), 
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
            tshirt_1 = 38,  tshirt_2 = 1,
            torso_1 = 189,   torso_2 = 2,
            decals_1 = 0,   decals_2 = 0,
            arms = 0,
            pants_1 = 59,   pants_2 = 7,
            shoes_1 = 72,   shoes_2 = 8,
            chain_1 = 0,    chain_2 = 0,
            helmet_1 = 94,  helmet_2 = 2,
            ears_1 = -1,     ears_2 = 0,
            bproof_1 = 0,  bproof_2 = 0,
        },
        female = {
            tshirt_1 = 14,  tshirt_2 = 0,
            torso_1 = 190,   torso_2 = 2,
            decals_1 = 0,   decals_2 = 0,
            arms = 0,
            pants_1 = 61,   pants_2 = 7,
            shoes_1 = 75,   shoes_2 = 8,
            chain_1 = -1,    chain_2 = 0,
            helmet_1 = 93,  helmet_2 = 2,
            bproof_1 = 0,  bproof_2 = 0,
        }
    }
}