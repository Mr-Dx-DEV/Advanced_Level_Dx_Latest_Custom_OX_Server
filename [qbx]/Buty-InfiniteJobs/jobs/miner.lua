return {
    JobInfo = {
        Name = "miner", 
        JobID = {"miner", 0},
        Img = "img/miner.jpg",
        ExperienceRequired = 500,
        info = "Help is needed in the mine, dig up some rocks and we will pay you for it.",

        Tutorial = {
            [1] = "First you must know that your tool is in the trunk, approach and take it.", 
            [2] = "This will be the work area, you will have to dig up all the marked rocks and load them into the vehicle.",
            [3] = "Here you must unload the rocks from the vehicle and place them on the conveyor belt.", 
            [4] = "When you're done, go here to get paid.",
        }            
    },

    JobConfig = {

        Tool = {
            prop = "prop_tool_pickaxe", 
            objcoord = {28422,0.09, 0.01, 0.0, 300.0, 720.0, 330.0}, 
            objcoordbelt = {11816, 0.7, -0.1, -0.33, 77.0, 270.0, -10.0},
            animation_action = {"melee@large_wpn@streamed_core","car_down_attack",8000},     
            animation_take = nil,
            particles = "ent_col_rocks"
        },
     
        type = 2,

        {
            CreateGroup = vec4(2944.1855, 2742.9624, 42.3519, 3.5552),

            CreateGroupPed_model = "s_m_m_gentransport",

            Workclothes = vec4(2942.1348, 2748.2993, 42.2564, 61.7474),

            Vehicle = {
                coord = vec4(2952.6765, 2752.5122, 42.4362, 21.8115),
                spawnvehicle = vec4(2952.4795, 2748.9543, 43.5048, 278.4335),
                model = "bison",
                doors = {5},
                coord_prop_tool = {
                    [1] = {-0.78, -2.2, 0.94, 0.90, -210.0, 90.0},
                    [2] = {-0.78, -1.7, 0.94, 0.90, -210.0, 90.0},
                    [3] = {0.78, -1.7, 0.97, 0.90, -160.0, 90.0},
                    [4] = {0.78, -2.2, 0.97, 0.90, -160.0, 90.0},
                },
                coord_prop_vehicle = {
                    [1] = {-0.18, -1.0, 0.45, 0.90, 0.0, 0.0},
                    [2] = {0.18, -1.0, 0.45, 0.90, 0.0, 0.0}, 
                    [3] = {-0.18, -1.4, 0.45, 0.90, 0.0, 0.0},
                    [4] = {0.18, -1.4, 0.45, 0.90, 0.0, 0.0},
                    [5] = {-0.18, -1.8, 0.45, 0.90, 0.0, 0.0}, 
                    [6] = {0.18, -1.8, 0.45, 0.90, 0.0, 0.0}, 
                    [7] = {-0.18, -1.0, 0.8, 0.90, 0.0, 0.0},
                    [8] = {0.18, -1.0, 0.8, 0.90, 0.0, 0.0}, 
                    [9] = {-0.18, -1.4, 0.8, 0.90, 0.0, 0.0}, 
                    [10] = {0.18, -1.4, 0.8, 0.90, 0.0, 0.0}, 
                    [11] = {-0.18, -1.8, 0.8, 0.90, 0.0, 0.0}, 
                    [12] = {0.18, -1.8, 0.8, 0.90, 0.0, 0.0}, 
                    [13] = {-0.18, -2.2, 0.45, 0.90, 0.0, 0.0}, 
                    [14] = {0.18, -2.2, 0.45, 0.90, 0.0, 0.0}, 
                    [15] = {-0.18, -2.2, 0.75, 0.90, 0.0, 0.0}, 
                    [16] = {0.18, -2.2, 0.75, 0.90, 0.0, 0.0}, 
                }
            },
            
            CollectedProp = {
                name = "prop_rock_5_smash3", 
                animAttachHands = {"anim@heists@box_carry@", "idle"},
                attachcoordHands = {36029, 0.0, 0.1, 0.3, -54.0, -72.0, -100.0}, 
                attachcoordProcess = {0.0, -1.8, 1.10, 0.0, 0.0, 0.0}
            },

            Route = {
                
                [1] = {                         
                    {
                        coord = vec4(2947.3215, 2775.0278, 39.2098, 0.4355),                                                       
                        propname = "prop_rock_4_cl_1",                                           
                        GetItem = { use = false, name = "stone", quantity = 1},                           
                    },
                    {
                        coord = vec4(2942.9736, 2781.1245, 39.4767, 53.7776),                                                       
                        propname = "prop_rock_4_cl_1",                      
                        GetItem = { use = false, name = "stone", quantity = 1},                           
                    },
                    {
                        coord = vec4(2942.3884, 2793.7419, 40.4890, 323.3751),                                                       
                        propname = "prop_rock_4_cl_1",                      
                        GetItem = { use = false, name = "stone", quantity = 1},                              
                    },    
                    {
                        coord = vec4(2933.0562, 2794.9812, 40.6525, 23.3731),                                                       
                        propname = "prop_rock_4_cl_1",                      
                        GetItem = { use = false, name = "stone", quantity = 1},                              
                    },               
                    {
                        coord = vec4(2933.3738, 2801.5969, 41.2817, 2.5912),                                                       
                        propname = "prop_rock_4_cl_1",                      
                        GetItem = { use = false, name = "stone", quantity = 1},                              
                    }, 
                    {
                        coord = vec4(2937.8716, 2806.1570, 41.8021, 314.8870),                                                       
                        propname = "prop_rock_4_cl_1",                      
                        GetItem = { use = false, name = "stone", quantity = 1},                              
                    }, 
                    {
                        coord = vec4(2943.9722, 2806.7549, 41.4724, 280.8404),                                                       
                        propname = "prop_rock_4_cl_1",                      
                        GetItem = { use = false, name = "stone", quantity = 1},                              
                    }, 
                    {
                        coord = vec4(2945.6067, 2801.8035, 41.1874, 197.1808),                                                       
                        propname = "prop_rock_4_cl_1",                      
                        GetItem = { use = false, name = "stone", quantity = 1},                              
                    }, 
                    {
                        coord = vec4(2950.5522, 2799.7483, 41.2166, 259.2867),                                                       
                        propname = "prop_rock_4_cl_1",                      
                        GetItem = { use = false, name = "stone", quantity = 1},                              
                    }, 
                    {
                        coord = vec4(2955.1768, 2800.5999, 41.5068, 276.8328),                                                       
                        propname = "prop_rock_4_cl_1",                      
                        GetItem = { use = false, name = "stone", quantity = 1},                              
                    }, 
                    {
                        coord = vec4(2967.0620, 2797.4790, 40.9890, 240.7660),                                                       
                        propname = "prop_rock_4_cl_1",                      
                        GetItem = { use = false, name = "stone", quantity = 1},                              
                    }, 
                },              
            },

            ProcessCoord = vec4(2768.6045, 2804.2356, 41.4046, 117.6847),

            Finish = {
                model = "a_m_m_indian_01", 
                coord = vec4(2707.3213, 2776.9167, 36.8780, 32.0575), 
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
            tshirt_1 = 59,  tshirt_2 = 1,
            torso_1 = 38,   torso_2 = 0,
            arms = 47,
            pants_1 = 130,   pants_2 = 1,
            shoes_1 = 24,   shoes_2 = 0,
            chain_1 = 0,    chain_2 = 0,
            helmet_1 = 145,  helmet_2 = 1,
            ears_1 = -1,     ears_2 = 0,
            bproof_1 = 0,  bproof_2 = 0
        },
        female = {
            tshirt_1 = 36,  tshirt_2 = 1,
            torso_1 = 75,   torso_2 = 3,
            decals_1 = 0,   decals_2 = 0,
            arms = 54,
            pants_1 = 136,   pants_2 = 1,
            shoes_1 = 24,   shoes_2 = 0,
            chain_1 = -1,    chain_2 = 0,
            helmet_1 = 144,  helmet_2 = 1,
            bproof_1 = 0,  bproof_2 = 0,
        }
    }
}