Businesses["coffeeshop"] = {
    enabled = true,
    drawmarker = true,
    job = "coffeeshop",
    dutyzone = {
        zones = {
            vector2(-149.6127, -108.1592),
            vector2(-151.4299, -113.4853),
            vector2(-156.6201, -111.743),
            vector2(-157.7597, -114.6435),
            vector2(-154.1003, -115.9861),
            vector2(-155.2654, -119.4746),
            vector2(-149.7783, -121.4265),
            vector2(-153.1968, -131.058),
            vector2(-156.416, -134.9506),
            vector2(-161.1801, -136.0403),
            vector2(-170.8898, -132.6132),
            vector2(-170.4769, -124.927),
            vector2(-167.0762, -115.3058),
            vector2(-165.2553, -115.9225),
            vector2(-163.9814, -112.4588),
            vector2(-160.9683, -113.5181),
            vector2(-158.1322, -105.4707),

        },
        autoClock = { enter = true, exit = true },
        label = "Coffee Shop",
    },
    blips = {
        enabled = true,
        label = "Coffee Shop",
        sprite = 89,
        color = 48,
        scale = 0.7,
        coords = vector3(-162.06, -124.11, 54.77)
    },
    stash = {
        enabled = true,
        label = 'Coffee Shop Stash',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(-152.07, -122.68, 54.77),
            vector3(-154.11, -128.46, 54.77)
        },
    },
    traysenabled = true,
    trays = {
        ["coffeeshop_Tray1"] = {
            label = "Coffee Shop Tray 1",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-154.2193, -126.6378, 54.9711)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["coffeeshop_Tray2"] = {
            label = "Coffee Shop Tray 2",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-153.351, -124.1246, 54.9711)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
    },
    props = {
        enabled = false,
        prop = '',
        coords = {
        },
    },
    crafting = {
        ["ChoppingBoard"] = {
            label = "Chopping Board",
            craftinglabel = 'Preparing',
            craftingtime = '2000',
            coords = {
                vector3(-153.12, -127.55, 54.77)
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
                vector3(-152.89, -126.78, 54.77)
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
                vector3(-152.02, -124.09, 54.77)
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
                vector3(-152.6, -126.0, 54.77)
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
        name = "coffeeshop_cafe_shop",
        label = "Coffee Shop Ingredients Shop",
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
        coords = vector4(-150.9, -123.25, 54.77, 68.87),
        ped = {
            ped = 'a_m_y_smartcaspat_01',
            scenario = "WORLD_HUMAN_HANG_OUT_STREET_CLUBHOUSE",
        },
        target = {
            radius = 1.5,
            targetIcon = "fas fa-wine-bottle",
            targetLabel = "Ingredients Shop",
            canInteract = function()
                return true
            end,
        }
    }
}