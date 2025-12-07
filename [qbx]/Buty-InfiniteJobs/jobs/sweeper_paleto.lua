return {
    JobInfo = {
        Name = "sweeper paleto", 
        JobID = {"sweeper_paleto", 0},
        Img = "img/sweeperpaleto.jpg",
        ExperienceRequired = 500,
        info = "Help needed to clear paleto streets, sweep marked areas and we'll pay you!",

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
            CreateGroup = vec4(73.1217, 6472.7310, 30.2207, 199.2165),

            CreateGroupPed_model = "s_m_m_gentransport",

            Workclothes = vec4(47.7451, 6489.1848, 30.4253, 138.7065), 

            Vehicle = {
                coord = vec4(54.7611, 6482.3762, 30.4300, 137.6622),
                spawnvehicle = vec4(60.1444, 6481.2344, 30.9602, 224.0058),
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
                        coord = vec4(-256.3353, 6400.3584, 30.9668, 114.6163),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },   
                    {
                        coord = vec4(-239.3870, 6391.5972, 31.1150, 97.9328),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },   
                    {
                        coord = vec4(-249.8119, 6386.4185, 30.9356, 90.6275),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(-267.4733, 6395.4370, 30.8053, 282.6702),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(-282.1861, 6388.1079, 30.6142, 20.4075),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(-265.2153, 6378.8540, 30.7090, 228.6738),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(-279.5314, 6370.0259, 30.6832, 8.9038),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(-285.4774, 6383.5420, 30.5286, 99.8560),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(-301.6660, 6348.1274, 30.8960, 217.6742),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(-181.3824, 6448.7202, 31.0061, 303.1207),
                        propname = "prop_rub_litter_01",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },    
                    {
                        coord = vec4(-190.7639, 6467.2256, 30.5776, 358.0200),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },   
                    {
                        coord = vec4(-157.0922, 6476.0527, 30.3863, 72.4776),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                }, 
                
                [2] = {                        
                    {
                        coord = vec4(-404.8606, 6198.1997, 31.5028, 14.2569),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },   
                    {
                        coord = vec4(-398.4345, 6171.6914, 31.5405, 228.0905),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },   
                    {
                        coord = vec4(-380.1279, 6172.5664, 31.4107, 277.0851),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(-370.0469, 6152.4600, 31.3842, 161.1634),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(-395.7418, 6126.8945, 31.3530, 182.2545),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(-417.8488, 6128.4160, 31.1713, 247.0013),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(-401.7887, 6107.1387, 31.3595, 83.0453),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(-392.1643, 6100.0073, 31.4437, 304.1655),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(-385.2370, 6083.2979, 31.4389, 200.5802),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(-388.6697, 6066.8608, 31.5001, 144.8896),
                        propname = "prop_rub_litter_01",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },    
                    {
                        coord = vec4(-398.5816, 6036.4971, 31.5647, 188.0318),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },   
                    {
                        coord = vec4(-406.3578, 6001.0591, 31.8445, 188.7873),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                },

                [3] = {                        
                    {
                        coord = vec4(1512.6281, 6458.9307, 22.6522, 244.0412),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },   
                    {
                        coord = vec4(1525.0214, 6413.5679, 23.5276, 228.0255),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },   
                    {
                        coord = vec4(1568.8317, 6396.0220, 24.9943, 255.3671),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(1589.6599, 6430.0200, 25.1261, 261.6590),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(1565.2941, 6446.2251, 24.1403, 125.4828),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(1624.7102, 6425.3789, 27.2213, 252.4319),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(1653.6439, 6404.0894, 29.5138, 258.8434),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(1689.0514, 6406.5576, 31.7182, 150.5020),
                        propname = "prop_rub_litter_03",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(1729.6857, 6387.7651, 34.4946, 252.6816),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },     
                    {
                        coord = vec4(1741.9128, 6400.7271, 35.3749, 310.8845),
                        propname = "prop_rub_litter_01",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },    
                    {
                        coord = vec4(1701.6171, 6345.6304, 34.2744, 72.8752),
                        propname = "prop_big_shit_02",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },   
                    {
                        coord = vec4(1773.0892, 6349.5942, 36.6843, 264.6882),
                        propname = "prop_rub_litter_07",
                        GetItem = { use = false, name = "sweeper", quantity = 1},
                    },
                },
            },

            Finish = {
                model = "a_m_m_indian_01", 
                coord = vec4(50.5822, 6486.5732, 30.4253, 314.6939), 
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