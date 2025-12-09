Businesses["cloud9"] = {
    enabled = true,
    drawmarker = true,
    job = "cloud9",
    dutyzone = {
        zones = {
            vector2(120.41, -18.83),
            vector2(139.82, 18.99),
            vector2(83.67, 40.06),
            vector2(67.45, -1.03),

        },
        autoClock = { enter = true, exit = true },
        label = "Cloud 9",
    },
    blips = {
        enabled = true,
        label = "Cloud 9",
        sprite = 304,
        color = 0,
        scale = 0.7,
        coords = vec3(111.59, 4.56, 67.78)
    },
    stash = {
        enabled = true,
        label = 'Cloud 9 Stash',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(105.74, -0.69, 67.78),
            vector3(119.12, 14.55, 67.78)
        },
    },
    traysenabled = false,
    trays = {},
    props = {
        enabled = true,
        prop = 'sf_prop_sf_weed_lrg_01a',
        coords = {
            vector4(117.29, 6.57, 62.85, 63.55),
            vector4(115.54, 7.12, 62.85, 69.31),
            vector4(113.05, 8.18, 62.85, 243.58),
            vector4(110.75, 9.06, 62.85, 68.41),
            vector4(108.93, 4.28, 62.85, 152.23),
            vector4(110.68, 3.47, 62.85, 241.53),
            vector4(113.28, 2.33, 62.85, 192.64),
            vector4(115.1, 1.81, 62.85, 253.18),
            vector4(116.76, 3.7, 62.79, 317.41),

        },
    },
    
    crafting = {
        ["Harvest 1"] = {
            label = "Harvest Pink Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '1250',
            coords = {
                vector3(110.55, 8.55, 62.86)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "pink_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["Harvest 2"] = {
            label = "Harvest Blue Dream Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '1250',
            coords = {
                vector3(112.77, 7.68, 62.86)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "lblue_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["Harvest 3"] = {
            label = "Harvest Grand Daddy Purple Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '1250',
            coords = {
                vector3(115.28, 6.64, 62.86)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "red_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["Harvest 4"] = {
            label = "Harvest Green Crack Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '1250',
            coords = {
                vector3(117.16, 6.0, 62.86)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "purple_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["Harvest 5"] = {
            label = "Harvest Wedding Cake Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '1250',
            coords = {
                vector3(111.14, 3.92, 62.85)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "glowy_shroom_white_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        -- ["Harvest 5"] = {
        --     label = "Harvest Jack Herrer Crop",
        --     craftinglabel = 'Harvesting',
        --     craftingtime = '1250',
        --     coords = {
        --         vector3(115.27, 2.33, 62.85)
        --     },
        --     anim = {
        --         dict = "anim@heists@prison_heiststation@cop_reactions",
        --         clip = "cop_b_idle",
        --     },
        --     items = {
        --         [1] = {
        --             item = "jackherrer_crop",
        --             ingredients = {
        --                 ["trimmers"] = 0,
        --             }
        --         },
        --     }
        -- },
        -- ["Harvest 6"] = {
        --     label = "Harvest Sour Diesel Crop",
        --     craftinglabel = 'Harvesting',
        --     craftingtime = '1250',
        --     coords = {
        --         vector3(113.61, 2.78, 62.85)
        --     },
        --     anim = {
        --         dict = "anim@heists@prison_heiststation@cop_reactions",
        --         clip = "cop_b_idle",
        --     },
        --     items = {
        --         [1] = {
        --             item = "sourdiesel_crop",
        --             ingredients = {
        --                 ["trimmers"] = 0,
        --             }
        --         },
        --     }
        -- },
        -- ["Harvest 8"] = {
        --     label = "Harvest Cloud 9 Crop",
        --     craftinglabel = 'Harvesting',
        --     craftingtime = '1250',
        --     coords = {
        --         vector3(109.28, 4.87, 62.86)
        --     },
        --     anim = {
        --         dict = "anim@heists@prison_heiststation@cop_reactions",
        --         clip = "cop_b_idle",
        --     },
        --     items = {
        --         [1] = {
        --             item = "cloud9_crop",
        --             ingredients = {
        --                 ["trimmers"] = 0,
        --             }
        --         },
        --     }
        -- },

        ["Trimming"] = {
            label = "Trim Crop",
            craftinglabel = 'Trimming',
            craftingtime = '2000',
            coords = {
                vector3(103.15, 7.1, 62.78),
                vector3(103.95, 9.29, 62.78)
                
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "pink_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["pink_crop"] = 1,
                    }
                },
                [2] = {
                    item = "lblue_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["lblue_crop"] = 1,
                    }
                },
                [3] = {
                    item = "red_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["red_crop"] = 1,
                    }
                },
                [4] = {
                    item = "purple_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["purple_crop"] = 1,
                    }
                },
                [5] = {
                    item = "glowy_shroom_white_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["glowy_shroom_white_crop"] = 1,
                    }
                },
                
            }
        },

        ["Rolling"] = {
            label = "Roll Joints",
            craftinglabel = 'Rolling',
            craftingtime = '2000',
            coords = {
                vector3(109.13, 1.61, 67.78)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "joint_pink",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["pink_bud"] = 1,
                    }
                },
                [2] = {
                    item = "joint_lblue",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["lblue_bud"] = 1,
                    }
                },
                [3] = {
                    item = "joint_red",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["red_bud"] = 1,
                    }
                },
                [4] = {
                    item = "joint_purple",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["purple_bud"] = 1,
                    }
                },
                [5] = {
                    item = "joint_black",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["glowy_shroom_white_bud"] = 1,
                    }
                },
                
            }
        },

        ["Oven"] = {
            label = "Oven",
            craftinglabel = 'Cooking',
            craftingtime = '2000',
            coords = {
                vector3(108.18, -2.81, 67.78)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "glowy_shroom_pink",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["butter"] = 1,
                        ["pink_bud"] = 1,
                    }
                },
                [2] = {
                    item = "glowy_shroom_white",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["gelatine"] = 1,
                        ["sugar"] = 1,
                        ["glowy_shroom_white_bud"] = 1,
                    }
                },
                [3] = {
                    item = "weed_cookie9",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["gelatine"] = 1,
                        ["sugar"] = 1,
                        ["lblue_bud"] = 1,
                    }
                },
                [4] = {
                    item = "glowy_shroom_red",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["gelatine"] = 1,
                        ["sugar"] = 1,
                        ["red_bud"] = 1,
                    }
                },
                [5] = {
                    item = "glowy_shroom_purple",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["gelatine"] = 1,
                        ["sugar"] = 1,
                        ["purple_bud"] = 1,
                    }
                },
                
            }
        },
        
    },
    ["shop"] = {
        name = "cloud9_shop",
        label = "cloud 9 Ingredients Shop",
        items = {
            { name = 'gelatine', price = 0, grade = 0  },
			{ name = 'cereal', price = 0, grade = 0  },
			{ name = 'butter', price = 0, grade = 0  },
			{ name = 'sugar', price = 0, grade = 0  },
			{ name = 'flour', price = 0, grade = 0  },
			{ name = 'egg', price = 0, grade = 0  },
			{ name = 'milk', price = 0, grade = 0  },
			{ name = 'peanutbutter', price = 0, grade = 0  },
			{ name = 'chocolatechips', price = 0, grade = 0  },
			{ name = 'trimmers', price = 0, grade = 0  },
			{ name = 'grinder', price = 0, grade = 0  },
			{ name = 'rollingpapers', price = 100, grade = 0  },
			{ name = 'gummymould', price = 100, grade = 0  },
			{ name = 'lighter', price = 50, grade = 0  },
        },
        coords = vector4(106.63, 11.45, 67.78, 161.99),
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