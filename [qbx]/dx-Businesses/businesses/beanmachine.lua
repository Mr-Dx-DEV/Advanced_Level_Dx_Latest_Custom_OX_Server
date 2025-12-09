Businesses["beanmachine"] = {
    enabled = true,
    drawmarker = true,
    job = "beanmachine",
    dutyzone = {
        zones = {
            vector2(314.99, -594.57),
            vector2(306.09, -591.05),
            vector2(302.09, -602.61),
            vector2(311.5, -606.05)


        },
        autoClock = { enter = true, exit = true },
        label = "Bean Machine",
    },
    blips = {
        enabled = true,
        label = "Bean Machine",
        sprite = 89,
        color = 48,
        scale = 0.7,
        coords = vector3(308.5, -599.12, 43.26)
    },
    stash = {
        enabled = true,
        label = 'Bean Machine Stash',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(305.42, -602.03, 43.26)
        },
    },
    traysenabled = true,
    trays = {
        ["beanmachine_Tray1"] = {
            label = "Bean Machine Tray 1",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(306.8, -601.25, 43.34)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["beanmachine_Tray2"] = {
            label = "Bean Machine Tray 2",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(308.91, -601.71, 43.46)
            },
            size = vec3(1.5, 1.5, 1.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
    },
    props = {
        enabled = false,
        prop = '',
        coords = {
        },
    },
    crafting = {
        -- ["ChoppingBoard"] = {
        --     label = "Chopping Board",
        --     craftinglabel = 'Preparing',
        --     craftingtime = '2000',
        --     coords = {
        --         vector3(-153.12, -127.55, 54.77)
        --     }, -- coordinates for Chopping Board
        --     anim = {
        --         dict = "anim@heists@prison_heiststation@cop_reactions",
        --         clip = "cop_b_idle",
        --     },
        --     items = {
        --         [1] = {
        --             item = "bmochi",
        --             ingredients = {
        --                 ["sugar"] = 1,
        --                 ["flour"] = 1,
        --                 ["blueberry"] = 1,
        --             }
        --         },
        --         [2] = {
        --             item = "gmochi",
        --             ingredients = {
        --                 ["sugar"] = 1,
        --                 ["flour"] = 1,
        --                 ["mint"] = 1,
        --             }
        --         },
        --         [3] = {
        --             item = "omochi",
        --             ingredients = {
        --                 ["sugar"] = 1,
        --                 ["flour"] = 1,
        --                 ["orange"] = 1,
        --             }
        --         },
        --         [4] = {
        --             item = "pmochi",
        --             ingredients = {
        --                 ["sugar"] = 1,
        --                 ["flour"] = 1,
        --                 ["strawberry"] = 1,
        --             }
        --         },
        --         [5] = {
        --             item = "riceball",
        --             ingredients = {
        --                 ["rice"] = 1,
        --                 ["nori"] = 1,
        --             }
        --         },
        --         [6] = {
        --             item = "purrito",
        --             ingredients = {
        --                 ["rice"] = 1,
        --                 ["flour"] = 1,
        --                 ["onion"] = 1,
        --             }
        --         },
        --     }
        -- },
        
        ["Oven"] = {
            label = "Oven",
            craftinglabel = 'Baking',
            craftingtime = '2000',
            coords = {
                vector3(309.367, -603.518, 43.261)
            }, -- coordinates for Oven
            anim = {
                dict = "amb@prop_human_bbq@male@base",
                clip = "base",
            },
            items = {
                [1] = {
                    item = "bm_bobsicle",
                    ingredients = {
                        ["flour"] = 1,
                        ["milk"] = 1,
                    }
                },
                [2] = {
                    item = "bm_xdcookie",
                    ingredients = {
                        ["flour"] = 1,
                        ["milk"] = 1,
                    }
                },
                [3] = {
                    item = "bm_gummy",
                    ingredients = {
                        ["flour"] = 1,
                        ["milk"] = 1,
                        ["strawberry"] = 1,
                    }
                },
                [4] = {
                    item = "bm_muffin",
                    ingredients = {
                        ["flour"] = 1,
                        ["milk"] = 1,
                        ["sugar"] = 1,
                    }
                },
                [5] = {
                    item = "bm_bburrito",
                    ingredients = {
                        ["flour"] = 1,
                        ["milk"] = 1,
                        ["strawberry"] = 1,
                    }
                },
                [6] = {
                    item = "bm_pillpastry",
                    ingredients = {
                        ["flour"] = 1,
                        ["milk"] = 1,
                    }
                },
                [6] = {
                    item = "bm_bcrayon",
                    ingredients = {
                        ["flour"] = 1,
                        ["milk"] = 1,
                    }
                },
                [7] = {
                    item = "bm_cheery",
                    ingredients = {
                        ["flour"] = 1,
                        ["milk"] = 1,
                    }
                },
                [8] = {
                    item = "bm_popring",
                    ingredients = {
                        ["flour"] = 1,
                        ["milk"] = 1,
                        ["strawberry"] = 1,
                    }
                },
                [9] = {
                    item = "bm_toastymallow",
                    ingredients = {
                        ["flour"] = 1,
                        ["milk"] = 1,
                        ["sugar"] = 1,
                    }
                },
            }
        },
        
        ["Coffee"] = {
            label = "Coffee Machine",
            craftinglabel = 'Brewing',
            craftingtime = '2000',
            coords = {
                vector3(307.4, -602.784, 43.261)
            }, -- coordinates for Coffee Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "bm_chillchai",
                    ingredients = {
                        ["boba"] = 1,
                        ["milk"] = 1,
                        ["strawberry"] = 1,
                    }
                },
                [2] = {
                    item = "bm_nutbuster",
                    ingredients = {
                        ["boba"] = 1,
                        ["milk"] = 1,
                        ["orange"] = 1,
                    }
                },
                [3] = {
                    item = "bm_ballerina",
                    ingredients = {
                        ["boba"] = 1,
                        ["milk"] = 1,
                    }
                },
                [4] = {
                    item = "bm_ppunch",
                    ingredients = {
                        ["boba"] = 1,
                        ["milk"] = 1,
                        ["sugar"] = 1,
                    }
                },
                -- [5] = {
                --     item = "gbobatea",
                --     ingredients = {
                --         ["boba"] = 1,
                --         ["milk"] = 1,
                --         ["strawberry"] = 1,
                --     }
                -- },
                -- [6] = {
                --     item = "obobatea",
                --     ingredients = {
                --         ["boba"] = 1,
                --         ["milk"] = 1,
                --         ["orange"] = 1,
                --     }
                -- },
                -- [7] = {
                --     item = "pbobatea",
                --     ingredients = {
                --         ["boba"] = 1,
                --         ["milk"] = 1,
                --         ["strawberry"] = 1,
                --     }
                -- },
                -- [8] = {
                --     item = "mocha",
                --     ingredients = {
                --         ["milk"] = 1,
                --         ["sugar"] = 1,
                --     }
                -- },
            }
        },
        
        -- ["Hob"] = {
        --     label = "Hob",
        --     craftinglabel = 'Cooking',
        --     craftingtime = '2000',
        --     coords = {
        --         vector3(-152.6, -126.0, 54.77)
        --     }, -- coordinates for Hob
        --     anim = {
        --         dict = "amb@prop_human_bbq@male@base",
        --         clip = "base",
        --     },
        --     items = {
        --         [1] = {
        --             item = "miso",
        --             ingredients = {
        --                 ["nori"] = 1,
        --                 ["tofu"] = 1,
        --                 ["onion"] = 1,
        --             }
        --         },
        --         [2] = {
        --             item = "ramen",
        --             ingredients = {
        --                 ["noodles"] = 1,
        --                 ["onion"] = 1,
        --             }
        --         },
        --         [3] = {
        --             item = "noodlebowl",
        --             ingredients = {
        --                 ["noodles"] = 1,
        --             }
        --         },
        --     }
        -- },
        
    },
    ["shop"] = {
        name = "beanmachine_shop",
        label = "Coffee Shop Ingredients Shop",
        items = {
			{ name = 'sugar', price = 0 },
            { name = 'flour', price = 0 },
            { name = 'nori', price = 0 },
            { name = 'tofu', price = 0 },
            { name = 'onion', price = 0 },
            { name = 'boba', price = 0 },
            { name = 'mint', price = 0 },
            { name = 'orange', price = 0 },
            { name = 'strawberry', price = 0 },
            { name = 'blueberry', price = 0 },
            { name = 'milk', price = 0 },
            { name = 'rice', price = 0 },
            { name = 'sake', price = 0 },
            { name = 'noodles', price = 0 }

        },
        coords = vector4(304.45, -601.65, 43.26, 256.04),
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