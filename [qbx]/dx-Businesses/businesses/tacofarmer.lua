Businesses["tacofarmer"] = {
    enabled = true,
    drawmarker = true,
    job = "tacofarmer",
    dutyzone = {
        zones = {
            vector2(-0.117, -1608.99),
            vector2(9.938, -1617.159),
            vector2(25.59, -1599.43),
            vector2(13.583, -1587.128),
        },
        autoClock = { enter = true, exit = true },
        label = "Taco Farmer",
    },
    blips = {
        enabled = true,
        label = "Taco Farmer",
        sprite = 208,
        color = 46,
        scale = 0.8,
        coords = vector3(15.06, -1601.81, 29.36)
    },
    stash = {
        enabled = false,
        label = 'Taco Farmer Fridge',
        slots = '100',
        weight = '400000',
        coords = {
            vec3(13.4395, -1596.0746, 29.2374)
        },
    },
    traysenabled = true,
    trays = {
        ["TacoFarmerTray1"] = {
            label = "Taco Farmer Tray",
            slots = '20',
            weight = '20000',
            coords = {
                vec3(12.4589, -1602.3118, 29.3719)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },

        ["TacoFarmerTray2"] = {
            label = "Taco Farmer Tray 2",
            slots = '20',
            weight = '20000',
            coords = {
                vec3(14.4716, -1599.907, 29.3719)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
    },
    crafting = {
        ["food"] = {
            label = "Food Station",
            craftinglabel = 'Preparing',
            craftingtime = '2000',
            coords = {
                vector3(11.15, -1599.73, 29.36)
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "taco_pork_chode",
                    ingredients = {
                        ["cheddar"] = 1,
                        ["lettuce"] = 1,
                        ["raw_pork"] = 1,
                    }
                },
                [2] = {
                    item = "taco_chalupa_supreme",
                    ingredients = {
                        ["cheddar"] = 1,
                        ["lettuce"] = 1,
                        ["raw_pork"] = 1,
                        ["chickenbreast"] = 1
                    }
                },
                [3] = {                    
                    item = "taco_carne_asada",
                    ingredients = {
                        ["cheddar"] = 1,
                        ["lettuce"] = 1,
                        ["chickenbreast"] = 1
                    }
                },
                [4] = {                    
                    item = "taco_pollo_asado",
                    ingredients = {
                        ["cheddar"] = 1,
                        ["lettuce"] = 1,
                        ["chickenbreast"] = 1
                    }
                },
                [5] = {                    
                    item = "burrito_chicken_chode",
                    ingredients = {
                        ["cheddar"] = 1,
                        ["lettuce"] = 1,
                        ["chickenbreast"] = 1
                    }
                },
                [6] = {                    
                    item = "burrito_pork_chode",
                    ingredients = {
                        ["cheddar"] = 1,
                        ["lettuce"] = 1,
                        ["raw_pork"] = 1
                    }
                },
                [7] = {                    
                    item = "burrito_beef_chode",
                    ingredients = {
                        ["cheddar"] = 1,
                        ["lettuce"] = 1,
                        ["chickenbreast"] = 1
                    }
                },
                [8] = {                    
                    item = "chips_hot_cheetos",
                    ingredients = {
                        
                    }
                },
            }
        },
        ["drink"] = {
            label = "Drink Station",
            craftinglabel = 'Pouring',
            craftingtime = '2000',
            coords = {
                vector3(9.36, -1604.78, 29.36),
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "beverage_horchata",
                    ingredients = {
                        ["ice"] = 1,
                    }
                },
                [2] = {
                    item = "beverage_watermelon_mojito",
                    ingredients = {
                        ["ice"] = 1,
                    }
                },
                [3] = {
                    item = "ditecoke",
                    ingredients = {
                        ["ice"] = 1,
                    }
                },
                [4] = {
                    item = "corona",
                    ingredients = {
                        ["ice"] = 1,
                    }
                },
            }
        },
    },
    ["shop"] = {
        name = "taco_farmer_shop",
        label = "Taco Farmer Ingredients Shop",
        items = {
			{ name = 'ice', price = 0 },
			{ name = 'cheddar', price = 0 },
			{ name = 'lettuce', price = 0 },
            { name = 'raw_pork', price = 0 },
            { name = 'chickenbreast', price = 0 },
        },
        coords = vector4(14.47, -1596.3, 29.36, 136.54),
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