Businesses["thetownbarandgrill"] = {
    enabled = true,
    drawmarker = true,
    job = "thetownbarandgrill",
    dutyzone = {
        zones = {
            vec2(-1278.58, -988.23),
            vec2(-1255.51, -1060.41),
            vec2(-1366.05, -1120.32),
            vec2(-1406.79, -1052.57)
        },
        autoClock = { enter = true, exit = true },
        label = "The Town Bar & Grill",
    },
    blips = {
        enabled = true,
        label = "The Town Bar & Grill",
        sprite = 621,
        color = 42,
        scale = 0.7,
        coords = vec3(-1348.83, -1098.4, 6.94)
    },
    stash = {
        enabled = true,
        label = 'The Town Bar & Grill Fridge',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(-1344.11, -1093.91, 6.94)
        },
    },
    props = {
        enabled = false,
        prop = '',
        coords = {},
    },
    traysenabled = true,
    trays = {
        ["TownBarCounter"] = {
            label = "The Town Bar & Grill Tray",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-1355.979, -1072.6443, 6.9791)
            },
            size = vec3(0.7, 0.7, 0.7),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
    },
    crafting = {
        ["cocktailsmaker"] = {
            label = "Cocktails Maker",
            craftinglabel = 'Making Cocktails',
            craftingtime = '2000',
            coords = {
                vector3(-1356.59, -1076.24, 6.94),
                vector3(-1348.57, -1062.63, 11.48)
            }, -- coordinates for food Station
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "thetownbarandgrill_donny_julio_shot",
                    ingredients = {
                        ["cranberry"] = 1,
                        ["gin"] = 1,
                    }
                },
                [2] = {
                    item = "thetownbarandgrill_fruit_punch",
                    ingredients = {
                        ["rum"] = 1,
                        ["amaretto"] = 1,
                        ["vodka"] = 1,
                    }
                },
                [3] = {
                    item = "thetownbarandgrill_billy_club",
                    ingredients = {
                        ["midori"] = 1,
                        ["vodka"] = 1,
                    }
                },
                [4] = {
                    item = "thetownbarandgrill_beer",
                    ingredients = {
                        ["rum"] = 1,
                        ["amaretto"] = 1,
                        ["vodka"] = 1,
                    }
                },
            }
        },
        
        ["foodmaker"] = {
            label = "Food Maker",
            craftinglabel = 'Cooking Food',
            craftingtime = '2000',
            coords = {
                vector3(-1350.02, -1099.78, 6.94)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "thetownbarandgrill_chocolate_ice_cream",
                    ingredients = {
                        ["strawberry"] = 1,
                        ["peach"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
                [2] = {
                    item = "thetownbarandgrill_vanilla_ice_cream",
                    ingredients = {
                        ["crisps"] = 1,
                        ["lemon"] = 1,
                        ["orange"] = 1,
                    }
                },
                [3] = {
                    item = "snr_buns_strawberry_ice_creams",
                    ingredients = {
                        ["chocolate"] = 1,
                        ["cheddar"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [4] = {
                    item = "thetownbarandgrill_cookie_dough",
                    ingredients = {
                        ["potato"] = 1,
                        ["nachos"] = 1,
                        ["cubasil"] = 1,
                    }
                },
                [5] = {
                    item = "thetownbarandgrill_mashed_potatoes",
                    ingredients = {
                        ["strawberry"] = 1,
                        ["peach"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
                [6] = {
                    item = "thetownbarandgrill_baked_beans",
                    ingredients = {
                        ["crisps"] = 1,
                        ["lemon"] = 1,
                        ["orange"] = 1,
                    }
                },
                [7] = {
                    item = "thetownbarandgrill_lobster",
                    ingredients = {
                        ["chocolate"] = 1,
                        ["cheddar"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [8] = {
                    item = "thetownbarandgrill_steak",
                    ingredients = {
                        ["potato"] = 1,
                        ["nachos"] = 1,
                        ["cubasil"] = 1,
                    }
                },
                [9] = {
                    item = "thetownbarandgrill_brisket",
                    ingredients = {
                        ["strawberry"] = 1,
                        ["peach"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
                [10] = {
                    item = "thetownbarandgrill_ribs",
                    ingredients = {
                        ["cheddar"] = 1,
                        ["peach"] = 1,
                        ["nachos"] = 1,
                    }
                },
                [11] = {
                    item = "thetownbarandgrill_billy_burg",
                    ingredients = {
                        ["crisps"] = 1,
                        ["lemon"] = 1,
                        ["orange"] = 1,
                    }
                },
                
            }
        },
    
        ["beer"] = {
            label = "Beer Dispenser",
            craftinglabel = 'Brewing Beer',
            craftingtime = '2000',
            coords = {
                vector3(-1355.56, -1075.07, 6.94),
                vector3(-1351.94, -1064.33, 11.48)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "ambeer",
                    ingredients = {}
                },
                [2] = {
                    item = "dusche",
                    ingredients = {}
                },
                [3] = {
                    item = "logger",
                    ingredients = {}
                },
                [4] = {
                    item = "pisswasser",
                    ingredients = {}
                },
                [5] = {
                    item = "pisswasser2",
                    ingredients = {}
                },
                [6] = {
                    item = "pisswasser3",
                    ingredients = {}
                },
            }
        },
    
        ["coffee"] = {
            label = "Coffee Maker",
            craftinglabel = 'Brewing Coffee',
            craftingtime = '2000',
            coords = {
                vector3(-1349.67, -1095.22, 6.94)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "lemon",
                    ingredients = {}
                },
            }
        },
    },    
    ["shop"] = {
        name = "thetownbarandgrill_shop",
        label = "The Town Bar & Grill Ingredients",
        items = {
            -- Drinks
            { name = 'cranberry', price = 0  },
			{ name = 'gin', price = 0  },
			{ name = 'rum', price = 0  },
			{ name = 'amaretto', price = 0  },
			{ name = 'vodka', price = 0  },
			{ name = 'midori', price = 0  },
            -- Food
			{ name = 'cubasil', price = 0  },
			{ name = 'nachos', price = 0  },
			{ name = 'potato', price = 0  },
			{ name = 'lettuce', price = 0  },
			{ name = 'cheddar', price = 0  },
			{ name = 'chocolate', price = 0  },
			{ name = 'orange', price = 0  },
			{ name = 'lime', price = 0  },
			{ name = 'crisps', price = 0  },
			{ name = 'mintleaf', price = 0  },
			{ name = 'peach', price = 0  },
			{ name = 'strawberry', price = 0  },

        },
        coords = vector4(-1342.54, -1095.37, 6.94, 84.95),
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