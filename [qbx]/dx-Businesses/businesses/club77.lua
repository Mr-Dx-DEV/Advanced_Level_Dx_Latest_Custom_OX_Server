Businesses["club77"] = {
    enabled = true,
    drawmarker = true,
    job = "club77",
    dutyzone = {
        zones = {
            vec2(181.92, -3119.83),
            vec2(295.65, -3119.15),
            vec2(294.81, -3325.41),
            vec2(165.04, -3332.18)
        },
        autoClock = { enter = true, exit = true },
        label = "Club 77",
    },
    blips = {
        enabled = true,
        label = "Club 77",
        sprite = 136,
        color = 48,
        scale = 0.7,
        coords = vec3(249.02, -3178.0, -0.71)
    },
    stash = {
        enabled = true,
        label = 'Club77 Stash',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(257.06, -3157.55, -0.19),
            vector3(251.64, -3157.25, -0.19)
        },
    },
    props = {
        enabled = false,
        prop = '',
        coords = {},
    },
    traysenabled = true,
    trays = {
        ["club77_tray1"] = {
            label = "Club77 Tray 1",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(250.136, -3162.6135, -0.1303)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["club77_tray2"] = {
            label = "Club77 Tray 2",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(247.2386, -3162.708, -0.1082)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["club77_tray3"] = {
            label = "Club77 Tray 3",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(243.4843, -3161.0471, -0.1301)
            },
            size = vec3(0.5, 0.5, 0.5),
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
                vector3(245.95, -3161.53, -0.19),  -- Example coordinates, adjust as needed
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "club77_sunsetmartini",
                    ingredients = {
                        ["cranberry"] = 1,
                        ["gin"] = 1,
                    }
                },
                [2] = {
                    item = "club77_docksidebreeze",
                    ingredients = {
                        ["rum"] = 1,
                        ["amaretto"] = 1,
                        ["vodka"] = 1,
                    }
                },
                [3] = {
                    item = "club77_77sour",
                    ingredients = {
                        ["midori"] = 1,
                        ["vodka"] = 1,
                    }
                },
                [4] = {
                    item = "amarettosour",
                    ingredients = {
                        ["amaretto"] = 1,
                        ["lemon"] = 1,
                    }
                },
                [5] = {
                    item = "bellini",
                    ingredients = {
                        ["prosecco"] = 1,
                        ["peach"] = 1,
                    }
                },
                [6] = {
                    item = "cosmopolitan",
                    ingredients = {
                        ["vodka"] = 1,
                        ["orange"] = 1,
                        ["cranberry"] = 1,
                        ["cubasil"] = 1,
                    }
                },
                [7] = {
                    item = "longisland",
                    ingredients = {
                        ["gin"] = 1,
                        ["tequila"] = 1,
                        ["vodka"] = 1,
                        ["ecola"] = 1,
                        ["lemon"] = 1,
                    }
                },
                [8] = {
                    item = "margarita",
                    ingredients = {
                        ["tequila"] = 1,
                        ["lime"] = 1,
                        ["orange"] = 1,
                    }
                },
                [9] = {
                    item = "pinacolada",
                    ingredients = {
                        ["rum"] = 1,
                        ["pinejuice"] = 1,
                    }
                },
                [10] = {
                    item = "sangria",
                    ingredients = {
                        ["prosecco"] = 1,
                        ["sprunk"] = 1,
                        ["orange"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
                [11] = {
                    item = "screwdriver_drink",
                    ingredients = {
                        ["vodka"] = 1,
                        ["orange"] = 1,
                    }
                },
                [12] = {
                    item = "strawdaquiri",
                    ingredients = {
                        ["rum"] = 1,
                        ["strawberry"] = 1,
                    }
                },
                [13] = {
                    item = "strawmargarita",
                    ingredients = {
                        ["tequila"] = 1,
                        ["strawberry"] = 1,
                        ["rum"] = 1,
                    }
                },
                [14] = {
                    item = "water_bottle",
                    ingredients = {},
                },
            },
        },
        
        ["Food"] = {
            label = "Food",
            craftinglabel = 'Cooking',
            craftingtime = '2000',
            coords = {
                vector3(243.98, -3160.46, -0.19),  -- Example coordinates, adjust as needed
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "club77_raveroll",
                    ingredients = {
                        ["cubasil"] = 1,
                        ["nachos"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [2] = {
                    item = "club77_docksidedelights",
                    ingredients = {
                        ["cheddar"] = 1,
                        ["chocolate"] = 1,
                        ["nachos"] = 1,
                    }
                },
                [3] = {
                    item = "club77_portsantosporterhouse",
                    ingredients = {
                        ["nachos"] = 1,
                        ["cubasil"] = 1,
                        ["cheddar"] = 1,
                    }
                },
                [4] = {
                    item = "vusliders",
                    ingredients = {
                        ["meat"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [5] = {
                    item = "vutacos",
                    ingredients = {
                        ["meat"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [6] = {
                    item = "nplate",
                    ingredients = {
                        ["nachos"] = 1,
                        ["cheddar"] = 1,
                    }
                },
                [7] = {
                    item = "tots",
                    ingredients = {
                        ["potato"] = 1,
                    }
                },
            },
        },
        
        ["Beer"] = {
            label = "Beer",
            craftinglabel = 'Brewing',
            craftingtime = '2000',
            coords = {
                vector3(249.56, -3161.17, -0.19),  -- Example coordinates, adjust as needed
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
        
        ["Coffee"] = {
            label = "Coffee",
            craftinglabel = 'Brewing',
            craftingtime = '2000',
            coords = {
                vector3(244.28, -3158.47, -0.19),  -- Example coordinates, adjust as needed
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "lemon",
                    ingredients = {},
                },
            },
        },
        
        
    },    
    ["shop"] = {
        name = "club77_shop",
        label = "Club77 Ingredients",
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
        coords = vector4(260.52, -3160.53, -0.19, 357.76),
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