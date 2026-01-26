return {
    JobInfo = {
        Name = "lumberjack", 
        JobID = {"lumberjack", 0},
        Img = "img/lumberjack.jpg",
        ExperienceRequired = 500,
        info = "Help is needed with tree cutting, just cut some trees and we will pay you for it.",

        Tutorial = {
            [1] = "First you should know that your tool is in the trunk, go over and take it.",
            [2] = "This will be the work area, you will have to open all the boxes and load the objects into the trunk of the vehicle.",
            [3] = "Here you must unload the objects from the vehicle and stack them in the designated place.",
            [4] = "When you're done, go here to receive your payment.",             
        }
    },

    JobConfig = {

        Tool = {
            prop = "w_me_hatchet", 
            objcoord = {28422,0.05, 0.04, 0.0, 280.0, 740.0, 330.0}, 
            objcoordbelt = {11816, 0.34, 0.0, -0.28, 80.0, -80.0, -10.0},
            animation_action = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},      
            animation_take = nil,
            particles = "ent_dst_wood_splinter"
        },

        type = 2,

        {
            CreateGroup = vec4(-559.7979, 5356.7124, 69.2145, 78.3917),

            CreateGroupPed_model = "a_m_m_farmer_01",

            Workclothes = vec4(-571.1516, 5361.1753, 69.2145, 81.0137),

            Vehicle = {
                coord = vec4(-579.8630, 5369.0811, 69.3189, 162.3172),
                spawnvehicle = vec4(-576.1255, 5374.6016, 70.2464, 299.7000),
                model = "bison",
                doors = {5},
                coord_prop_tool = {
                    [1] = {-0.63, -1.03, 0.54, 90.0, 0.0, 0.0},
                    [2] = {-0.53, -1.13, 0.54, -90.0, -170.0, 0.0},
                    [3] = {0.63, -1.13, 0.59, -90.0, -170.0, 0.0},
                    [4] = {0.53, -1.03, 0.59, 90.0, 0.0, 0.0},
                },
                coord_prop_vehicle = {
                    [1] = {-0.21, -1.0, 0.45, 0.90, 0.0, 0.0},
                    [2] = {0.26, -1.0, 0.45, 0.90, 0.0, 0.0}, 
                    [3] = {-0.48, -1.65, 0.45, 0.90, 0.0, 0.0}, 
                    [4] = {0.0, -1.65, 0.45, 0.90, 0.0, 0.0},
                    [5] = {0.48, -1.65, 0.45, 0.90, 0.0, 0.0},
                    [6] = {0.48, -2.15, 0.45, 0.90, 0.0, 0.0}, 
                    [7] = {0.0, -2.15, 0.45, 0.90, 0.0, 0.0}, 
                    [8] = {-0.48, -2.15, 0.45, 0.90, 0.0, 0.0},
                    [9] = {-0.21, -1.0, 0.91, 0.90, 0.0, 0.0}, 
                    [10] = {0.26, -1.0, 0.91, 0.90, 0.0, 0.0}, 
                    [11] = {-0.48, -1.65, 0.91, 0.90, 0.0, 0.0}, 
                    [12] = {0.0, -1.65, 0.91, 0.90, 0.0, 0.0}, 
                    [13] = {0.48, -1.65, 0.91, 0.90, 0.0, 0.0}, 
                    [14] = {0.48, -2.15, 0.91, 0.90, 0.0, 0.0}, 
                    [15] = {0.0, -2.15, 0.91, 0.90, 0.0, 0.0}, 
                    [16] = {-0.48, -2.15, 0.91, 0.90, 0.0, 0.0}, 
                }
            },

            CollectedProp = {
                name = "prop_chopblock_fury", 
                animAttachHands = {"anim@heists@box_carry@", "idle"},
                attachcoordHands = {28422, 0.0, -0.08, 0.04, 0.0, -90.0, 0.0}, 
                attachcoordProcess = {0.0, -1.8, 1.10, 0.0, 0.0, 0.0}
            },

            Route = {
                [1] = {   
                    
                    {
                        coord = vec4(-622.9656, 5500.0391, 51.3581, 154.9108),                                                       
                        propname = "prop_log_01",                    
                        GetItem = {use = false, name = "wood", quantity = 1},                           
                    },
                
                    {
                        coord = vec4(-618.0844, 5501.2227, 51.1275, 306.3838),                                                       
                        propname = "prop_log_01",                     
                        GetItem = {use = false, name = "wood", quantity = 1},                             
                    },
                
                    {
                        coord = vec4(-628.9519, 5506.2837, 51.2952, 112.9625),                                                       
                        propname = "prop_log_01",
                        GetItem = {use = false, name = "wood", quantity = 1},                            
                    },
                
                    {
                        coord = vec4(-599.6562, 5524.4834, 49.8086, 327.2852),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    },   
                    
                    {
                        coord = vec4(-595.5886, 5533.9688, 49.3167, 150.5597),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    }, 
                
                    {
                        coord = vec4(-578.7582, 5529.8989, 52.0475, 126.6012),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    }, 
                
                    {
                        coord = vec4(-580.1907, 5513.8848, 53.3412, 154.1225),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    }, 
                
                    {
                        coord = vec4(-610.7286, 5487.7920, 52.5106, 113.3707),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    }, 
                
                    {
                        coord = vec4(-623.6525, 5474.9883, 53.2221, 50.8282),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    }, 
                
                    {
                        coord = vec4(-646.0052, 5479.5630, 52.0225, 159.4229),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    }, 
                },
                
                [2] = {   
                    
                    {
                        coord = vec4(-429.7848, 5114.0317, 129.1521, 108.7410),                                                       
                        propname = "prop_log_01",                    
                        GetItem = {use = false, name = "wood", quantity = 1},                           
                    },
                
                    {
                        coord = vec4(-436.6448, 5099.8628, 133.8579, 282.1778),                                                       
                        propname = "prop_log_01",                     
                        GetItem = {use = false, name = "wood", quantity = 1},                             
                    },
                
                    {
                        coord = vec4(-451.4655, 5093.4609, 132.4865, 318.2665),                                                       
                        propname = "prop_log_01",
                        GetItem = {use = false, name = "wood", quantity = 1},                            
                    },
                
                    {
                        coord = vec4(-463.5641, 5094.7480, 128.3596, 129.9461),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    },   
                    
                    {
                        coord = vec4(-475.4139, 5109.9229, 119.6661, 300.2714),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    }, 
                
                    {
                        coord = vec4(-463.4758, 5126.9482, 114.8000, 108.5009),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    }, 
                
                    {
                        coord = vec4(-441.7553, 5140.4058, 111.6948, 106.2247),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    }, 
                
                    {
                        coord = vec4(-410.8179, 5156.2056, 110.5305, 53.7552),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    }, 
                
                    {
                        coord = vec4(-451.0048, 5163.8369, 99.1420, 274.4018),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    }, 
                
                    {
                        coord = vec4(-508.9377, 5124.1240, 103.7630, 132.3461),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    }, 
                },
                
                [3] = {   
                    
                    {
                        coord = vec4(-391.5370, 5822.2686, 52.5379, 50.5945),                                                       
                        propname = "prop_log_01",                    
                        GetItem = {use = false, name = "wood", quantity = 1},                           
                    },
                
                    {
                        coord = vec4(-398.7094, 5818.3325, 53.0780, 145.3103),                                                       
                        propname = "prop_log_01",                     
                        GetItem = {use = false, name = "wood", quantity = 1},                             
                    },
                
                    {
                        coord = vec4(-402.8769, 5800.3042, 56.3064, 298.2545),                                                       
                        propname = "prop_log_01",
                        GetItem = {use = false, name = "wood", quantity = 1},                            
                    },
                
                    {
                        coord = vec4(-420.0493, 5788.0454, 56.5696, 167.8292),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    },   
                    
                    {
                        coord = vec4(-433.9449, 5775.0776, 57.4026, 165.7425),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    }, 
                
                    {
                        coord = vec4(-439.9830, 5800.5703, 52.8733, 355.8024),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    }, 
                
                    {
                        coord = vec4(-419.0450, 5862.3311, 45.5359, 330.7614),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    }, 
                
                    {
                        coord = vec4(-386.4062, 5874.7769, 49.3200, 141.6990),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    }, 
                
                    {
                        coord = vec4(-363.1449, 5902.1709, 46.1521, 138.5165),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    }, 
                
                    {
                        coord = vec4(-404.6393, 5892.2969, 41.2529, 308.9286),                                                       
                        propname = "prop_log_01",
                        anim = {"melee@large_wpn@streamed_core","ground_attack_on_spot_body",8000},                       
                        GetItem = {use = false, name = "wood", quantity = 1},   
                    }, 
                },
            },

            ProcessCoord = vec4(-570.6354, 5332.8, 70.2145, 251.2287),

            Finish = {
                model = "cs_joeminuteman", 
                coord = vec4(-567.6278, 5253.1714, 69.4874, 72.5164), 
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
            torso_1 = 234,   torso_2 = 19,
            decals_1 = 0,   decals_2 = 0,
            arms = 0,
            pants_1 = 123,   pants_2 = 0,
            shoes_1 = 72,   shoes_2 = 11,
            chain_1 = 0,    chain_2 = 0,
            helmet_1 = -1,  helmet_2 = 0,
            ears_1 = -1,     ears_2 = 0,
            bproof_1 = 0,  bproof_2 = 0
        },
        female = {
            tshirt_1 = 14,  tshirt_2 = 0,
            torso_1 = 9,   torso_2 = 7,
            decals_1 = 0,   decals_2 = 0,
            arms = 0,
            pants_1 = 129,   pants_2 = 0,
            shoes_1 = 75,   shoes_2 = 11,
            chain_1 = -1,    chain_2 = 0,
            helmet_1 = -1,  helmet_2 = 0,
            bproof_1 = 0,  bproof_2 = 0,
        }
    }
}