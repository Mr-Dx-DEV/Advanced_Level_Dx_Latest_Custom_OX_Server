Businesses["lilypad"] = {
    enabled = true,
    drawmarker = true,
    job = "lilypad",
    dutyzone = {
        zones = {
            vec2(1166.496, -610.242),
            vec2(1177.138, -655.481),
            vec2(1096.135, -672.485),
            vec2(1078.134, -623.176)
        },
        autoClock = { enter = true, exit = true },
        label = "LilyPad Cafe",
    },
    blips = {
        enabled = true,
        label = "LilyPad Cafe",
        sprite = 621,
        color = 42,
        scale = 0.7,
        coords = vec3(1128.61, -645.77, 56.83)
    },
    stash = {
        enabled = true,
        label = 'LilyPad Cafe Stash',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(1117.17, -639.03, 56.82)
        },
    },
    traysenabled = false,
    trays = {},
    props = {
        enabled = false,
        prop = '',
        coords = {},
    },
    crafting = {
        ["Cocktails"] = {
            label = "Cocktails Maker",
            craftinglabel = 'Shaking',
            craftingtime = '2000',
            coords = {
                vector3(1117.13, -636.81, 56.82)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "lilypadcafe_mochacrunchfrappe",
                    ingredients = {
                        ["chocolate"] = 1,
                        ["mintleaf"] = 1,
                        ["lemon"] = 1,
                    }
                },
                [2] = {
                    item = "lilypadcafe_cottoncandyfrappe",
                    ingredients = {
                        ["lettuce"] = 1,
                        ["lemon"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
                [3] = {
                    item = "lilypadcafe_brownsugarfrappe",
                    ingredients = {
                        ["amaretto"] = 1,
                        ["lemon"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
                [4] = {
                    item = "lilypadcafe_cappuccino",
                    ingredients = {
                        ["lemon"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
                [5] = {
                    item = "lilypadcafe_icedcoffee",
                    ingredients = {
                        ["lemon"] = 1,
                        ["gin"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
                [6] = {
                    item = "lilypadcafe_hotchocolate",
                    ingredients = {
                        ["chocolate"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
            }
        },
    
        ["Food"] = {
            label = "Food Preparation",
            craftinglabel = 'Preparing',
            craftingtime = '2000',
            coords = {
                vector3(1116.93, -635.33, 56.82)
            },
            anim = {
                dict = "mini@repair",
                clip = "fixing_a_ped",
            },
            items = {
                [1] = {
                    item = "lilypadcafe_strawberryiceream",
                    ingredients = {
                        ["strawberry"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
                [2] = {
                    item = "lilypadcafe_turkeybowl",
                    ingredients = {
                        ["meat"] = 1,
                        ["potato"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [3] = {
                    item = "lilypadcafe_strawberryfrosteddonut",
                    ingredients = {
                        ["strawberry"] = 1,
                        ["chocolate"] = 1,
                    }
                },
                [4] = {
                    item = "lilypadcafe_oreocupcake",
                    ingredients = {
                        ["chocolate"] = 1,
                        ["sprunklight"] = 1,
                    }
                },
                [5] = {
                    item = "lilypadcafe_nutellafrosteddonut",
                    ingredients = {
                        ["nachos"] = 1,
                        ["chocolate"] = 1,
                    }
                },
                [6] = {
                    item = "lilypadcafe_hellokittybiscuit",
                    ingredients = {
                        ["triplsec"] = 1,
                        ["gin"] = 1,
                    }
                },
                [7] = {
                    item = "lilypadcafe_glazeddonut",
                    ingredients = {
                        ["crisps"] = 1,
                        ["gin"] = 1,
                    }
                },
                [8] = {
                    item = "lilypadcafe_eggandcheese",
                    ingredients = {
                        ["sprunk"] = 1,
                        ["amaretto"] = 1,
                        ["prosecco"] = 1,
                    }
                },
                [9] = {
                    item = "lilypadcafe_creamcheesebagel",
                    ingredients = {
                        ["amaretto"] = 1,
                        ["sprunklight"] = 1,
                    }
                },
                [10] = {
                    item = "lilypadcafe_blueberrycupcake",
                    ingredients = {
                        ["ecola"] = 1,
                        ["sprunklight"] = 1,
                        ["gin"] = 1,
                    }
                },
                [11] = {
                    item = "lilypadcafe_blueberrybagel",
                    ingredients = {
                        ["ecola"] = 1,
                        ["amaretto"] = 1,
                    }
                },
                [12] = {
                    item = "lilypadcafe_cheesecake",
                    ingredients = {
                        ["strawberry"] = 1,
                        ["sprunklight"] = 1,
                        ["lime"] = 1,
                    }
                },
            }
        },
    
        ["Beer"] = {
            label = "Beer Dispenser",
            craftinglabel = 'Brewing',
            craftingtime = '2000',
            coords = {
                vector3(-1338.35, -1218.6, 9.72)
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
    
        ["Coffee"] = {
            label = "Coffee Maker",
            craftinglabel = 'Brewing',
            craftingtime = '2000',
            coords = {
                vector3(1116.27, -637.1, 56.82)
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
        name = "lilypad_shop",
        label = "Lilpad Cafe Ingredients Shop",
        items = {
            -- Drink Ingredients
            { name = 'cranberry', price = 0, grade = 0  },
			{ name = 'gin', price = 0, grade = 0  },
			{ name = 'rum', price = 0, grade = 0  },
			{ name = 'amaretto', price = 0, grade = 0  },
			{ name = 'vodka', price = 0, grade = 0  },
			{ name = 'midori', price = 0, grade = 0  },
			{ name = 'pinejuice', price = 0, grade = 0  },
			{ name = 'prosecco', price = 0, grade = 0  },
			{ name = 'tequila', price = 0, grade = 0  },
			{ name = 'triplsec', price = 0, grade = 0  },
			{ name = 'sprunk', price = 0, grade = 0  },
			{ name = 'sprunklight', price = 0, grade = 0  },
			{ name = 'ecola', price = 0, grade = 0  },
			{ name = 'ecolalight', price = 0, grade = 0  },
            { name = 'crisps', price = 0, grade = 0  },
            { name = 'orange', price = 0, grade = 0  },
			{ name = 'lime', price = 0, grade = 0  },
            { name = 'lemon', price = 0, grade = 0  },
            -- Food Ingredients
            { name = 'meat', price = 0, grade = 0  },
			{ name = 'nachos', price = 0, grade = 0  },
			{ name = 'potato', price = 0, grade = 0  },
			{ name = 'lettuce', price = 0, grade = 0  },
			{ name = 'cheddar', price = 0, grade = 0  },
			{ name = 'chocolate', price = 0, grade = 0  },
			{ name = 'crisps', price = 0, grade = 0  },
			{ name = 'cubasil', price = 0, grade = 0  },
			{ name = 'mintleaf', price = 0, grade = 0  },
			{ name = 'peach', price = 0, grade = 0  },
			{ name = 'strawberry', price = 0, grade = 0  },
        },
        coords = vector4(1114.38, -635.43, 56.82, 188.68),
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