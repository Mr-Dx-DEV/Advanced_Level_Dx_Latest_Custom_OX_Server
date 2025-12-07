return {
    JobInfo = {
        Name = "electrician paleto", 
        JobID = {"electrician_paleto", 0},
        Img = "img/electricianpaleto.jpg",
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
            CreateGroup = vec4(-349.2847, 6255.7681, 30.4875, 323.6181),

            CreateGroupPed_model = "s_m_m_gentransport",

            Workclothes = vec4(-355.4887, 6246.0952, 30.4878, 45.5915),

            Vehicle = {
                coord = vec4(-347.0511, 6262.9745, 30.4375, 45.0825),
                spawnvehicle = vec4(-340.6031, 6251.4575, 31.0302, 316.3077),
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
                        coord = vec4(-223.9208, 6422.3911, 31.4377, 40.4571),                                  
                        propname = "prop_elecbox_13",                 
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},
                    },
                    {
                        coord = vec4(-212.2206, 6410.2817, 31.4738, 233.9968),                                             
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},
                    },
                    {
                        coord = vec4(-196.0740, 6430.4629, 31.3770, 232.0149),                                              
                        propname = "prop_elecbox_04a",                    
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},
                    },
                    {
                        coord = vec4(-177.1622, 6460.1050, 30.7318, 234.2773),                                          
                        propname = "prop_elecbox_05a",                    
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1}, 
                    },
                    {
                        coord = vec4(-155.2202, 6453.5073, 31.3600, 135.5322),                                    
                        propname = "prop_elecbox_04a",                   
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},
                    },
                    {
                        coord = vec4(-151.5324, 6467.8809, 31.0505, 319.7542),                                       
                        propname = "prop_elecbox_13",                    
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},                       
                    },
                    {
                        coord = vec4(-121.8184, 6438.2422, 31.5675, 324.0590),                                        
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},                                                
                    },
                    {
                        coord = vec4(-112.9548, 6410.0552, 31.4480, 227.9113),                                            
                        propname = "prop_elecbox_13",                   
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},                                                 
                    },
                    {
                        coord = vec4(-82.9051, 6440.4517, 31.5040, 228.9129),                                        
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},                          
                    },
                    {
                        coord = vec4(-39.4200, 6485.8228, 31.4919, 218.7435),                                              
                        propname = "prop_elecbox_13",                    
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1}, 
                    },
                },

                [2] = {   
                    
                    {
                        coord = vec4(59.8379, 6635.0269, 31.4380, 316.1671),                                  
                        propname = "prop_elecbox_13",                 
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},
                    },
                    {
                        coord = vec4(54.7033, 6614.3560, 31.5256, 112.2907),                                             
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},
                    },
                    {
                        coord = vec4(100.2619, 6593.2827, 31.4964, 319.1358),                                              
                        propname = "prop_elecbox_04a",                    
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},
                    },
                    {
                        coord = vec4(162.0973, 6553.8159, 31.8707, 48.6677),                                          
                        propname = "prop_elecbox_05a",                    
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1}, 
                    },
                    {
                        coord = vec4(211.8391, 6574.9619, 32.0097, 357.4885),                                    
                        propname = "prop_elecbox_04a",                   
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},
                    },
                    {
                        coord = vec4(56.7161, 6412.1738, 31.4317, 226.1068),                                       
                        propname = "prop_elecbox_13",                    
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},                       
                    },
                    {
                        coord = vec4(2.0904, 6405.7944, 31.3542, 43.4500),                                        
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},                                                
                    },
                    {
                        coord = vec4(-45.0249, 6300.3306, 31.6122, 303.9302),                                            
                        propname = "prop_elecbox_13",                   
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},                                                 
                    },
                    {
                        coord = vec4(-71.4668, 6286.3257, 31.4913, 226.8157),                                        
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},                          
                    },
                    {
                        coord = vec4(-116.9211, 6275.7637, 31.2591, 49.3097),                                              
                        propname = "prop_elecbox_13",                    
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1}, 
                    },
                },

                [3] = {   
                    
                    {
                        coord = vec4(1551.6632, 6446.2036, 23.9076, 332.6681),                                  
                        propname = "prop_elecbox_13",                 
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},
                    },
                    {
                        coord = vec4(1597.1722, 6427.7793, 25.5329, 340.0058),                                             
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},
                    },
                    {
                        coord = vec4(1584.4171, 6451.4697, 25.3171, 335.3792),                                              
                        propname = "prop_elecbox_04a",                    
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},
                    },
                    {
                        coord = vec4(1690.1429, 6405.6743, 31.7242, 331.4146),                                          
                        propname = "prop_elecbox_05a",                    
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1}, 
                    },
                    {
                        coord = vec4(1691.2349, 6434.2388, 32.7640, 247.3576),                                    
                        propname = "prop_elecbox_04a",                   
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},
                    },
                    {
                        coord = vec4(1711.9933, 6432.4312, 32.7470, 156.5714),                                       
                        propname = "prop_elecbox_13",                    
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},                       
                    },
                    {
                        coord = vec4(410.3150, 6555.4390, 27.4006, 173.4060),                                        
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},                                                
                    },
                    {
                        coord = vec4(258.3934, 6583.1294, 30.8754, 8.7378),                                            
                        propname = "prop_elecbox_13",                   
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},                                                 
                    },
                    {
                        coord = vec4(211.5002, 6575.6001, 31.9538, 355.1414),                                        
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1},                          
                    },
                    {
                        coord = vec4(164.9698, 6515.9492, 31.6308, 223.5913),                                              
                        propname = "prop_elecbox_13",                    
                        GetItem = {use = false, name = "electrician_paleto", quantity = 1}, 
                    },
                },

            },

            Finish = {
                model = "a_m_m_indian_01", 
                coord = vec4(-342.3851, 6256.6040, 30.4876, 323.0473), 
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
