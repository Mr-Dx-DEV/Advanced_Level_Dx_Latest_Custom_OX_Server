Businesses["verspuccibeachbar"] = {
    enabled = true,
    drawmarker = true,
    job = "verspuccibeachbar",
    dutyzone = {
        zones = {
            vec2(-1381.75, -1286.56),
            vec2(-1430.84, -1178.74),
            vec2(-1606.72, -1267.36),
            vec2(-1569.06, -1387.47)
        },
        autoClock = { enter = true, exit = true },
        label = "Vespucci Beach Bar",
    },
    blips = {
        enabled = true,
        label = "Vespucci Beach Bar",
        sprite = 914,
        color = 18,
        scale = 0.7,
        coords = vec3(-1428.0, -1261.59, 3.59)
    },
    stash = {
        enabled = true,
        label = 'Vespucci Beach Bar Stash',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(-1428.0, -1261.59, 3.59)
        },
    },
    props = {
        enabled = false,
        prop = '',
        coords = {},
    },
    traysenabled = true,
    trays = {
        ["verspuccibeachbar_tray1"] = {
            label = "Verspucci Beach Tray 1",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-1428.34, -1259.66, 3.85)
            },
            size = vec3(1.5, 1.5, 1.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["verspuccibeachbar_tray2"] = {
            label = "Verspucci Beach Tray 2",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-1431.05, -1265.08, 3.71)
            },
            size = vec3(1.5, 1.5, 1.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["verspuccibeachbar_tray3"] = {
            label = "Verspucci Beach Tray 3",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-1459.23, -1232.33, 3.25)
            },
            size = vec3(1.5, 1.5, 1.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["verspuccibeachbar_tray4"] = {
            label = "Verspucci Beach Tray 4",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-1558.97, -1292.41, 1.99)
            },
            size = vec3(1.5, 1.5, 1.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
    },
    crafting = {
        ["Cocktails"] = {
            label = "Cocktails",
            craftinglabel = 'Mixing',
            craftingtime = '2000',
            coords = {
                vector3(-1429.38, -1263.04, 3.58),  -- Example coordinates, adjust as needed
                vector3(-1457.76, -1232.41, 3.29),
                vector3(-1559.21, -1294.66, 1.71),
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "vbb_swrecked",
                    ingredients = {
                        ["cranberry"] = 1,
                        ["gin"] = 1,
                    }
                },
                [2] = {
                    item = "vbb_gsunset",
                    ingredients = {
                        ["rum"] = 1,
                        ["amaretto"] = 1,
                        ["vodka"] = 1,
                    }
                },
                [3] = {
                    item = "vbb_mhawaiian",
                    ingredients = {
                        ["midori"] = 1,
                        ["vodka"] = 1,
                    }
                },
                [4] = {
                    item = "vbb_cbreeze",
                    ingredients = {
                        ["amaretto"] = 1,
                        ["lemon"] = 1,
                    }
                },
                -- [5] = {
                --     item = "bellini",
                --     ingredients = {
                --         ["prosecco"] = 1,
                --         ["peach"] = 1,
                --     }
                -- },
                -- [6] = {
                --     item = "cosmopolitan",
                --     ingredients = {
                --         ["vodka"] = 1,
                --         ["orange"] = 1,
                --         ["cranberry"] = 1,
                --         ["cubasil"] = 1,
                --     }
                -- },
                -- [7] = {
                --     item = "longisland",
                --     ingredients = {
                --         ["gin"] = 1,
                --         ["tequila"] = 1,
                --         ["vodka"] = 1,
                --         ["ecola"] = 1,
                --         ["lemon"] = 1,
                --     }
                -- },
                -- [8] = {
                --     item = "margarita",
                --     ingredients = {
                --         ["tequila"] = 1,
                --         ["lime"] = 1,
                --         ["orange"] = 1,
                --     }
                -- },
                -- [9] = {
                --     item = "pinacolada",
                --     ingredients = {
                --         ["rum"] = 1,
                --         ["pinejuice"] = 1,
                --     }
                -- },
                -- [10] = {
                --     item = "sangria",
                --     ingredients = {
                --         ["prosecco"] = 1,
                --         ["sprunk"] = 1,
                --         ["orange"] = 1,
                --         ["mintleaf"] = 1,
                --     }
                -- },
                -- [11] = {
                --     item = "screwdriver_drink",
                --     ingredients = {
                --         ["vodka"] = 1,
                --         ["orange"] = 1,
                --     }
                -- },
                -- [12] = {
                --     item = "strawdaquiri",
                --     ingredients = {
                --         ["rum"] = 1,
                --         ["strawberry"] = 1,
                --     }
                -- },
                -- [13] = {
                --     item = "strawmargarita",
                --     ingredients = {
                --         ["tequila"] = 1,
                --         ["strawberry"] = 1,
                --         ["rum"] = 1,
                --     }
                -- },
                -- [14] = {
                --     item = "water_bottle",
                --     ingredients = {},
                -- },
            },
        },
        
        ["Food"] = {
            label = "Food",
            craftinglabel = 'Cooking',
            craftingtime = '2000',
            coords = {
                vector3(-1427.4, -1265.21, 3.67),  -- Example coordinates, adjust as needed
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "vbb_odelight",
                    ingredients = {
                        ["cubasil"] = 1,
                        ["nachos"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [2] = {
                    item = "vbb_mfeast",
                    ingredients = {
                        ["cheddar"] = 1,
                        ["chocolate"] = 1,
                        ["nachos"] = 1,
                    }
                },
                [3] = {
                    item = "vbb_abites",
                    ingredients = {
                        ["nachos"] = 1,
                        ["cubasil"] = 1,
                        ["cheddar"] = 1,
                    }
                },
                [4] = {
                    item = "vbb_wwave",
                    ingredients = {
                        ["meat"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [5] = {
                    item = "vbb_poysters",
                    ingredients = {
                        ["meat"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [6] = {
                    item = "vbb_ttreasures",
                    ingredients = {
                        ["nachos"] = 1,
                        ["cheddar"] = 1,
                    }
                },
                [7] = {
                    item = "vbb_ccrew",
                    ingredients = {
                        ["potato"] = 1,
                    }
                },
                [8] = {
                    item = "vbb_ccravings",
                    ingredients = {
                        ["meat"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [9] = {
                    item = "vbb_ssnacks",
                    ingredients = {
                        ["meat"] = 1,
                        ["lettuce"] = 1,
                    }
                },
            },
        },
        
        -- ["Beer"] = {
        --     label = "Beer",
        --     craftinglabel = 'Brewing',
        --     craftingtime = '2000',
        --     coords = {
        --         vector3(-1426.09, -1262.79, 3.61),  -- Example coordinates, adjust as needed
        --     },
        --     anim = {
        --         dict = "anim@heists@prison_heiststation@cop_reactions",
        --         clip = "cop_b_idle",
        --     },
        --     items = {
        --         [1] = {
        --             item = "ambeer",
        --             ingredients = {},
        --         },
        --         [2] = {
        --             item = "dusche",
        --             ingredients = {},
        --         },
        --         [3] = {
        --             item = "logger",
        --             ingredients = {},
        --         },
        --         [4] = {
        --             item = "pisswasser",
        --             ingredients = {},
        --         },
        --         [5] = {
        --             item = "pisswasser2",
        --             ingredients = {},
        --         },
        --         [6] = {
        --             item = "pisswasser3",
        --             ingredients = {},
        --         },
        --         [7] = {
        --             item = "vbb_swrecked",
        --             ingredients = {},
        --         },
        --         [8] = {
        --             item = "vbb_gsunset",
        --             ingredients = {},
        --         },
        --         [9] = {
        --             item = "vbb_mhawaiian",
        --             ingredients = {},
        --         },
        --     },
        -- },
        
        
        
        
    },    
    ["shop"] = {
        name = "verspuccibeachbar_shop",
        label = "Vespucci Beach Bar Ingredients",
        items = {
            --Drink Stuff
            { name = 'cranberry', price = 0 },
            { name = 'gin', price = 0 },
            { name = 'rum', price = 0 },
            { name = 'amaretto', price = 0 },
            { name = 'vodka', price = 0 },
            { name = 'midori', price = 0 },
            { name = 'lemon', price = 0 },
            { name = 'prosecco', price = 0 },
            { name = 'tequila', price = 0 },
            { name = 'triplsec', price = 0 },
            { name = 'sprunk', price = 0 },
            { name = 'sprunklight', price = 0 },
            { name = 'ecola', price = 0 },
            { name = 'ecolalight', price = 0 },
            { name = 'crisps', price = 0 },
            { name = 'orange', price = 0 },
            { name = 'lime', price = 0 },
            { name = 'pinejuice', price = 0 },

            -- Food Stuff
            { name = 'cubasil', price = 0 },
            { name = 'nachos', price = 0 },
            { name = 'potato', price = 0 },
            { name = 'lettuce', price = 0 },
            { name = 'cheddar', price = 0 },
            { name = 'chocolate', price = 0 },
            { name = 'orange', price = 0 },
            { name = 'lime', price = 0 },
            { name = 'lemon', price = 0 },
            { name = 'crisps', price = 0 },
            { name = 'mintleaf', price = 0 },
            { name = 'peach', price = 0 },
            { name = 'strawberry', price = 0 },
            { name = 'meat', price = 0 }
        },
        coords = vector4(-1425.07, -1268.15, 3.92, 67.38),
        ped = {
            ped = 'a_m_y_smartcaspat_01',
            scenario = "WORLD_HUMAN_HANG_OUT_STREET_CLUBHOUSE",
        },
        target = {
            radius = 1.5,
            targetIcon = "fa-solid fa-bowl-food",
            targetLabel = "Ingredients Shop",
            canInteract = function()
                return true
            end,
        }
    }
}