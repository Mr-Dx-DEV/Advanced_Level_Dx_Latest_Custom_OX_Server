Businesses["bahamamamas"] = {
    enabled = true,
    drawmarker = true,
    job = "bahamamamas",
    dutyzone = {
        zones = {
            vector2(-1380.006, -577.435),
            vector2(-1420.65, -599.007),
            vector2(-1389.024, -646.044),
            vector2(-1354.894, -622.414)
        },
        autoClock = { enter = true, exit = true },
        label = "Bahama Mamas",
    },
    blips = {
        enabled = true,
        label = "Bahama Mamas",
        sprite = 93,
        color = 61,
        scale = 0.7,
        coords = vec3(-1388.4033, -601.7298, 29.214)
    },
    stash = {
        enabled = true,
        label = 'Bahama Mamas Stash',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(-1379.71, -592.08, 30.22)
        },
    },
    props = {
        enabled = false,
        prop = '',
        coords = {},
    },
    traysenabled = true,
    trays = {
        ["bahamamamas_tray1"] = {
            label = "Bahama Mamas Tray 1",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-1379.16, -600.11, 30.48)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["bahamamamas_tray2"] = {
            label = "Bahama Mamas Tray 2",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-1380.93, -597.51, 30.47)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["bahamamamas_tray3"] = {
            label = "Bahama Mamas Tray 3",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-1383.15, -594.01, 30.51)
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
                vector3(-1380.4, -595.84, 30.22),  -- Example coordinates, adjust as needed
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "amarettosour",
                    ingredients = {
                        ["cranberry"] = 1,
                        ["gin"] = 1,
                    }
                },
                [2] = {
                    item = "bellini",
                    ingredients = {
                        ["rum"] = 1,
                        ["amaretto"] = 1,
                        ["vodka"] = 1,
                    }
                },
                [3] = {
                    item = "cosmopolitan",
                    ingredients = {
                        ["midori"] = 1,
                        ["vodka"] = 1,
                    }
                },
                [4] = {
                    item = "longisland",
                    ingredients = {
                        ["amaretto"] = 1,
                        ["lemon"] = 1,
                    }
                },
                [5] = {
                    item = "margarita",
                    ingredients = {
                        ["prosecco"] = 1,
                        ["peach"] = 1,
                    }
                },
                [6] = {
                    item = "pinacolada",
                    ingredients = {
                        ["vodka"] = 1,
                        ["orange"] = 1,
                        ["cranberry"] = 1,
                        ["cubasil"] = 1,
                    }
                },
                [7] = {
                    item = "sangria",
                    ingredients = {
                        ["gin"] = 1,
                        ["tequila"] = 1,
                        ["vodka"] = 1,
                        ["ecola"] = 1,
                        ["lemon"] = 1,
                    }
                },
                [8] = {
                    item = "screwdriver_drink",
                    ingredients = {
                        ["tequila"] = 1,
                        ["lime"] = 1,
                        ["orange"] = 1,
                    }
                },
                [9] = {
                    item = "strawdaquiri",
                    ingredients = {
                        ["rum"] = 1,
                        ["pinejuice"] = 1,
                    }
                },
                [10] = {
                    item = "strawmargarita",
                    ingredients = {
                        ["prosecco"] = 1,
                        ["sprunk"] = 1,
                        ["orange"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
                [11] = {
                    item = "bahama_moneyshot",
                    ingredients = {
                        ["vodka"] = 1,
                        ["orange"] = 1,
                    }
                },
                [12] = {
                    item = "bahama_mamassweettea",
                    ingredients = {
                        ["rum"] = 1,
                        ["strawberry"] = 1,
                    }
                },
                [13] = {
                    item = "bahama_bahamamamatraumatripleslipperynipple",
                    ingredients = {
                        ["tequila"] = 1,
                        ["strawberry"] = 1,
                        ["rum"] = 1,
                    }
                },
                [14] = {
                    item = "bahama_cashandsantanaspecial",
                    ingredients = {
                        ["rum"] = 1,
                        ["pinejuice"] = 1,
                    }
                },
                [15] = {
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
                vector3(-1381.54, -593.35, 30.22),  -- Example coordinates, adjust as needed
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "vusliders",
                    ingredients = {
                        ["meat"] = 1,
                        ["nachos"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [2] = {
                    item = "vutacos",
                    ingredients = {
                        ["cheddar"] = 1,
                        ["chocolate"] = 1,
                        ["nachos"] = 1,
                    }
                },
                [3] = {
                    item = "nplate",
                    ingredients = {
                        ["nachos"] = 1,
                        ["cubasil"] = 1,
                        ["cheddar"] = 1,
                    }
                },
                [4] = {
                    item = "tots",
                    ingredients = {
                        ["meat"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [5] = {
                    item = "bahama_santanassweetheatwings",
                    ingredients = {
                        ["meat"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [6] = {
                    item = "bahama_birthdaysuitbirthdaycake",
                    ingredients = {
                        ["nachos"] = 1,
                        ["cheddar"] = 1,
                    }
                },
                [7] = {
                    item = "bahama_cashstwicesmokedloadedpotatoes",
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
                vector3(-1377.65, -600.43, 30.22),  -- Example coordinates, adjust as needed
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
                vector3(-1377.16, -596.04, 30.22),  -- Example coordinates, adjust as needed
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
                [2] = {
                    item = "coffee",
                    ingredients = {},
                },
            },
        },
        
        
    },    
    ["shop"] = {
        name = "bahamamamas_shop",
        label = "Bahama Mamas Ingredients",
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
        coords = vector4(-1373.15, -600.91, 30.22, 123.71),
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