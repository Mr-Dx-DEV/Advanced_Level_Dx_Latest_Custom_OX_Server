Businesses["rollinstonelanes"] = {
    enabled = true,
    drawmarker = true,
    job = "rollinstonelanes",
    dutyzone = {
        zones = {
            vec2(1851.0, 3726.01),
            vec2(1789.37, 3691.21),
            vec2(1751.62, 3751.68),
            vec2(1817.78, 3790.97)
        },
        autoClock = { enter = true, exit = true },
        label = "Rollin Stone Lanes",
    },
    blips = {
        enabled = true,
        label = "Rollin Stone Lanes",
        sprite = 136,
        color = 48,
        scale = 0.7,
        coords = vec3(1803.25, 3729.58, 35.0)
    },
    stash = {
        enabled = true,
        label = 'Rollin Stone Lanes Stash',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(1780.16, 3717.3, 35.38)
        },
    },
    props = {
        enabled = false,
        prop = '',
        coords = {},
    },
    traysenabled = true,
    trays = {
        ["rollinstonelanes_tray1"] = {
            label = "Rollin Stone Lanes Tray 1",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(1789.16, 3720.01, 35.66)
            },
            size = vec3(1.5, 1.5, 1.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["rollinstonelanes_tray2"] = {
            label = "Rollin Stone Lanes Tray 2",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(1787.08, 3719.01, 35.54)
            },
            size = vec3(1.5, 1.5, 1.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["rollinstonelanes_tray3"] = {
            label = "Rollin Stone Lanes Tray 3",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(1784.61, 3717.13, 35.57)
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
                vector3(1787.88, 3717.48, 35.38),  -- Example coordinates, adjust as needed
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "pin_punch",
                    ingredients = {
                        ["cranberry"] = 1,
                        ["gin"] = 1,
                    }
                },
                [2] = {
                    item = "bowl_aid_blast",
                    ingredients = {
                        ["rum"] = 1,
                        ["amaretto"] = 1,
                        ["vodka"] = 1,
                    }
                },
                [3] = {
                    item = "lane_lemonade",
                    ingredients = {
                        ["midori"] = 1,
                        ["vodka"] = 1,
                    }
                },
                -- [4] = {
                --     item = "amarettosour",
                --     ingredients = {
                --         ["amaretto"] = 1,
                --         ["lemon"] = 1,
                --     }
                -- },
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
                vector3(1784.47, 3715.43, 35.38),  -- Example coordinates, adjust as needed
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "alley_rings",
                    ingredients = {
                        ["cubasil"] = 1,
                        ["nachos"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [2] = {
                    item = "rolling_pins",
                    ingredients = {
                        ["cheddar"] = 1,
                        ["chocolate"] = 1,
                        ["nachos"] = 1,
                    }
                },
                [3] = {
                    item = "gutter_sundae",
                    ingredients = {
                        ["nachos"] = 1,
                        ["cubasil"] = 1,
                        ["cheddar"] = 1,
                    }
                },
                -- [4] = {
                --     item = "vusliders",
                --     ingredients = {
                --         ["meat"] = 1,
                --         ["lettuce"] = 1,
                --     }
                -- },
                -- [5] = {
                --     item = "vutacos",
                --     ingredients = {
                --         ["meat"] = 1,
                --         ["lettuce"] = 1,
                --     }
                -- },
                -- [6] = {
                --     item = "nplate",
                --     ingredients = {
                --         ["nachos"] = 1,
                --         ["cheddar"] = 1,
                --     }
                -- },
                -- [7] = {
                --     item = "tots",
                --     ingredients = {
                --         ["potato"] = 1,
                --     }
                -- },
            },
        },
        
        ["Beer"] = {
            label = "Beer",
            craftinglabel = 'Brewing',
            craftingtime = '2000',
            coords = {
                vector3(1790.13, 3718.77, 35.38),  -- Example coordinates, adjust as needed
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "ambeer",
                    ingredients = {},
                },
                [2] = {
                    item = "dusche",
                    ingredients = {},
                },
                [3] = {
                    item = "logger",
                    ingredients = {},
                },
                [4] = {
                    item = "pisswasser",
                    ingredients = {},
                },
                [5] = {
                    item = "pisswasser2",
                    ingredients = {},
                },
                [6] = {
                    item = "pisswasser3",
                    ingredients = {},
                },
            },
        },
        
       
        
        
    },    
    ["shop"] = {
        name = "rollinstonelanes_shop",
        label = "rollinstonelanes Ingredients",
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
        coords = vector4(1779.78, 3718.62, 35.38, 211.69),
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