return {
    JobInfo = {
        Name = "cleaner", 
        JobID = {"cleaner", 0},
        Img = "img/cleaner.jpg",
        ExperienceRequired = 500,
        info = "Help needed to clean crystals, go clean them and we will pay you!",

        Tutorial = {
            [1] = "First you must know that your tool is in the trunk, approach and take it.",
            [2] = "Go to the crystals marked on the map and clean them.",
            [3] = "When you're done, go and get paid here.",
        }
    },

    JobConfig = {

        Tool = {
            prop = "prop_sponge_01", 
            objcoord = {28422,0.1,0.0,-0.03,90.0,0.0,0.0}, 
            objcoord2 = {28422,0.01,0.05,-0.02,130.0,0.0,0.0},
            animation_action = {"amb@world_human_maid_clean@","base",3000}, 
            animation_take = nil,
            particles = ""
        },

        type = 1,

        deleteprop = false,

        {
            CreateGroup = vec4(-229.5865, -1377.3341, 30.2582, 209.6366),

            CreateGroupPed_model = "s_m_m_gentransport",

            Workclothes = vec4(-241.5544, -1386.5372, 30.2562, 110.5348),

            Vehicle = {
                coord = vec4(-225.7859, -1390.5671, 30.3099, 201.9989),
                spawnvehicle = vec4(-229.1564, -1393.0786, 30.7967, 100.6411),
                doors = {2,3},
                model = "burrito",
                coord_prop_tool = {
                    [1] = {-0.58, -1.2, 0.54, 0.90, -90.0, 90.0},
                    [2] = {-0.58, -1.05, 0.54, 0.90, -90.0, 90.0},
                    [3] = {0.55, -1.2, 0.59, 0.90, -90.0, 90.0},
                    [4] = {0.55, -1.05, 0.59, 0.90, -90.0, 90.0},
                }, 
            },

            skill = {
                use = true,
                difficultyLevels = { 'easy', 'easy', {areaSize = 60, speedMultiplier = 1.1}, 'easy' },
                controls = {'w', 'a', 's', 'd'},
                particles = "water_splash_obj_in",
            },

            Route = {
                
                [1] = {
                    
                    {
                        coord = vec4(-919.1004, -1098.0189, 2.1503, 119.1438),                                                   
                        propname = "prop_cs_diaphram",                    
                        GetItem = { use = false, name = "cleaner", quantity = 1},                                                 
                    },

                    {
                        coord = vec4(-917.7578, -1100.2411, 2.1503, 140.0542),                                                   
                        propname = "prop_cs_diaphram",                    
                        GetItem = { use = false, name = "marijuana", quantity = 1},                                 
                    },

                    {
                        coord = vec4(-916.5364, -1102.3422, 2.1503, 139.6432),                                                   
                        propname = "prop_cs_diaphram",                    
                        GetItem = { use = false, name = "marijuana", quantity = 1},                                  
                    },

                    {
                        coord = vec4(-917.3400, -1105.1879, 2.1503, 28.6567),                                                   
                        propname = "prop_cs_diaphram",                    
                        GetItem = { use = false, name = "marijuana", quantity = 1},                          
                    },

                    {
                        coord = vec4(-919.3893, -1106.3612, 2.1503, 74.9535),                                                   
                        propname = "prop_cs_diaphram",                    
                        GetItem = { use = false, name = "marijuana", quantity = 1},                             
                    },

                    {
                        coord = vec4(-921.7037, -1107.6990, 2.1503, 25.0796),                                                   
                        propname = "prop_cs_diaphram",                    
                        GetItem = { use = false, name = "marijuana", quantity = 1},                            
                    },
                },            
            },

            Finish = {
                model = "a_m_m_indian_01", 
                coord = vec4(-239.1558, -1397.8762, 30.2798, 277.2180), 
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
            tshirt_1 = 15,  tshirt_2 = 0,
            torso_1 = 16,   torso_2 = 0,
            decals_1 = 0,   decals_2 = 0,
            arms = 0,
            pants_1 = 89,   pants_2 = 24,
            shoes_1 = 7,   shoes_2 = 1,
            chain_1 = 0,    chain_2 = 0,
            helmet_1 = -1,  helmet_2 = 0,
            ears_1 = -1,     ears_2 = 0,
            bproof_1 = 0,  bproof_2 = 0,
        },
        female = {
            tshirt_1 = 14,  tshirt_2 = 0,
            torso_1 = 0,   torso_2 = 0,
            decals_1 = 0,   decals_2 = 0,
            arms = 0,
            pants_1 = 92,   pants_2 = 24,
            shoes_1 = 10,   shoes_2 = 1,
            chain_1 = -1,    chain_2 = 0,
            helmet_1 = -1,  helmet_2 = 0,
            bproof_1 = 0,  bproof_2 = 0,
        }
    }
}