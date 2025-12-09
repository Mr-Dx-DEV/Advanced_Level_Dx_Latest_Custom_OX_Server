Businesses["crumblcafe"] = {
    enabled = true,
    drawmarker = false,
    job = "crumblcafe",
    dutyzone = {
        zones = {
            vector2(-1454.5, -572.45),
            vector2(-1474.71, -543.35),
            vector2(-1477.51, -542.11),
            vector2(-1482.27, -535.32),
            vector2(-1481.54, -528.85),
            vector2(-1473.92, -523.66),
            vector2(-1470.0, -523.61),
            vector2(-1448.28, -508.82),
            vector2(-1434.38, -528.95),
            vector2(-1437.48, -543.29),
            vector2(-1445.66, -549.03),
            vector2(-1447.26, -568.17)
        },
        autoClock = { enter = true, exit = true },
        label = "Crumbl Cafe",
    },
    blips = {
        enabled = true,
        label = "Crumbl Cafe",
        sprite = 621,
        color = 23,
        scale = 0.7,
        coords = vector3(-1444.12, -542.23, 34.74)
    },
    stash = {
        enabled = true,
        label = 'Crumbl Cafe Fridge',
        slots = '40',
        weight = '800000',
        coords = {
            vector3(-1462.594, -538.278, 85.808),
            vector3(-1451.115, -565.769, 85.227)          
        },
    },
    props = {
        enabled = false,
        prop = 'prop_fridge_03',
        coords = {
            vector4(298.59, -923.14, 58.37, 90.6)
        },
    },
    traysenabled = true,
    trays = {
        ["Tray1"] = {
            label = "Crumbl Cafe Tray 1",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-1456.78, -542.60, 85.84)
            },
            size = vec3(0.5, 0.6, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["Tray2"] = {
            label = "Crumbl Cafe Tray 2",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-1455.58, -541.73, 85.84)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["Tray3"] = {
            label = "Crumbl Cafe Tray 3",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-1458.90, -544.06, 85.84)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["Tray4"] = {
            label = "Crumbl Cafe Tray 4",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-1454.881, -566.339, 85.227)
            },
            size = vec3(0.9, 0.9, 0.9),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
    },
    crafting = {
        ["Cooker"] = {
            label = "Cooker",
            craftinglabel = 'Cooking',
            craftingtime = '2000',
            coords = {
                vector3(-1460.7, -540.65, 85.81)
            }, -- coordinates for food Station
            anim = {
                dict = "amb@prop_human_bbq@male@base",
                clip = "base",
            },
            items = {
                [1] = {
                    item = "crumbl_cookie",
                    ingredients = {
                        ["flour"] = 1,
                        ["chocolatechips"] = 1,
                    }
                },
                [2] = {
                    item = "crumbl_choc_muffin",
                    ingredients = {
                        ["flour"] = 1,
                        ["chocolatechips"] = 1,
                    }
                },
                [3] = {
                    item = "crumbl_panini",
                    ingredients = {
                        ["raw_chicken"] = 1,
                        ["cheddar"] = 1,
                    }
                },
                [4] = {
                    item = "crumbl_warpchicken",
                    ingredients = {
                        ["raw_chicken"] = 1,
                        ["cheddar"] = 1,
                        ["flour"] = 1,
                        ["lime"] = 1,
                        ["cubasil"] = 1,
                    }
                },
                [5] = {
                    item = "crumbl_warpsalmon",
                    ingredients = {
                        ["raw_chicken"] = 1,
                        ["cheddar"] = 1,
                        ["flour"] = 1,
                        ["lime"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
            }
        },
        ["Icecream"] = {
            label = "Icecream",
            craftinglabel = 'Scooping',
            craftingtime = '2000',
            coords = {
                vector3(-1458.73, -538.43, 85.81)
            }, -- coordinates for food Station
            anim = {
                dict = "amb@prop_human_bbq@male@base",
                clip = "base",
            },
            items = {
                [1] = {
                    item = "crumbl_icecream_chocolate",
                    ingredients = {
                        ["icecream_cone"] = 1,
                    }
                },
                [2] = {
                    item = "crumbl_icecream_vanilla",
                    ingredients = {
                        ["icecream_cone"] = 1,
                    }
                },
                [3] = {
                    item = "crumbl_icecream_strawberry",
                    ingredients = {
                        ["icecream_cone"] = 1,
                    }
                },
                [3] = {
                    item = "crumbl_icecream_mint",
                    ingredients = {
                        ["icecream_cone"] = 1,
                    }
                },
            }
        },
        ["Drink"] = {
            label = "Drinks Dispenser",
            craftinglabel = 'Pouring',
            craftingtime = '1500',
            coords = {
                vector3(-1457.587, -535.747, 85.808)
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "water_bottle",
                    ingredients = {}
                },
                [2] = {
                    item = "bscoke",
                    ingredients = {}
                },
                [3] = {
                    item = "crumbl_milkshake_chocolate",
                    ingredients = {
                        ['milk'] = 1,
                        ['icecream'] = 1,
                        ['chocolate'] = 1,
                    }
                },
                [4] = {
                    item = "crumbl_milkshake_strawberry",
                    ingredients = {
                        ['milk'] = 1,
                        ['icecream'] = 1,
                        ['strawberry'] = 1,
                    }
                },
                [5] = {
                    item = "crumbl_milkshake_vanilla",
                    ingredients = {
                        ['milk'] = 1,
                        ['icecream'] = 1,
                        ['vanilla_extract'] = 1,
                    }
                },
                [6] = {
                    item = "crumbl_bubble_milk",
                    ingredients = {
                        ['milk'] = 1,
                        ['sprunk'] = 1,
                        ['vanilla_extract'] = 1,
                    }
                },
                [7] = {
                    item = "crumbl_bubble_orange",
                    ingredients = {
                        ['milk'] = 1,
                        ['orange'] = 1,
                        ['sprunklight'] = 1,
                    }
                },
                [8] = {
                    item = "crumbl_bubble_purple",
                    ingredients = {
                        ['milk'] = 1,
                        ['cranberry'] = 1,
                        ['vanilla_extract'] = 1,
                    }
                },
            }
        },
        ["Cocktails"] = {
            label = "Cocktails",
            craftinglabel = 'Mixing',
            craftingtime = '4000',
            coords = {
                vector3(-1452.73, -564.76, 85.23)
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "amarettosour",
                    ingredients = {
                        ["amaretto"] = 1,
                        ["lemon"] = 1,
                    }
                },
                [2] = {
                    item = "bellini",
                    ingredients = {
                        ["prosecco"] = 1,
                        ["peach"] = 1,
                    }
                },
                [3] = {
                    item = "cosmopolitan",
                    ingredients = {
                        ["vodka"] = 1,
                        ["orange"] = 1,
                        ["cranberry"] = 1,
                        ["cubasil"] = 1,
                    }
                },
                [4] = {
                    item = "longisland",
                    ingredients = {
                        ["gin"] = 1,
                        ["tequila"] = 1,
                        ["vodka"] = 1,
                        ["ecola"] = 1,
                        ["lemon"] = 1,
                    }
                },
                [5] = {
                    item = "margarita",
                    ingredients = {
                        ["tequila"] = 1,
                        ["lime"] = 1,
                        ["orange"] = 1,
                    }
                },
                [6] = {
                    item = "pinacolada",
                    ingredients = {
                        ['rum'] = 1, 
                        ['pinejuice'] = 1,
                    }
                },
                [7] = {
                    item = "sangria",
                    ingredients = {
                        ['prosecco'] = 1,
                        ['sprunk'] = 1,
                        ['orange'] = 1,
                        ['mintleaf'] = 1,
                    }
                },
                [8] = {
                    item = "screwdriver_drink",
                    ingredients = {
                        ['vodka'] = 1,
                        ['orange'] = 1,
                    }
                },
                [9] = {
                    item = "strawdaquiri",
                    ingredients = {
                        ['rum'] = 1,
                        ['strawberry'] = 1,
                    }
                },
                [10] = {
                    item = "strawmargarita",
                    ingredients = {
                        ['tequila'] = 1,
                        ['strawberry'] = 1,
                    }
                },
            }
        },
    },
    ["shop"] = {
        name = "crumbl_shop",
        label = "Crumbl Cafe Ingredients Shop",
        items = {
            --Drink Stuff
            { name = 'cranberry', price = 0 },
            { name = 'gin', price = 0 },
            { name = 'rum', price = 0 },
            { name = 'amaretto', price = 0 },
            { name = 'vodka', price = 0 },
            { name = 'midori', price = 0 },
            { name = 'lemon', price = 0 },
            { name = 'mintleaf', price = 0 },
            { name = 'cubasil', price = 0 },
            { name = 'peach', price = 0 },
            { name = 'strawberry', price = 0 },
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
            { name = 'raw_chicken', price = 0 },
			{ name = 'cheddar', price = 0 },
			{ name = 'icecream_cone', price = 0 },
			{ name = 'flour', price = 0 },
			{ name = 'vanilla_extract', price = 0 },
			{ name = 'chocolatechips', price = 0 },
			{ name = 'chocolate', price = 0 },
			{ name = 'strawberry', price = 0 },
			{ name = 'milk', price = 0  },
			{ name = 'icecream', price = 0  },
        },
        coords = vector4(-1459.38, -531.79, 85.13, 123.6),
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