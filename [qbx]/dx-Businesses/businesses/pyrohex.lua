Businesses["pyrohex"] = {
    enabled = true,
    drawmarker = true,
    job = "pyrohex",
    dutyzone = {
        zones = {
            vec2(812.32, -1731.13),
            vec2(739.6, -1728.78),
            vec2(755.23, -1620.21),
            vec2(810.92, -1578.26),
            vec2(837.44, -1590.0)
        },
        autoClock = { enter = true, exit = true },
        label = "Pyro Hex",
    },
    blips = {
        enabled = true,
        label = "Pyro Hex",
        sprite = 627,
        color = 27,
        scale = 0.7,
        coords = vec3(796.9, -1624.99, 31.16)
    },
    stash = {
        enabled = true,
        label = 'Pyro Hex Stash',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(800.12, -1648.84, 31.46)
            
        },
    },
    props = {
        enabled = false,
        prop = '',
        coords = {},
    },
    traysenabled = true,
    trays = {
        ["pyrohex_tray1"] = {
            label = "Pyro Hex Tray 1",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(794.87, -1642.05, 31.66)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["pyrohex_tray2"] = {
            label = "Pyro Hex Tray 2",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(794.58, -1645.01, 31.66)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["pyrohex_tray3"] = {
            label = "Pyro Hex Tray 3",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(794.38, -1648.5, 31.9)
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
                vector3(796.53, -1642.7, 31.46),  -- Example coordinates, adjust as needed
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "pyrohex_neuroshock",
                    ingredients = {
                        ["cranberry"] = 1,
                        ["gin"] = 1,
                    }
                },
                [2] = {
                    item = "pyrohex_synthwave_sour",
                    ingredients = {
                        ["rum"] = 1,
                        ["amaretto"] = 1,
                        ["vodka"] = 1,
                    }
                },
                [3] = {
                    item = "pyrohex_glitchtonic",
                    ingredients = {
                        ["midori"] = 1,
                        ["vodka"] = 1,
                    }
                },
                [4] = {
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
                vector3(796.85, -1648.42, 31.46),  -- Example coordinates, adjust as needed
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "pyrohex_byte_burger",
                    ingredients = {
                        ["cubasil"] = 1,
                        ["nachos"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [2] = {
                    item = "pyrohex_neon_noodles",
                    ingredients = {
                        ["cheddar"] = 1,
                        ["chocolate"] = 1,
                        ["nachos"] = 1,
                    }
                },
                [3] = {
                    item = "pyrohex_chromed_chips",
                    ingredients = {
                        ["nachos"] = 1,
                        ["cubasil"] = 1,
                        ["cheddar"] = 1,
                    }
                },
            },
        },
        
        ["Beer"] = {
            label = "Beer",
            craftinglabel = 'Brewing',
            craftingtime = '2000',
            coords = {
                vector3(797.05, -1645.16, 31.46),  -- Example coordinates, adjust as needed
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
        --         vector3(244.28, -3158.47, -0.19),  -- Example coordinates, adjust as needed
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
        name = "pyrohex_shop",
        label = "pyro hex Ingredients",
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
        coords = vector4(799.27, -1647.17, 31.5, 176.34),
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