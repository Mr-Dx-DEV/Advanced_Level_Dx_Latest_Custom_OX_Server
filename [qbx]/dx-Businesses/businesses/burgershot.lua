Businesses["burgershot"] = {
    enabled = true,
    drawmarker = true,
    job = "burgershot",
    dutyzone = {
        zones = {
            vec2(-1153.6727294922, -892.29083251953),
            vec2(-1174.5604248047, -860.27191162109),
            vec2(-1217.4858398438, -889.26123046875),
            vec2(-1196.4073486328, -917.87731933594)
        },
        autoClock = { enter = true, exit = true },
        label = "Burger Shot",
    },
    blips = {
        enabled = true,
        label = "Burger Shot",
        sprite = 106,
        color = 5,
        scale = 0.7,
        coords = vec3(-1186.11, -885.86, 13.97)
    },
    stash = {
        enabled = true,
        label = 'Burgershot Fridge',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(-1200.76, -901.32, 13.97)
        },
    },
    props = {
        enabled = false,
        prop = '',
        coords = {},
    },
    traysenabled = true,
    trays = {
        ["Tray1"] = {
            label = "Burger Shot Tray 1",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-1194.78, -893.36, 14.08)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
    },
    crafting = {
        ["ChoppingBoard"] = {
            label = "Chopping Board",
            craftinglabel = 'Chopping',
            craftingtime = '2000',
            coords = {
                vector3(-1197.72, -897.73, 13.97)
            }, -- coordinates for food Station
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "slicedonion",
                    ingredients = {
                        ["onion"] = 1,
                    }
                },
                [2] = {
                    item = "slicedpotato",
                    ingredients = {
                        ["potato"] = 1,
                    }
                },
            }
        },
        ["Fryer"] = {
            label = "Fryer",
            craftinglabel = 'Frying',
            craftingtime = '2000',
            coords = {
                vector3(-1200.45, -897.26, 13.97)
            }, -- coordinates for food Station
            anim = {
                dict = "amb@prop_human_bbq@male@base",
                clip = "base",
            },
            items = {
                [1] = {
                    item = "shotfries",
                    ingredients = {
                        ["slicedpotato"] = 1,
                    }
                },
                [2] = {
                    item = "shotrings",
                    ingredients = {
                        ["slicedonion"] = 1,
                    }
                },
                [3] = {
                    item = "shotnuggets",
                    ingredients = {
                        ["frozennugget"] = 1,
                    }
                },
            }
        },
        ["Grill"] = {
            label = "Grill",
            craftinglabel = 'Grilling',
            craftingtime = '2000',
            coords = {
                vector3(-1197.85, -895.59, 13.97)
            }, -- coordinates for food Station
            anim = {
                dict = "amb@prop_human_bbq@male@base",
                clip = "base",
            },
            items = {
                [1] = {
                    item = "burgermeat",
                    ingredients = {
                        ["burgerpatty"] = 1,
                    }
                },
            }
        },
        ["Prepare"] = {
            label = "Food Preparation",
            craftinglabel = 'Preparing',
            craftingtime = '2000',
            coords = {
                vector3(-1196.22, -899.79, 13.97)
            }, -- coordinates for food Station
            anim = {
                dict = "mini@repair",
                clip = "fixing_a_ped",
            },
            items = {
                [1] = {
                    item = "heartstopper",
                    ingredients = {
                        ['burgerbun'] = 1,
                        ['cheddar'] = 1,
                        ['lettuce'] = 1,
                        ['burgermeat'] = 1,
                        ['slicedonion'] = 1,
                    }
                },
                [2] = {
                    item = "bleeder",
                    ingredients = {
                        ['burgerbun'] = 1,
                        ['cheddar'] = 1,
                        ['lettuce'] = 1,
                        ['burgermeat'] = 1,
                        ['slicedonion'] = 1,
                    }
                },
                [3] = {
                    item = "torpedo",
                    ingredients = {
                        ['burgerbun'] = 1,
                        ['cheddar'] = 1,
                        ['lettuce'] = 1,
                        ['burgermeat'] = 1,
                        ['slicedonion'] = 1,
                    }
                },
                [4] = {
                    item = "meatfree",
                    ingredients = {
                        ['burgerbun'] = 1,
                        ['cheddar'] = 1,
                        ['lettuce'] = 1,
                        ['slicedonion'] = 1,
                    }
                },
                [5] = {
                    item = "moneyshot",
                    ingredients = {
                        ['burgerbun'] = 1,
                        ['cheddar'] = 1,
                        ['lettuce'] = 1,
                        ['burgermeat'] = 1,
                        ['slicedonion'] = 1,
                    }
                },
            }
        },
        ["Drink"] = {
            label = "Drinks Dispenser",
            craftinglabel = 'Pouring',
            craftingtime = '2000',
            coords = {
                vector3(-1196.34, -894.51, 13.97)
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
                    item = "bscoffee",
                    ingredients = {}
                },
                [4] = {
                    item = "milkshake",
                    ingredients = {
                        ['milk'] = 1,
                        ['icecream'] = 1,
                    }
                },
            }
        },
        ["Donut"] = {
            label = "Donut Shelf",
            craftinglabel = 'Grabbing',
            craftingtime = '2000',
            coords = {
                vector3(-1195.84, -895.32, 13.97)
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "rimjob",
                    ingredients = {}
                },
                [2] = {
                    item = "creampie",
                    ingredients = {}
                },
            }
        },
    },    
    ["shop"] = {
        name = "burgershot_shop",
        label = "Burgershot Ingredients",
        items = {
            { name = 'burgerpatty', price = 0  },
			{ name = 'potato', price = 0  },
			{ name = 'onion', price = 0  },
			{ name = 'frozennugget', price = 0  },
			{ name = 'milk', price = 0  },
			{ name = 'icecream', price = 0  },
			{ name = 'burgerbun', price = 0  },
			{ name = 'cheddar', price = 0  },
			{ name = 'lettuce', price = 0  },
        },
        coords = vector4(-1202.57, -899.35, 13.97, 304.51),
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