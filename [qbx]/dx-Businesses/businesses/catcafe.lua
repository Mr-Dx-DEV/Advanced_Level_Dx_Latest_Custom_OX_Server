Businesses["catcafe"] = {
    enabled = true,
    drawmarker = true,
    job = "catcafe",
    dutyzone = {
        zones = {
            vec2(-619.59, -981.03),
            vec2(-550.42, -981.96),
            vec2(-556.89, -1160.28),
            vec2(-623.25, -1159.0)
        },
        autoClock = { enter = true, exit = true },
        label = "UWU Cafe",
    },
    blips = {
        enabled = true,
        label = "UWU Cafe",
        sprite = 621,
        color = 34,
        scale = 0.7,
        coords = vec3(-580.95, -1065.28, 22.35)
    },
    stash = {
        enabled = true,
        label = 'CatCafe Stash',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(-585.79, -1055.93, 22.34)
        },
    },
    traysenabled = true,
    trays = {
        ["catcafe_tray1"] = {
            label = "catcafe Tray 1",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-583.92, -1062.08, 22.46)
            },
            size = vec3(1.0, 1.0, 1.0),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["catcafe_tray2"] = {
            label = "catcafe Tray 2",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-583.98, -1059.51, 22.58)
            },
            size = vec3(1.0, 1.0, 1.0),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        -- ["catcafe_tray3"] = {
        --     label = "catcafe Tray 3",
        --     slots = '20',
        --     weight = '20000',
        --     coords = {
        --         vector3(243.4843, -3161.0471, -0.1301)
        --     },
        --     size = vec3(1.0, 1.0, 1.0),
        --     rotation = 5,
        --     icon = 'fa-solid fa-bowl-food',
        -- },
    },
    props = {
        enabled = false,
        prop = '',
        coords = {},
    },
    crafting = {
        ["ChoppingBoard"] = {
            label = "Chopping Board",
            craftinglabel = 'Preparing',
            craftingtime = '2000',
            coords = {
                vector3(-590.39, -1056.6, 22.36)
            }, -- coordinates for Chopping Board
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "bmochi",
                    ingredients = {
                        ["sugar"] = 1,
                        ["flour"] = 1,
                        ["blueberry"] = 1,
                    }
                },
                [2] = {
                    item = "gmochi",
                    ingredients = {
                        ["sugar"] = 1,
                        ["flour"] = 1,
                        ["mint"] = 1,
                    }
                },
                [3] = {
                    item = "omochi",
                    ingredients = {
                        ["sugar"] = 1,
                        ["flour"] = 1,
                        ["orange"] = 1,
                    }
                },
                [4] = {
                    item = "pmochi",
                    ingredients = {
                        ["sugar"] = 1,
                        ["flour"] = 1,
                        ["strawberry"] = 1,
                    }
                },
                [5] = {
                    item = "riceball",
                    ingredients = {
                        ["rice"] = 1,
                        ["nori"] = 1,
                    }
                },
                [6] = {
                    item = "purrito",
                    ingredients = {
                        ["rice"] = 1,
                        ["flour"] = 1,
                        ["onion"] = 1,
                    }
                },
            }
        },
        
        ["Oven"] = {
            label = "Oven",
            craftinglabel = 'Baking',
            craftingtime = '2000',
            coords = {
                vector3(-590.28, -1059.94, 22.34)
            }, -- coordinates for Oven
            anim = {
                dict = "amb@prop_human_bbq@male@base",
                clip = "base",
            },
            items = {
                [1] = {
                    item = "nekocookie",
                    ingredients = {
                        ["flour"] = 1,
                        ["milk"] = 1,
                    }
                },
                [2] = {
                    item = "nekodonut",
                    ingredients = {
                        ["flour"] = 1,
                        ["milk"] = 1,
                    }
                },
                [3] = {
                    item = "cake",
                    ingredients = {
                        ["flour"] = 1,
                        ["milk"] = 1,
                        ["strawberry"] = 1,
                    }
                },
                [4] = {
                    item = "cakepop",
                    ingredients = {
                        ["flour"] = 1,
                        ["milk"] = 1,
                        ["sugar"] = 1,
                    }
                },
                [5] = {
                    item = "pancake",
                    ingredients = {
                        ["flour"] = 1,
                        ["milk"] = 1,
                        ["strawberry"] = 1,
                    }
                },
                [6] = {
                    item = "pizza",
                    ingredients = {
                        ["flour"] = 1,
                        ["milk"] = 1,
                    }
                },
            }
        },
        
        ["Coffee"] = {
            label = "Coffee Machine",
            craftinglabel = 'Brewing',
            craftingtime = '2000',
            coords = {
                vector3(-586.24, -1062.0, 22.34)
            }, -- coordinates for Coffee Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "catcoffee",
                    ingredients = {},
                },
                [2] = {
                    item = "nekolatte",
                    ingredients = {},
                },
                [3] = {
                    item = "bobatea",
                    ingredients = {
                        ["boba"] = 1,
                        ["milk"] = 1,
                    }
                },
                [4] = {
                    item = "bbobatea",
                    ingredients = {
                        ["boba"] = 1,
                        ["milk"] = 1,
                        ["sugar"] = 1,
                    }
                },
                [5] = {
                    item = "gbobatea",
                    ingredients = {
                        ["boba"] = 1,
                        ["milk"] = 1,
                        ["strawberry"] = 1,
                    }
                },
                [6] = {
                    item = "obobatea",
                    ingredients = {
                        ["boba"] = 1,
                        ["milk"] = 1,
                        ["orange"] = 1,
                    }
                },
                [7] = {
                    item = "pbobatea",
                    ingredients = {
                        ["boba"] = 1,
                        ["milk"] = 1,
                        ["strawberry"] = 1,
                    }
                },
                [8] = {
                    item = "mocha",
                    ingredients = {
                        ["milk"] = 1,
                        ["sugar"] = 1,
                    }
                },
            }
        },
        
        ["Hob"] = {
            label = "Hob",
            craftinglabel = 'Cooking',
            craftingtime = '2000',
            coords = {
                vector3(-588.57, -1059.9, 22.36)
            }, -- coordinates for Hob
            anim = {
                dict = "amb@prop_human_bbq@male@base",
                clip = "base",
            },
            items = {
                [1] = {
                    item = "miso",
                    ingredients = {
                        ["nori"] = 1,
                        ["tofu"] = 1,
                        ["onion"] = 1,
                    }
                },
                [2] = {
                    item = "ramen",
                    ingredients = {
                        ["noodles"] = 1,
                        ["onion"] = 1,
                    }
                },
                [3] = {
                    item = "noodlebowl",
                    ingredients = {
                        ["noodles"] = 1,
                    }
                },
            }
        },
        
    },
    
    ["shop"] = {
        name = "catcafe_shop",
        label = "CatCafe Ingredients Shop",
        items = {
			{ name = 'sugar', price = 0 },
            { name = 'flour', price = 0 },
            { name = 'nori', price = 0 },
            { name = 'tofu', price = 0 },
            { name = 'onion', price = 0 },
            { name = 'boba', price = 0 },
            { name = 'mint', price = 0 },
            { name = 'orange', price = 0 },
            { name = 'strawberry', price = 0 },
            { name = 'blueberry', price = 0 },
            { name = 'milk', price = 0 },
            { name = 'rice', price = 0 },
            { name = 'sake', price = 0 },
            { name = 'noodles', price = 0 }

        },
        coords = vector4(-592.09, -1058.61, 22.34, 93.09),
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