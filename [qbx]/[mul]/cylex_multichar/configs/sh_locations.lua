SPAWN_LOCATIONS = {
    ["cuberoom"] = {
        models = {
            {
                model = 'bs_cuberoom',
                offset = vector3(0.000000, 0.000000, 0.000000),
                rot = vector3(0, 0, 0),
            },
            {
                model = "apa_mp_h_lit_floorlamp_10",
                offset = vector3(-4.983459, 0.24144750000001, -1.747681),
                rot = vector3(0, 0, -90.2267151),
            },
            {
                model = "apa_mp_h_lit_floorlamp_10",
                offset = vector3(-0.30709800000002, -4.2279739, -1.747681),
                rot = vector3(0, 0, 5.82684231),
            },
            {
                model = "apa_mp_h_stn_sofacorn_05",
                offset = vector3(-3.986893, -3.4477234, -1.747681),
                rot = vector3(-3.09149906e-12, -2.09806626e-06, -180.0),
            },
            {
                model = "ch_prop_ch_coffe_table_02",
                offset = vector3(-2.5, -2.5, -1.5),
                rot = vector3(0.0, 0.0, -180.0),
            },
            {
                model = "ex_mp_h_din_table_04",
                offset = vector3(-2.984543, 2.985878, -1.747681),
                rot = vector3(4.13472086e-14, -1.07207157e-07, -152.520035),
            },
            {
                model = "prop_monitor_w_large",
                offset = vector3(-2.412201, 3.1642914, -0.95),
                rot = vector3(-1.99999928, 5.76648426e-06, -139.133179),
                dui = {
                    dict = "prop_monitor_w_large",
                    texture = "script_rt_tvscreen",
                    url = "https://cdn.discordapp.com/icons/718789170885034064/2f5437fa40bca827b997156538ec21d7.webp?size=1024",
                    width = 500,
                    height = 500,
                }
            },
            {
                model = "prop_monitor_w_large",
                offset = vector3(-3.132919, 2.7294312, -0.95),
                rot = vector3(0, 0, -155.766968),
                dui = {
                    dict = "prop_monitor_w_large",
                    texture = "script_rt_tvscreen",
                    url = "https://cdn.discordapp.com/icons/718789170885034064/2f5437fa40bca827b997156538ec21d7.webp?size=1024",
                    width = 500,
                    height = 500,
                }
            },
            {
                model = "ex_prop_offchair_exec_03",
                offset = vector3(-3.16655, 3.9150772, -1.145477),
                rot = vector3(-1.22133293e-12, 1.68322231e-06, 19.8547077),
            },
            {
                model = "v_res_mousemat",
                offset = vector3(-3.290649, 3.1199417, -0.95),
                rot = vector3(0, 0, -157.728928),
            },
            {
                model = "hei_prop_hei_cs_keyboard",
                offset = vector3(-2.845505, 3.346817, -0.94),
                rot = vector3(1.73022165e-12, 2.05436777e-06, -157.930023),
            },
            {
                model = "hei_prop_heist_pc_01",
                offset = vector3(-4.022018, 2.4799347, -0.95),
                rot = vector3(3.30777669e-13, -1.43593991e-06, -164.155289),
            },
            {
                model = "prop_laptop_01a",
                offset = vector3(-2.132507, 3.8323746, -0.95),
                rot = vector3(0, 0, -102.809364),
            }
        },
        seats = {
            {
                offset = vec3(-1.45, -3.6, -2.2),
                heading = 10.0,
                anim = {
                    male = {
                        dict = "anim@amb@office@seating@male@var_b@base@",
                        anim = "base",
                        idles = {
                            "idle_a",
                            "idle_b",
                            "idle_c",
                        },
                        flags = 1,
                    },
                    female = {
                        dict = "anim@amb@office@seating@female@var_a@base@",
                        anim = "base",
                        idles = {
                            "idle_a",
                            "idle_b",
                            "idle_c",
                        },
                        flags = 1,
                        offset = vec3(0.0, 0.0, -0.025)
                    }
                },
            },
            {
                offset = vec3(-2.25, -3.85, -2.2),
                heading = 4.5,
                anim = {
                    male = {
                        dict = "anim@amb@office@seating@male@var_a@base@",
                        anim = "base",
                        idles = {
                            "idle_a",
                            "idle_b",
                            "idle_c",
                        },
                        flags = 1,
                    },
                    female = {
                        dict = "amb@prop_human_seat_chair@female@arms_folded@idle_a",
                        anim = "idle_a",
                        idles = {
                            "idle_a",
                            "idle_b",
                            "idle_c",
                        },
                        flags = 1,
                        offset = vec3(0.0, 0.0, -0.1)
                    }
                },
            },
            {
                offset = vec3(-3.25, -3.85, -2.2),
                heading = 4.5,
                anim = {
                    male = {
                        dict = "anim@amb@facility@briefing_room@seating@male@var_a@",
                        anim = "base",
                        idles = {
                            "idle_a",
                            "idle_b",
                            "idle_c",
                        },
                        flags = 1,
                    },
                    female = {
                        dict = "anim@amb@clubhouse@boardroom@crew@female@var_c@base_l@",
                        anim = "base",
                        idles = {
                            "idle_a",
                            "idle_b",
                            "idle_c",
                        },
                        flags = 1,
                        offset = vec3(0.0, 0.0, -0.1)
                    }
                },
            },
            {
                offset = vec3(-4.3, -3.85, -2.3),
                heading = 270.5,
                anim = {
                    male = {
                        dict = "rcm_barry3",
                        anim = "barry_3_sit_loop",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, 1.0)
                    },
                    female = {
                        dict = "anim@heists@fleeca_bank@ig_7_jetski_owner",
                        anim = "owner_idle",
                        idles = {},
                        flags = 1,
                        offset = vec3(-0.25, 0.0, 1.0)
                    }
                },
            },
            {
                offset = vec3(-4.4, -3.0, -2.2),
                heading = 270.0,
                anim = {
                    male = {
                        dict = "anim@amb@office@seating@male@var_e@base@",
                        anim = "base",
                        idles = {
                            "idle_a",
                            "idle_b",
                            "idle_c",
                        },
                        flags = 1,
                    },
                    female = {
                        dict = "anim@amb@office@seating@male@var_e@base@",
                        anim = "base",
                        idles = {
                            "idle_a",
                            "idle_b",
                            "idle_c",
                        },
                        flags = 1,
                    }
                },
            },
            {
                offset = vec3(-4.4, -2.1, -2.2),
                heading = 270.0,
                anim = {
                    male = {
                        dict = "anim@amb@office@seating@male@var_a@base@",
                        anim = "base",
                        idles = {
                            "idle_a",
                            "idle_b",
                            "idle_c",
                        },
                        flags = 1,
                    },
                    female = {
                        dict = "anim@amb@office@seating@female@var_a@base@",
                        anim = "base",
                        idles = {
                            "idle_a",
                            "idle_b",
                            "idle_c",
                        },
                        flags = 1,
                        offset = vec3(0.1, 0.0, 0.0)
                    }
                },
            },
            {
                offset = vec3(-4.4, -1.0, -2.2),
                heading = 270.0,
                anim = {
                    male = {
                        dict = "anim@amb@office@seating@male@var_e@base@",
                        anim = "base",
                        idles = {
                            "idle_a",
                            "idle_b",
                            "idle_c",
                        },
                        flags = 1,
                    },
                    female = {
                        dict = "amb@prop_human_seat_chair@female@arms_folded@idle_a",
                        anim = "idle_a",
                        idles = {
                            "idle_a",
                            "idle_b",
                            "idle_c",
                        },
                        flags = 1,
                        offset = vec3(0.0, 0.0, -0.1)
                    }
                },
            },
        },
        camera = {
            {
                from = {
                    pos = vec3(-4.557129, 5.593506, 0.123291),
                    rot = vec3(0.000000, -0.000000, -161.577087),
                },
                to = {
                    pos = vec3(0.673340, 3.450073, 0.287018),
                    rot = vec3(0.000000, -0.000000, 148.658493),
                },
                duration = 6000,
            },
            {
                from = {
                    pos = vec3(0.673340, 3.450073, 0.287018),
                    rot = vec3(0.000000, -0.000000, 148.658493),
                },
                to = {
                    pos = vec3(-0.489990, 0.124634, -0.771637),
                    rot = vec3(0.000000, -0.000000, 136.397980),
                },
                duration = 1000,
            },
        },
        creator = {
            player_offset = { 
                pos = vector3(1.898682, -1.823242, -1.57),
                rot = vector3(0.000000, -0.000000, 42.374008),
            },
            camera_offset = {
                pos = vector3(-0.388477, 0.548706, -1.0),
                rot = vector3(0.000000, -0.000000, -129.544495),
            },
        },
        position = vector3(-3300.0, -1300.0, 10.0),
        player_position = vector3(-3077.7, 533.32, 2.36) + vector3(3.110107, 14.727539, -1.732971),
        weather = "EXTRASUNNY",
        time = {
            hour = 0,
            minute = 0,
            second = 0,
        },
    },
    ["beach"] = {
        models = {},
        seats = {
            {
                pos = vector3(-3076.26, 531.23, 1.36),
                heading = 358.0,
                anim = {
                    male = {
                        dict = "rcm_barry3",
                        anim = "barry_3_sit_loop",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, 0.0)
                    },
                    female = {
                        dict = "anim@heists@fleeca_bank@ig_7_jetski_owner",
                        anim = "owner_idle",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, 0.0)
                    }
                },
            },
            {
                pos = vector3(-3077.94, 530.95, 1.36),
                heading = 350.5,
                anim = {
                    male = {
                        dict = "rcm_barry3",
                        anim = "barry_3_sit_loop",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, 0.0)
                    },
                    female = {
                        dict = "anim@heists@fleeca_bank@ig_7_jetski_owner",
                        anim = "owner_idle",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, 0.0)
                    }
                },
            },
            {
                pos = vector3(-3079.32, 531.29, 1.36),
                heading = 332.0,
                anim = {
                    male = {
                        dict = "rcm_barry3",
                        anim = "barry_3_sit_loop",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, 0.0)
                    },
                    female = {
                        dict = "anim@heists@fleeca_bank@ig_7_jetski_owner",
                        anim = "owner_idle",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, 0.0)
                    }
                },
            },
            {
                pos = vector3(-3080.26, 532.75, 1.36),
                heading = 294.5,
                anim = {
                    male = {
                        dict = "rcm_barry3",
                        anim = "barry_3_sit_loop",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, 0.0)
                    },
                    female = {
                        dict = "anim@heists@fleeca_bank@ig_7_jetski_owner",
                        anim = "owner_idle",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, 0.0)
                    }
                },
            },
            {
                pos = vector3(-3080.14, 534.34, 1.36),
                heading = 259.5,
                anim = {
                    male = {
                        dict = "rcm_barry3",
                        anim = "barry_3_sit_loop",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, 0.0)
                    },
                    female = {
                        dict = "anim@heists@fleeca_bank@ig_7_jetski_owner",
                        anim = "owner_idle",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, 0.0)
                    }
                },
            },
            {
                pos = vector3(-3079.34, 535.56, 1.36),
                heading = 181.37,
                anim = {
                    male = {
                        dict = "rcm_barry3",
                        anim = "barry_3_sit_loop",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, 0.0)
                    },
                    female = {
                        dict = "anim@heists@fleeca_bank@ig_7_jetski_owner",
                        anim = "owner_idle",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, 0.0)
                    }
                },
            },
        },
        camera = {
            {
                from = {
                    pos = vec3(-4.557129, 5.593506, 0.123291),
                    rot = vec3(0.000000, -0.000000, -161.577087),
                },
                to = {
                    pos = vec3(0.673340, 3.450073, 0.287018),
                    rot = vec3(0.000000, -0.000000, 148.658493),
                },
                duration = 6000,
            },
            {
                from = {
                    pos = vec3(0.673340, 3.450073, 0.287018),
                    rot = vec3(0.000000, -0.000000, 148.658493),
                },
                to = {
                    pos = vec3(-0.489990, 0.124634, 0.371637),
                    rot = vec3(-15.000000, 0.00000, 136.397980),
                },
                duration = 1000,
            },
        },
        creator = {
            player_offset = { 
                pos = vector3(3.0, -2.0, -1.0),
                rot = vector3(0.000000, -0.000000, 42.374008),
            },
            camera_offset = {
                pos = vector3(0.5, -0.5, 0.7),
                rot = vector3(0.000000, -0.000000, -129.544495),
            },
        },
        position = vector3(-3077.51, 533.44, 2.36),
        player_position = vector3(-3072.15, 535.43, 2.36),
        weather = "RAIN",
        time = {
            hour = 0,
            minute = 0,
            second = 0,
        },
    },
    ["camp"] = {
        models = {
            {
                model = 'prop_beach_fire',
                offset = vector3(-1.500000, -2.000000, -1.380000),
                rot = vector3(0, 0, 0),
            },
        },
        seats = {
            {
                pos = vector3(2965.63, 5321.74, 101.13),
                heading = 12.3,
                anim = {
                    male = {
                        dict = "timetable@ron@ig_3_couch",
                        anim = "base",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "timetable@ron@ig_3_couch",
                        anim = "base",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(2964.58, 5321.57, 101.13),
                heading = 3.33,
                anim = {
                    male = {
                        dict = "timetable@ron@ig_3_couch",
                        anim = "base",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "timetable@ron@ig_3_couch",
                        anim = "base",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(2962.93, 5321.26, 101.13),
                heading = 336.9,
                anim = {
                    male = {
                        dict = "amb@world_human_picnic@male@idle_a",
                        anim = "idle_a",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "amb@world_human_picnic@male@idle_a",
                        anim = "idle_a",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(2961.67, 5323.3, 100.77),
                heading = 284.86,
                anim = {
                    male = {
                        dict = "rcm_barry3",
                        anim = "barry_3_sit_loop",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "rcm_barry3",
                        anim = "barry_3_sit_loop",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(2961.21, 5324.76, 100.75),
                heading = 279.67,
                anim = {
                    male = {
                        dict = "rcm_barry3",
                        anim = "barry_3_sit_loop",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "rcm_barry3",
                        anim = "barry_3_sit_loop",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(2960.9, 5327.1, 100.77),
                heading = 281.68,
                anim = {
                    male = {
                        dict = "rcm_barry3",
                        anim = "barry_3_sit_loop",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "rcm_barry3",
                        anim = "barry_3_sit_loop",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    }
                },
            },
        },
        camera = {
            {
                from = {
                    pos = vec3(-4.557129, 5.593506, 0.123291),
                    rot = vec3(0.000000, -0.000000, -161.577087),
                },
                to = {
                    pos = vec3(0.673340, 3.450073, 0.287018),
                    rot = vec3(0.000000, -0.000000, 148.658493),
                },
                duration = 6000,
            },
            {
                from = {
                    pos = vec3(0.673340, 3.450073, 0.287018),
                    rot = vec3(0.000000, -0.000000, 148.658493),
                },
                to = {
                    pos = vec3(-0.489990, 0.124634, 0.071637),
                    rot = vec3(-15.000000, 0.00000, 136.397980),
                },
                duration = 1000,
            },
        },
        creator = {
            player_offset = { 
                pos = vector3(1.898682, -1.823242, -1.3),
                rot = vector3(0.000000, -0.000000, 42.374008),
            },
            camera_offset = {
                pos = vector3(-0.388477, 0.548706, -0.25),
                rot = vector3(0.000000, -0.000000, -129.544495),
            },
        },
        position = vector3(2965.47, 5326.53, 101.38),
        player_position = vector3(2975.36, 5325.03, 102.09),
        weather = "EXTRASUNNY",
        time = {
            hour = 21,
            minute = 30,
            second = 0,
        },
    },
    ["courthouse"] = {
        models = {},
        seats = {
            {
                pos = vector3(-519.616577, -252.147217, 35.6737289),
                heading = -118.799728,
                anim = {
                    male = {
                        dict = "anim_heist@arcade_combined@",
                        anim = "jimmy@_smoking_idle_01",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "anim_heist@arcade_combined@",
                        anim = "jimmy@_smoking_idle_01",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(-519.036926, -251.154648, 35.244072),
                heading = -175.942444,
                anim = {
                    male = {
                        dict = "amb@prop_human_seat_chair@male@elbows_on_knees@idle_a",
                        anim = "idle_b",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "amb@prop_human_seat_chair@male@elbows_on_knees@idle_a",
                        anim = "idle_b",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(-518.375977, -250.701431, 35.7133942),
                heading = -173.666763,
                anim = {
                    male = {
                        dict = "anim@scripted@freemode_npc@fix_agy_ig1_franklin@",
                        anim = "couch_idle_06_franklin",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "anim@scripted@freemode_npc@fix_agy_ig1_franklin@",
                        anim = "couch_idle_06_franklin",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(-517.728943, -250.424026, 35.3788071),
                heading = -155.292328,
                anim = {
                    male = {
                        dict = "drf_mic_1_cs_2-29",
                        anim = "cs_drfriedlander_dual-29",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "drf_mic_1_cs_2-29",
                        anim = "cs_drfriedlander_dual-29",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    }
                },
            },    
            {
                pos = vector3(-516.570471, -250.681915, 35.6805878),
                heading = 160.621185,
                anim = {
                    male = {
                        dict = "amb@world_human_bum_standing@twitchy@idle_a",
                        anim = "idle_c",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "amb@world_human_bum_standing@twitchy@idle_a",
                        anim = "idle_c",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(-515.161316, -250.834412, 35.664566),
                heading = 157.380356,
                anim = {
                    male = {
                        dict = "amb@world_human_stand_impatient@female@no_sign@idle_a",
                        anim = "idle_c",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "amb@world_human_stand_impatient@female@no_sign@idle_a",
                        anim = "idle_c",
                        idles = {},
                        flags = 1,
                        offset = vec3(0.0, 0.0, -1.0)
                    }
                },
            },
        },
        camera = {
            {
                from = {
                    pos = vec3(-5.843384, -12.583496, 8.011017),
                    rot = vec3(0.000000, -0.000000, 0.09),
                },
                to = {
                    pos = vec3(1.640564, -1.905518, 0.799133),
                    rot = vec3(0.000000, -0.000000, 27.09),
                },
                duration = 6000,
            },
            {
                from = {
                    pos = vec3(1.640564, -1.905518, 0.799133),
                    rot = vec3(0.000000, -0.000000, 27.09),
                },
                to = {
                    pos = vec3(0.840564, -0.105518, 0.599133),
                    rot = vec3(-15.000000, 0.00000, 32.2),
                },
                duration = 1000,
            },
        },
        creator = {
            player_offset = { 
                pos = vector3(1.898682, -1.823242, 0.0),
                rot = vector3(0.000000, -0.000000, 42.374008),
            },
            camera_offset = {
                pos = vector3(0.0, 0.0, 1.0),
                rot = vector3(0.000000, -0.000000, -129.544495),
            },
        },
        position = vector3(-516.19, -254.63, 35.23),
        player_position = vector3(-530.82, -261.6, 35.53),
        weather = "EXTRASUNNY",
        time = {
            hour = 22,
            minute = 30,
            second = 0,
        },
    },
    ["apartment"] = {
        models = {
            {
                model = "hei_heist_str_avunitl_03",
                offset = vector3(0.0, 0.0, -5.0),
                rot = vector3(-1.99999928, 5.76648426e-06, -139.133179),
                dui = {
                    dict = "hei_heist_str_avunitl_03",
                    texture = "script_rt_tvscreen",
                    url = "https://cdn.discordapp.com/icons/718789170885034064/2f5437fa40bca827b997156538ec21d7.webp?size=1024",
                    width = 500,
                    height = 500,
                }
            },
        },
        seats = {
            {
                pos = vector3(-23.4957237, -585.090942, 78.7582016),
                heading = -15.2642393,
                anim = {
                    male = {
                        dict = "amb@prop_human_seat_chair@female@arms_folded@base",
                        anim = "base",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "amb@prop_human_seat_chair@female@arms_folded@base",
                        anim = "base",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(-24.5057468, -584.730591, 78.7582016),
                heading = -19.5738392,
                anim = {
                    male = {
                        dict = "amb@prop_human_seat_chair@male@left_elbow_on_knee@base",
                        anim = "base",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "amb@prop_human_seat_chair@male@left_elbow_on_knee@base",
                        anim = "base",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(-25.385767, -584.34021, 78.7582016),
                heading = -19.5738392,
                anim = {
                    male = {
                        dict = "anim@amb@clubhouse@boardroom@crew@female@var_a@base@",
                        anim = "base",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "anim@amb@clubhouse@boardroom@crew@female@var_a@base@",
                        anim = "base",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(-26.5997143, -584.162537, 79.6472321),
                heading = -60.7853127,
                anim = {
                    male = {
                        dict = "anim@heists@fleeca_bank@ig_7_jetski_owner",
                        anim = "owner_idle",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "anim@heists@fleeca_bank@ig_7_jetski_owner",
                        anim = "owner_idle",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(-25.836628, -582.779541, 78.7275925),
                heading = -107.989311,
                anim = {
                    male = {
                        dict = "amb@prop_human_seat_chair@male@elbows_on_knees@base",
                        anim = "base",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "amb@prop_human_seat_chair@male@elbows_on_knees@base",
                        anim = "base",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(-25.5477009, -581.948975, 78.7010193),
                heading = -120.634712,
                anim = {
                    male = {
                        dict = "amb@prop_human_seat_chair@male@recline_b@base_b",
                        anim = "base_b",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "amb@prop_human_seat_chair@male@recline_b@base_b",
                        anim = "base_b",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(-25.2176933, -581.198242, 78.7010193),
                heading = -120.634712,
                anim = {
                    male = {
                        dict = "anim@amb@clubhouse@seating@male@var_a@base@",
                        anim = "base",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "anim@amb@clubhouse@seating@male@var_a@base@",
                        anim = "base",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    }
                },
            },
        },
        camera = {
            {
                from = {
                    pos = vec3(2.497002, -8.480408, 2.148705),
                    rot = vec3(-11.377890, -0.000008, 11.267631),
                },
                to = {
                    pos = vec3(4.231380, 0.500427, 0.838913),
                    rot = vec3(-11.023539, -0.000014, 95.203400),
                },
                duration = 6000,
            },
            {
                from = {
                    pos = vec3(4.231380, 0.500427, 0.838913),
                    rot = vec3(-11.023539, -0.000014, 95.203400),
                },
                to = {
                    pos = vec3(-0.844566, -0.171570, 0.478477),
                    rot = vec3(-5.157402, -0.000011, 117.170975),
                },
                duration = 1000,
            },
        },
        creator = {
            player_offset = { 
                pos = vector3(1.898682, -1.823242, 0.0),
                rot = vector3(0.000000, -0.000000, 42.374008),
            },
            camera_offset = {
                pos = vector3(0.0, 0.0, 1.0),
                rot = vector3(0.000000, -0.000000, -129.544495),
            },
        },
        position = vector3(-21.76, -581.86, 79.23),
        player_position = vector3(-13.6, -592.46, 79.43),
        weather = "EXTRASUNNY",
        time = {
            hour = 12,
            minute = 30,
            second = 0,
        },
    }, 
    
    
    ["micheal"] = {
        models = {
            {
                model = "prop_tv_flat_michael",
                offset = vector3(0.7, 0.0, 1.0),
                rot = vector3(-1.99999928, 5.76648426e-06, -67.5),
                dui = {
                    dict = "prop_tv_flat_michael",
                    texture = "script_rt_tvscreen",
                    url = "https://cdn.discordapp.com/icons/718789170885034064/2f5437fa40bca827b997156538ec21d7.webp?size=1024",
                    width = 500,
                    height = 500,
                }
            },
        },
        seats = {
            {
                pos = vector3(-803.376526, 170.514801, 73.3046951),
                heading = -59.637001,
                anim = {
                    male = {
                        dict = "anim@heists@fleeca_bank@ig_7_jetski_owner",
                        anim = "owner_idle",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "anim@heists@fleeca_bank@ig_7_jetski_owner",
                        anim = "owner_idle",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(-803.875, 171.362823, 72.3567276),
                heading = -66.117897,
                anim = {
                    male = {
                        dict = "amb@prop_human_seat_chair@male@recline_b@base_b",
                        anim = "base_b",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "amb@prop_human_seat_chair@male@recline_b@base_b",
                        anim = "base_b",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(-804.248413, 172.231628, 72.3397141),
                heading = -59.4130936,
                anim = {
                    male = {
                        dict = "anim@amb@clubhouse@boardroom@crew@female@var_a@base@",
                        anim = "idle_a",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "anim@amb@clubhouse@boardroom@crew@female@var_a@base@",
                        anim = "idle_a",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(-804.61438, 173.148727, 72.3529816),
                heading = -79.2472305,
                anim = {
                    male = {
                        dict = "amb@prop_human_seat_chair@male@left_elbow_on_knee@idle_a",
                        anim = "idle_c",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "amb@prop_human_seat_chair@male@left_elbow_on_knee@idle_a",
                        anim = "idle_c",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(-804.737854, 175.211853, 72.3260345),
                heading = -145.938995,
                anim = {
                    male = {
                        dict = "amb@prop_human_seat_chair@female@arms_folded@base",
                        anim = "base",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "amb@prop_human_seat_chair@female@arms_folded@base",
                        anim = "base",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    }
                },
            },
        },
        camera = {
            -- {
            --     -- from = {
            --     --     pos = vec3(-10.497002, 18.480408, 2.148705),
            --     --     rot = vec3(-11.377890, -0.000008, 11.267631),
            --     -- },
            --     -- to = {
            --     --     pos = vec3(4.231380, 0.500427, 0.838913),
            --     --     rot = vec3(-11.023539, -0.000014, 95.203400),
            --     -- },
            --     from = {
            --         pos = vec3(-0.497002, 0.480408, 2.148705),
            --         rot = vec3(-0.377890, -0.000008, 11.267631),
            --     },
            --     to = {
            --         pos = vec3(0.231380, 0.500427, 0.838913),
            --         rot = vec3(-0.023539, -0.000014, 11.203400),
            --     },
            --     duration = 3000,
            -- },
            {
                from = {
                    pos = vec3(-3.497002, 3.480408, 2.148705),
                    rot = vec3(-0.377890, -0.000008, -90.267631),
                },
                to = {
                    pos = vec3(0.231380, 0.500427, 0.838913),
                    rot = vec3(-0.023539, -0.000014, 117.203400),
                },
                duration = 4500,
            },
            -- {
            --     from = {
            --         pos = vec3(-0.497002, 0.480408, 2.148705),
            --         rot = vec3(-0.377890, -0.000008, 95.267631),
            --     },
            --     to = {
            --         pos = vec3(0.231380, 0.500427, 0.838913),
            --         rot = vec3(-0.023539, -0.000014, 117.203400),
            --     },
            --     duration = 4500,
            -- },
        },
        creator = {
            player_offset = { 
                pos = vector3(-4.898682, -1.023242, -1.0),
                rot = vector3(0.000000, -0.000000, -80.374008),
            },
            camera_offset = {
                pos = vector3(0.0, 0.0, 1.0),
                rot = vector3(0.000000, -0.000000, -129.544495),
            },
        },
        position = vector3(-800.94, 173.89, 73.0),
        player_position = vector3(-798.06, 183.96, 72.61),
        weather = "EXTRASUNNY",
        time = {
            hour = 13,
            minute = 30,
            second = 0,
        },
    },
    ["office"] = {
        models = {
            {
                model = "v_58_soloff_gchair",
                offset = vector3(1.3, 2.9, -0.5),
                rot = vector3(-1.99999928, 5.76648426e-06, -160.5),
            },
        },
        seats = {
            {
                pos = vector3(-1009.17584, -475.596771, 49.551815),
                heading = -147.302002,
                anim = {
                    male = {
                        dict = "amb@prop_human_seat_chair@female@arms_folded@idle_a",
                        anim = "idle_a",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "amb@prop_human_seat_chair@female@arms_folded@idle_a",
                        anim = "idle_a",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(-1007.78699, -475.152679, 50.0278015),
                heading = -160.744446,
                anim = {
                    male = {
                        dict = "anim@amb@casino@out_of_money@ped_male@01b@idles",
                        anim = "idle_d",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "anim@amb@casino@out_of_money@ped_male@01b@idles",
                        anim = "idle_d",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(-1006.41876, -475.175598, 49.5398636),
                heading = 178.300064,
                anim = {
                    male = {
                        dict = "amb@prop_human_seat_chair@male@recline_b@base_b",
                        anim = "base_b",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "amb@prop_human_seat_chair@male@recline_b@base_b",
                        anim = "base_b",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    }
                },
            },
            {
                pos = vector3(-1005.13562, -474.828156, 50.5570679),
                heading = -148.78717,
                anim = {
                    male = {
                        dict = "anim@heists@fleeca_bank@ig_7_jetski_owner",
                        anim = "owner_idle",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    },
                    female = {
                        dict = "anim@heists@fleeca_bank@ig_7_jetski_owner",
                        anim = "owner_idle",
                        idles = {},
                        flags = 1,
                        offset = vector3(0.0, 0.0, -1.0)
                    }
                },
            },
        },
        camera = {
            -- {
            --     -- from = {
            --     --     pos = vec3(-10.497002, 18.480408, 2.148705),
            --     --     rot = vec3(-11.377890, -0.000008, 11.267631),
            --     -- },
            --     -- to = {
            --     --     pos = vec3(4.231380, 0.500427, 0.838913),
            --     --     rot = vec3(-11.023539, -0.000014, 95.203400),
            --     -- },
            --     from = {
            --         pos = vec3(-0.497002, 0.480408, 2.148705),
            --         rot = vec3(-0.377890, -0.000008, 11.267631),
            --     },
            --     to = {
            --         pos = vec3(0.231380, 0.500427, 0.838913),
            --         rot = vec3(-0.023539, -0.000014, 11.203400),
            --     },
            --     duration = 3000,
            -- },
            {
                from = {
                    -- pos = vec3(-0.497002, 3.480408, 2.048705),
                    -- rot = vec3(-0.377890, -0.000008, 0.267631),
                    pos = vec3(5.497002, 0.480408, 2.048705),
                    rot = vec3(-0.377890, -0.000008, 120.267631),
                },
                to = {
                    pos = vec3(0.231380, 0.500427, 0.838913),
                    rot = vec3(-0.023539, -0.000014, 0.203400),
                },
                duration = 4500,
            },
            -- {
            --     from = {
            --         pos = vec3(-0.497002, 0.480408, 2.148705),
            --         rot = vec3(-0.377890, -0.000008, 95.267631),
            --     },
            --     to = {
            --         pos = vec3(0.231380, 0.500427, 0.838913),
            --         rot = vec3(-0.023539, -0.000014, 117.203400),
            --     },
            --     duration = 4500,
            -- },
        },
        creator = {
            player_offset = { 
                pos = vector3(-0.798682, -0.723242, 0.0),
                rot = vector3(0.000000, -0.000000, -80.374008),
            },
            camera_offset = {
                pos = vector3(3.0, 0.0, 1.0),
                rot = vector3(0.000000, -0.000000, -129.544495),
            },
        },
        position = vector3(-1008.39, -478.96, 49.73),
        player_position = vector3(-1002.52, -474.61, 50.03),
        weather = "EXTRASUNNY",
        time = {
            hour = 12,
            minute = 30,
            second = 0,
        },
    },
}

if Config.SelectedLocation == 'random' then 
    local keys = {}
    for k in pairs(SPAWN_LOCATIONS) do table.insert(keys, k) end
    SELECTED_LOCATION = keys[math.random(#keys)]
    print('Selected location: ', SELECTED_LOCATION)
else
    if not SPAWN_LOCATIONS[Config.SelectedLocation] then
        SELECTED_LOCATION = 'random'
    else
        SELECTED_LOCATION = Config.SelectedLocation
    end
end