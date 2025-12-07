return {
    JobInfo = {
        Name = "electrician sandy", 
        JobID = {"electrician_sandy", 0},
        Img = "img/electriciansandy.jpg",
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
            CreateGroup = vec4(996.6445, 3575.4480, 33.6113, 48.7352),

            CreateGroupPed_model = "s_m_m_gentransport",

            Workclothes = vec4(1000.0971, 3574.4468, 32.6967, 197.2609),

            Vehicle = {
                coord = vec4(980.9465, 3583.7991, 32.6116, 80.8041),
                spawnvehicle = vec4(987.8278, 3589.5347, 33.0531, 83.4778),
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
                        coord = vec4(2046.8541, 3684.3079, 34.5880, 122.5799),                                  
                        propname = "prop_elecbox_13",                 
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(2062.1353, 3683.2598, 34.5878, 32.6873),                                             
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(2038.6210, 3676.9153, 34.5880, 301.1573),                                              
                        propname = "prop_elecbox_04a",                    
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(2043.3896, 3686.2163, 34.5880, 210.9132),                                          
                        propname = "prop_elecbox_05a",                    
                        GetItem = {use = false, name = "electrician", quantity = 1}, 
                    },
                    {
                        coord = vec4(1986.3094, 3787.2944, 32.2741, 302.7319),                                    
                        propname = "prop_elecbox_04a",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(1952.6788, 3749.2395, 32.1301, 302.1508),                                       
                        propname = "prop_elecbox_13",                    
                        GetItem = {use = false, name = "electrician", quantity = 1},                       
                    },
                    {
                        coord = vec4(1918.8141, 3729.3091, 32.8030, 121.9928),                                        
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},                                                
                    },
                    {
                        coord = vec4(1774.3854, 3717.9634, 34.1424, 304.0258),                                            
                        propname = "prop_elecbox_13",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},                                                 
                    },
                    {
                        coord = vec4(1813.8176, 3656.6218, 34.1555, 14.4568),                                        
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},                          
                    },
                    {
                        coord = vec4(1874.0978, 3752.3689, 32.9824, 121.2688),                                              
                        propname = "prop_elecbox_13",                    
                        GetItem = {use = false, name = "electrician", quantity = 1}, 
                    },
                },

                [2] = {   
                    
                    {
                        coord = vec4(2139.1069, 2901.5667, 57.2634, 329.9573),                                  
                        propname = "prop_elecbox_13",                 
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(2142.8032, 2906.1592, 50.7682, 143.5031),                                             
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(2111.4348, 2929.5913, 50.9321, 154.6874),                                              
                        propname = "prop_elecbox_04a",                    
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(2043.3182, 2950.1313, 51.0222, 253.7070),                                          
                        propname = "prop_elecbox_05a",                    
                        GetItem = {use = false, name = "electrician", quantity = 1}, 
                    },
                    {
                        coord = vec4(1968.7937, 2924.4241, 49.6732, 166.6825),                                    
                        propname = "prop_elecbox_04a",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(2002.6017, 2931.8845, 56.9707, 350.7849),                                       
                        propname = "prop_elecbox_13",                    
                        GetItem = {use = false, name = "electrician", quantity = 1},                       
                    },
                    {
                        coord = vec4(2004.4993, 2937.2869, 50.4757, 166.3108),                                        
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},                                                
                    },
                    {
                        coord = vec4(2079.9319, 2947.2214, 56.4167, 2.6187),                                            
                        propname = "prop_elecbox_13",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},                                                 
                    },
                    {
                        coord = vec4(2096.7124, 2939.5256, 47.3360, 315.8372),                                        
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},                          
                    },
                    {
                        coord = vec4(2042.5505, 2952.5671, 47.7357, 184.4491),                                              
                        propname = "prop_elecbox_13",                    
                        GetItem = {use = false, name = "electrician", quantity = 1}, 
                    },
                },

                [3] = {   
                    
                    {
                        coord = vec4(2799.1338, 1607.2471, 20.7992, 183.9326),                                  
                        propname = "prop_elecbox_13",                 
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(2787.7600, 1574.0345, 24.5006, 168.5452),                                             
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(2829.4734, 1553.0835, 24.7287, 257.4006),                                              
                        propname = "prop_elecbox_04a",                    
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(2839.7192, 1502.6246, 24.7287, 74.6679),                                          
                        propname = "prop_elecbox_05a",                    
                        GetItem = {use = false, name = "electrician", quantity = 1}, 
                    },
                    {
                        coord = vec4(2833.2512, 1518.8004, 24.7287, 164.2491),                                    
                        propname = "prop_elecbox_04a",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},
                    },
                    {
                        coord = vec4(2750.4507, 1413.6655, 20.8247, 170.6609),                                       
                        propname = "prop_elecbox_13",                    
                        GetItem = {use = false, name = "electrician", quantity = 1},                       
                    },
                    {
                        coord = vec4(2773.3762, 1390.6747, 24.4857, 87.3035),                                        
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},                                                
                    },
                    {
                        coord = vec4(2660.4768, 1446.3851, 20.8223, 96.8205),                                            
                        propname = "prop_elecbox_13",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},                                                 
                    },
                    {
                        coord = vec4(2832.7305, 1669.6213, 24.5965, 3.3189),                                   
                        propname = "prop_elecbox_05a",                   
                        GetItem = {use = false, name = "electrician", quantity = 1},                          
                    },
                    {
                        coord = vec4(2664.4236, 1519.4120, 20.8337, 93.3887),                                              
                        propname = "prop_elecbox_13",                    
                        GetItem = {use = false, name = "electrician", quantity = 1}, 
                    },
                },

            },

            Finish = {
                model = "a_m_m_indian_01", 
                coord = vec4(968.8293, 3608.5134, 31.8792, 177.1910), 
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
