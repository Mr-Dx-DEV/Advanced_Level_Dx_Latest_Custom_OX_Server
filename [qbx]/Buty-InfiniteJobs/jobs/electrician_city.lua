return {
    JobInfo = {
        Name = "electrician city", 
        JobID = {"electrician_city", 0},
        Img = "img/electriciancity.jpg",
        ExperienceRequired = 500,
        info = "Help is needed to repair some light generators, go fix them and we will pay you!",

        Tutorial = {
            [1] = "First you must know that your tool is in the trunk, approach and take it.",
            [2] = "Go to the generators marked on the map and fix them.",
            [3] = "When you're done, go and get paid here.",
        }
    },

    JobConfig = {

        Tool = {
            prop = "prop_tool_pliers", 
            objcoord = {28422, 0.091136825710009, 0.054318583155274, 0.0032968319626461, -43.569789917749, 31.69418618409, 10.406077055803}, 
            objcoord2 = {28422,0.04, 0, -0.17, -124.28, 37.79, -86.35},
            animation_action = {"missmechanic","work2_base",3000},  
            animation_take = nil,
            particles = ""
        },

        type = 1,

        deleteprop = false,

        {
            CreateGroup = vec4(722.2847, -2016.5502, 28.2920, 253.5371),

            CreateGroupPed_model = "s_m_m_gentransport",

            Workclothes = vec4(716.7802, -2024.9355, 28.2921, 79.8461),

            Vehicle = {
                coord = vec4(721.1218, -2032.1703, 28.2845, 79.8461),
                spawnvehicle = vec4(725.3438, -2032.2206, 28.8218, 355.4323),
                model = "bison",
                doors = {5},
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
                particles = "ent_dst_electrical",
            },

            Route = {
                
                [1] = {   
                    
                    {
                        coord = vec4(-1251.7648, -1287.1748, 3.9193, 287.6763),                                  
                        propname = "prop_elecbox_13",                 
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(-1270.0726, -1238.0190, 4.3103, 287.0845),                                             
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(-1308.5298, -1157.7058, 5.2278, 89.0460),                                              
                        propname = "prop_elecbox_04a",                    
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(-1234.7743, -1155.5703, 7.6916, 25.5990),                                          
                        propname = "prop_elecbox_05a",                    
                        GetItem = {use = false, name = "electrician", quantity = 1}, 
                    },
                    {
                        coord = vec4(-1291.0228, -1221.5687, 4.6446, 108.1277),                                    
                        propname = "prop_elecbox_04a",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(-1262.1741, -1303.3656, 3.9918, 107.0947),                                       
                        propname = "prop_elecbox_13",                    
                        GetItem = {use = false, name = "electrician", quantity = 1},                       
                    },
                    {
                        coord = vec4(-1245.8121, -1345.4225, 4.0176, 119.4012),                                        
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},                                                
                    },
                    {
                        coord = vec4(-1254.2446, -1396.5886, 4.1915, 203.8068),                                            
                        propname = "prop_elecbox_13",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},                                                 
                    },
                    {
                        coord = vec4(-1292.9800, -1329.2311, 4.4118, 198.4224),                                        
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},                          
                    },
                    {
                        coord = vec4(-1275.5527, -1341.7306, 4.2609, 112.8559),                                              
                        propname = "prop_elecbox_13",                    
                        GetItem = {use = false, name = "electrician", quantity = 1}, 
                    },
                },

                [2] = {
                    {
                        coord = vec4(863.0449, -129.2256, 79.3026, 237.3938),                                           
                        propname = "prop_elecbox_13",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },                    
                    {
                        coord = vec4(805.7230, -175.3827, 72.7340, 319.2452),                                              
                        propname = "prop_elecbox_05a",                  
                        GetItem = {use = false, name = "electrician", quantity = 1},                           
                    },                                     
                    {
                        coord = vec4(769.1102, -54.6637, 80.6994, 148.8823),                                          
                        propname = "prop_elecbox_13",                  
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },                   
                    {
                        coord = vec4(829.4072, -54.7890, 80.5889, 308.6741),                                           
                        propname = "prop_elecbox_05a",                  
                        GetItem = {use = false, name = "electrician", quantity = 1},        
                    },                    
                    {
                        coord = vec4(846.6069, -103.2500, 79.9858, 147.0521),                                           
                        propname = "prop_elecbox_04a",                  
                        GetItem = {use = false, name = "electrician", quantity = 1},          
                    },                
                    {
                        coord = vec4(806.4666, -78.5610, 80.5962, 147.9681),                                           
                        propname = "prop_elecbox_13",                  
                        GetItem = {use = false, name = "electrician", quantity = 1},           
                    },
                    {
                        coord = vec4(855.3047, 9.9910, 79.4716, 225.6264),                                  
                        propname = "prop_elecbox_05a",                 
                        GetItem = {use = false, name = "electrician", quantity = 1},           
                    },
                    {
                        coord = vec4(889.0480, -97.6419, 79.3760, 320.1638),                                  
                        propname = "prop_elecbox_04a",                  
                        GetItem = {use = false, name = "electrician", quantity = 1},          
                    },
                },
                
                [3] = {
                    {
                        coord = vec4(-1148.8872, -510.6000, 33.6180, 72.6306),                                                  
                        propname = "prop_elecbox_13",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},                                       
                    },
                    {
                        coord = vec4(-1098.7617, -495.5750, 35.7907, 113.3836),                                                  
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},                          
                    },
                    {
                        coord = vec4(-1081.1382, -446.0682, 36.6267, 118.3724),                                                  
                        propname = "prop_elecbox_13",                  
                        GetItem = {use = false, name = "electrician", quantity = 1}, 
                    },
                    {
                        coord = vec4(-1161.5315, -429.0851, 35.2967, 181.5877),                                                 
                        propname = "prop_elecbox_05a",
                        anim = {"missmechanic","work2_base",3000}, 
                        GetItem = {use = false, name = "electrician", quantity = 1},                             
                    },
                    {
                        coord = vec4(-1125.3119, -390.3399, 36.6626, 1.7762),                                                
                        propname = "prop_elecbox_04a",
                        anim = {"missmechanic","work2_base",3000}, 
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(-1079.5811, -411.0111, 36.6425, 295.6323),                                                
                        propname = "prop_elecbox_05a",
                        anim = {"missmechanic","work2_base",3000}, 
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(-1012.0508, -467.3248, 37.2467, 208.2919),                                                
                        propname = "prop_elecbox_04a",
                        anim = {"missmechanic","work2_base",3000}, 
                        GetItem = {use = false, name = "electrician", quantity = 1},                               
                    },
                    {
                        coord = vec4(-922.8748, -424.8487, 37.4432, 211.6615),                                                 
                        propname = "prop_elecbox_13",
                        anim = {"missmechanic","work2_base",3000}, 
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(-896.1672, -392.1090, 38.5558, 29.4087),                                                  
                        propname = "prop_elecbox_05a",
                        anim = {"missmechanic","work2_base",3000}, 
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                },
            },

            Finish = {
                model = "a_m_m_indian_01", 
                coord = vec4(738.7809, -2008.5731, 28.2846, 175.2831), 
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
            torso_1 = 65, torso_2 = 1,
            decals_1 = 0, decals_2 = 0,
            arms = 33,
            pants_1 = 38, pants_2 = 1,
            shoes_1 = 24, shoes_2 = 0,
            chain_1 = 0, chain_2 = 0,
            helmet_1 = 141, helmet_2 = 2,
            ears_1 = -1, ears_2 = 0,
            bproof_1 = 0, bproof_2 = 0
        },
        female = {
            tshirt_1 = 14,  tshirt_2 = 0,
            torso_1 = 59,   torso_2 = 1,
            decals_1 = 0,   decals_2 = 0,
            arms = 36,
            pants_1 = 38,   pants_2 = 1,
            shoes_1 = 24,   shoes_2 = 0,
            chain_1 = -1,    chain_2 = 0,
            helmet_1 = -1,  helmet_2 = 0,
            bproof_1 = 0,  bproof_2 = 0,
        }
    }
}
