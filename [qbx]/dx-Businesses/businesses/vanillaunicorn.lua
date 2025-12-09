Businesses["vanillaunicorn"] = {
    enabled = true,
    drawmarker = true,
    job = "vanillaunicorn",
    dutyzone = {
        zones = {
            vec2(106.64, -1339.84),
            vec2(177.99, -1275.68),
            vec2(143.39, -1260.63),
            vec2(69.94, -1281.58)
        },
        autoClock = { enter = true, exit = true },
        label = "Vanilla Unicorn",
    },
    blips = {
        enabled = true,
        label = "Vanilla Unicorn",
        sprite = 136,
        color = 48,
        scale = 0.7,
        coords = vec3(126.15, -1290.7, 28.44)
    },
    stash = {
        enabled = true,
        label = 'Vanilla Unicorn Stash',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(110.08, -1310.52, 35.59),
            vector3(95.67, -1300.25, 35.58),
            vector3(110.06, -1280.94, 29.62)
        },
    },
    props = {
        enabled = false,
        prop = '',
        coords = {},
    },
    traysenabled = true,
    trays = {
        ["vanillaunicorn_tray1"] = {
            label = "Vanilla Unicorn Tray 1",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(107.88, -1284.2, 30.08)
            },
            size = vec3(1.5,1.5, 1.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["vanillaunicorn_tray2"] = {
            label = "Vanilla Unicorn Tray 2",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(116.82, -1281.14, 29.94)
            },
            size = vec3(1.5,1.5, 1.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["vanillaunicorn_tray3"] = {
            label = "Vanilla Unicorn Tray 3",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(114.74, -1282.31, 29.85)
            },
            size = vec3(1.5,1.5, 1.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["vanillaunicorn_tray4"] = {
            label = "Vanilla Unicorn Tray 4",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(110.89, -1284.77, 29.87)
            },
            size = vec3(1.5,1.5, 1.5),
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
                vector3(109.18, -1284.0, 29.62),  -- Example coordinates, adjust as needed
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "vanillaunicorn_sunsetmartini",
                    ingredients = {
                        ["cranberry"] = 1,
                        ["gin"] = 1,
                    }
                },
                [2] = {
                    item = "vanillaunicorn_docksidebreeze",
                    ingredients = {
                        ["rum"] = 1,
                        ["amaretto"] = 1,
                        ["vodka"] = 1,
                    }
                },
                [3] = {
                    item = "vanillaunicorn_77sour",
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
                vector3(113.59, -1281.73, 29.62),  -- Example coordinates, adjust as needed
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "vanillaunicorn_raveroll",
                    ingredients = {
                        ["cubasil"] = 1,
                        ["nachos"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [2] = {
                    item = "vanillaunicorn_docksidedelights",
                    ingredients = {
                        ["cheddar"] = 1,
                        ["chocolate"] = 1,
                        ["nachos"] = 1,
                    }
                },
                [3] = {
                    item = "vanillaunicorn_portsantosporterhouse",
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
                vector3(115.35, -1280.89, 29.62),  -- Example coordinates, adjust as needed
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
        
        -- ["Coffee"] = {
        --     label = "Coffee",
        --     craftinglabel = 'Brewing',
        --     craftingtime = '2000',
        --     coords = {
        --         vector3(111.08, -1280.92, 29.62),  -- Example coordinates, adjust as needed
        --     },
        --     anim = {
        --         dict = "anim@heists@prison_heiststation@cop_reactions",
        --         clip = "cop_b_idle",
        --     },
        --     items = {
        --         [1] = {
        --             item = "lemon",
        --             ingredients = {},
        --         },
        --     },
        -- },
        
        
    },    
    ["shop"] = {
        name = "vanillaunicorn_shop",
        label = "Vanilla Unicorn Ingredients",
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
        coords = vector4(102.55, -1287.99, 29.22, 51.65),
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