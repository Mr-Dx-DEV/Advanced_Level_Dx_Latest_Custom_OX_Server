Businesses["puffpuffpass"] = {
    enabled = true,
    drawmarker = true,
    job = "ppp",
    dutyzone = {
        zones = {
            vec2(-1521.29, -438.4),
            vec2(-1553.76, -407.1),
            vec2(-1582.3, -450.29),
            vec2(-1551.97, -482.94),
        },
        autoClock = { enter = true, exit = true },
        label = "Puff Puff Pass",
    },
    blips = {
        enabled = true,
        label = "Puff Puff Pass",
        sprite = 469,
        color = 1,
        scale = 0.7,
        coords = vec3(-1554.3, -433.98, 35.89)
    },
    stash = {
        enabled = true,
        label = 'Puff Puff Pass Stash',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(-1554.06, -429.95, 35.89)
        },
    },
    traysenabled = false,
    trays = {},
    props = {
        enabled = true,
        prop = 'prop_weed_01',
        coords = {
            vector4(-1553.35, -452.11, 35.89, 258.72),
            vector4(-1551.05, -451.07, 35.89, 258.72),
            vector4(-1549.92, -451.68, 35.89, 258.72),
            vector4(-1552.56, -453.12, 35.89, 258.72),
            vector4(-1551.69, -452.06, 35.89, 258.72),
            vector4(-1554.98, -453.74, 35.89, 258.72),
            vector4(-1554.03, -454.48, 35.89, 258.72),
            vector4(-1554.82, -456.75, 35.89, 258.72),
        },
    },
    crafting = {
        ["Harvest 1"] = {
            label = "Harvest Afghankush Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '1250',
            coords = {
                vector3(-1554.7, -453.42, 35.89)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "afghankush_crop",
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
                vector3(-1553.75, -454.17, 35.89)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "bluedream_crop",
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
                vector3(-1552.78, -453.44, 35.89)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "granddaddypurple_crop",
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
                vector3(-1553.61, -452.41, 35.89)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "greencrack_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["Harvest 5"] = {
            label = "Harvest Jack Herrer Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '1250',
            coords = {
                vector3(-1551.36, -452.3, 35.89)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "jackherrer_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["Harvest 6"] = {
            label = "Harvest Sour Diesel Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '1250',
            coords = {
                vector3(-1550.73, -451.35, 35.89)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "sourdiesel_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["Harvest 7"] = {
            label = "Harvest Wedding Cake Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '1250',
            coords = {
                vector3(-1550.17, -452.02, 35.89)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "weddingcake_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["Harvest 8"] = {
            label = "Harvest Puff Puff Pass Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '1250',
            coords = {
                vector3(-1554.56, -456.42, 35.89)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "ppp_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },

        ["Trimming"] = {
            label = "Trim Crop",
            craftinglabel = 'Trimming',
            craftingtime = '2000',
            coords = {
                vector3(-1551.8, -455.37, 35.89),
                vector3(-1550.72, -454.09, 35.89),
                vector3(-1552.99, -456.64, 35.89)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "afghankush_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["afghankush_crop"] = 1,
                    }
                },
                [2] = {
                    item = "bluedream_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["bluedream_crop"] = 1,
                    }
                },
                [3] = {
                    item = "granddaddypurple_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["granddaddypurple_crop"] = 1,
                    }
                },
                [4] = {
                    item = "greencrack_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["greencrack_crop"] = 1,
                    }
                },
                [5] = {
                    item = "jackherrer_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["jackherrer_crop"] = 1,
                    }
                },
                [6] = {
                    item = "sourdiesel_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["sourdiesel_crop"] = 1,
                    }
                },
                [7] = {
                    item = "weddingcake_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["weddingcake_crop"] = 1,
                    }
                },
                [8] = {
                    item = "ppp_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["ppp_crop"] = 1,
                    }
                },
            }
        },

        ["Rolling"] = {
            label = "Roll Joints",
            craftinglabel = 'Rolling',
            craftingtime = '2000',
            coords = {
                vector3(-1551.39, -429.09, 35.89)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "afghankush_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["afghankush_bud"] = 1,
                    }
                },
                [2] = {
                    item = "bluedream_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["bluedream_bud"] = 1,
                    }
                },
                [3] = {
                    item = "granddaddypurple_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["granddaddypurple_bud"] = 1,
                    }
                },
                [4] = {
                    item = "greencrack_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["greencrack_bud"] = 1,
                    }
                },
                [5] = {
                    item = "jackherrer_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["jackherrer_bud"] = 1,
                    }
                },
                [6] = {
                    item = "sourdiesel_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["sourdiesel_bud"] = 1,
                    }
                },
                [7] = {
                    item = "weddingcake_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["weddingcake_bud"] = 1,
                    }
                },
                [8] = {
                    item = "ppp_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["ppp_bud"] = 1,
                    }
                },
            }
        },

        ["Oven"] = {
            label = "Oven",
            craftinglabel = 'Cooking',
            craftingtime = '2000',
            coords = {
                vector3(-1557.48, -433.02, 35.89)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "weed_cannabutter",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["butter"] = 1,
                        ["afghankush_bud"] = 1,
                    }
                },
                [2] = {
                    item = "gummy_rasberry",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["gelatine"] = 1,
                        ["sugar"] = 1,
                        ["weddingcake_bud"] = 1,
                    }
                },
                [3] = {
                    item = "gummy_blueberry",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["gelatine"] = 1,
                        ["sugar"] = 1,
                        ["bluedream_bud"] = 1,
                    }
                },
                [4] = {
                    item = "gummy_grape",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["gelatine"] = 1,
                        ["sugar"] = 1,
                        ["granddaddypurple_bud"] = 1,
                    }
                },
                [5] = {
                    item = "gummy_applering",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["gelatine"] = 1,
                        ["sugar"] = 1,
                        ["greencrack_bud"] = 1,
                    }
                },
                [6] = {
                    item = "gummy_belt",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["gelatine"] = 1,
                        ["sugar"] = 1,
                        ["jackherrer_bud"] = 1,
                    }
                },
                [7] = {
                    item = "edible_ricecrispy",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["sugar"] = 1,
                        ["cereal"] = 1,
                        ["weed_cannabutter"] = 1,
                        ["afghankush_bud"] = 1,
                    }
                },
                [8] = {
                    item = "edible_snickerdoodle",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["egg"] = 1,
                        ["milk"] = 1,
                        ["flour"] = 1,
                        ["sugar"] = 1,
                        ["weed_cannabutter"] = 1,
                    }
                },
                [9] = {
                    item = "edible_peanutcookie",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["egg"] = 1,
                        ["milk"] = 1,
                        ["flour"] = 1,
                        ["peanutbutter"] = 1,
                        ["weed_cannabutter"] = 1,
                    }
                },
                [10] = {
                    item = "edible_cchip",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["egg"] = 1,
                        ["milk"] = 1,
                        ["flour"] = 1,
                        ["weed_cannabutter"] = 1,
                        ["chocolatechips"] = 1,
                    }
                },
            }
        },
        
    },
    ["shop"] = {
        name = "puffpuff_shop",
        label = "Puff Puff Ingredients Shop",
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
			{ name = 'lighter', price = 0, grade = 0  },
        },
        coords = vector4(-1545.69, -429.91, 35.89, 48.54),
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