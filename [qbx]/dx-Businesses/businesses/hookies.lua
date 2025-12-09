Businesses["hookies"] = {
    enabled = true,
    drawmarker = true,
    job = "hookies",
    dutyzone = {
        zones = {
            vec2(-2199.22, 4325.14),
            vec2(-2143.5, 4295.45),
            vec2(-2160.03, 4232.48),
            vec2(-2252.52, 4202.55),
            vec2(-2291.17, 4214.87)

        },
        autoClock = { enter = true, exit = true },
        label = "Hookies Bar&Grill",
    },
    blips = {
        enabled = true,
        label = "Hookies Bar&Grill",
        sprite = 803,
        color = 3,
        scale = 0.7,
        coords = vec3(-2196.91, 4285.94, 49.17)
    },
    stash = {
        enabled = true,
        label = 'Hookies Bar&Grill Stash',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(-2180.43, 4279.78, 49.18)
        },
    },
    traysenabled = true,
    trays = {
        ["hookies_tray1"] = {
            label = "hookies Tray 1",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-2184.89, 4288.07, 49.56)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["hookies_tray2"] = {
            label = "hookies Tray 2",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-2186.01, 4285.92, 49.25)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        -- ["hookies_tray3"] = {
        --     label = "hookies Tray 3",
        --     slots = '20',
        --     weight = '20000',
        --     coords = {
        --         vector3(243.4843, -3161.0471, -0.1301)
        --     },
        --     size = vec3(0.5, 0.5, 0.5),
        --     rotation = 5,
        --     icon = 'fa-solid fa-bowl-food',
        -- },
    },
    props = {
        enabled = false,
        prop = '',
        coords = {},
    },
    crafting = {
        ["Cocktails"] = {
            label = "Cocktails Maker",
            craftinglabel = 'Shaking',
            craftingtime = '4000',
            coords = {
                vector3(-2186.5, 4284.17, 49.18)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "hookies_unleaded",
                    ingredients = {
                        ["chocolate"] = 1,
                        ["mintleaf"] = 1,
                        ["lemon"] = 1,
                    }
                },
                [2] = {
                    item = "hookies_skylinemilkshake",
                    ingredients = {
                        ["lettuce"] = 1,
                        ["lemon"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
                [3] = {
                    item = "hookies_101octane",
                    ingredients = {
                        ["amaretto"] = 1,
                        ["lemon"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
                [4] = {
                    item = "hookies_coolant",
                    ingredients = {
                        ["lemon"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
                [5] = {
                    item = "hookies_koronawlime",
                    ingredients = {
                        ["lemon"] = 1,
                        ["gin"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
                [6] = {
                    item = "hookies_twistedtwea",
                    ingredients = {
                        ["chocolate"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
                [7] = {
                    item = "hookies_crucialbrew",
                    ingredients = {
                        ["chocolate"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
                [8] = {
                    item = "hookies_bluebullvodka",
                    ingredients = {
                        ["chocolate"] = 1,
                        ["mintleaf"] = 1,
                    }
                },
                [9] = {
                    item = "hookies_whiskey",
                    ingredients = {
                        ["chocolate"] = 1,
                        ["gin"] = 1,
                        ["lemon"] = 1,
                    }
                },
                [10] = {
                    item = "hookies_ginandtonic",
                    ingredients = {
                        ["chocolate"] = 1,
                        ["mintleaf"] = 1,
                        ["gin"] = 1,
                    }
                },
                [11] = {
                    item = "hookies_shrimpcocktail",
                    ingredients = {
                        ["chocolate"] = 1,
                        ["lemon"] = 1,
                    }
                },
                
            }
        },
    
        ["Food"] = {
            label = "Food Preparation",
            craftinglabel = 'Preparing',
            craftingtime = '2000',
            coords = {
                vector3(-2177.28, 4280.12, 49.18)
            },
            anim = {
                dict = "mini@repair",
                clip = "fixing_a_ped",
            },
            items = {
                [1] = {
                    item = "hookies_daleburger",
                    ingredients = {
                        ["strawberry"] = 1,
                        ["mintleaf"] = 1,
                        ["prosecco"] = 1,
                    }
                },
                [2] = {
                    item = "hookies_notyomamasclamchowder",
                    ingredients = {
                        ["meat"] = 1,
                        ["potato"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [3] = {
                    item = "hookies_hoosiershushpuppies",
                    ingredients = {
                        ["strawberry"] = 1,
                        ["chocolate"] = 1,
                    }
                },
                -- [4] = {
                --     item = "hookiescafe_oreocupcake",
                --     ingredients = {
                --         ["chocolate"] = 1,
                --         ["sprunklight"] = 1,
                --     }
                -- },
                -- [5] = {
                --     item = "hookiescafe_nutellafrosteddonut",
                --     ingredients = {
                --         ["nachos"] = 1,
                --         ["chocolate"] = 1,
                --     }
                -- },
                -- [6] = {
                --     item = "hookiescafe_hellokittybiscuit",
                --     ingredients = {
                --         ["triplsec"] = 1,
                --         ["gin"] = 1,
                --     }
                -- },
                -- [7] = {
                --     item = "hookiescafe_glazeddonut",
                --     ingredients = {
                --         ["crisps"] = 1,
                --         ["gin"] = 1,
                --     }
                -- },
                -- [8] = {
                --     item = "hookiescafe_eggandcheese",
                --     ingredients = {
                --         ["sprunk"] = 1,
                --         ["amaretto"] = 1,
                --         ["prosecco"] = 1,
                --     }
                -- },
                -- [9] = {
                --     item = "hookiescafe_creamcheesebagel",
                --     ingredients = {
                --         ["amaretto"] = 1,
                --         ["sprunklight"] = 1,
                --     }
                -- },
                -- [10] = {
                --     item = "hookiescafe_blueberrycupcake",
                --     ingredients = {
                --         ["ecola"] = 1,
                --         ["sprunklight"] = 1,
                --         ["gin"] = 1,
                --     }
                -- },
                -- [11] = {
                --     item = "hookiescafe_blueberrybagel",
                --     ingredients = {
                --         ["ecola"] = 1,
                --         ["amaretto"] = 1,
                --     }
                -- },
                -- [12] = {
                --     item = "hookiescafe_cheesecake",
                --     ingredients = {
                --         ["strawberry"] = 1,
                --         ["sprunklight"] = 1,
                --         ["lime"] = 1,
                --     }
                -- },
            }
        },
    
        ["Beer"] = {
            label = "Beer Dispenser",
            craftinglabel = 'Brewing',
            craftingtime = '2000',
            coords = {
                vector3(-2182.29, 4288.27, 49.18)
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
                vector3(-2183.58, 4288.99, 49.18)
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
        name = "hookies_shop",
        label = "Hookies Ingredients Shop",
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
        coords = vector4(-2181.69, 4279.55, 49.18, 334.7),
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