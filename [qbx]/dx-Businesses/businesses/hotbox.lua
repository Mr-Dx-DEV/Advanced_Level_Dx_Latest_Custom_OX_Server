Businesses["hotbox"] = {
    enabled = true,
    drawmarker = true,
    job = "hotbox",
    dutyzone = {
        zones = {
            vector2(-54.383, -1672.831),
            vector2(-34.196, -1695.566),
            vector2(13.017, -1671.747),
            vector2(14.166, -1661.367),
            vector2(-22.69, -1636.41)
        },
        autoClock = { enter = true, exit = true },
        label = "Hotbox",
    },
    blips = {
        enabled = true,
        label = "Hotbox",
        sprite = 140,
        color = 2,
        scale = 0.8,
        coords = vector3(-32.65, -1686.73, 29.35)
    },
    stash = {
        enabled = true,
        label = 'HoxBox Stash',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(-33.33, -1665.64, 29.49),
            vector3(-17.13, -1673.38, 29.49),
        },
    },
    traysenabled = false,
    trays = {},
    props = {
        enabled = false,
        prop = '',
        coords = {
        },
    },
    bong = {
        enabled = true,
        menu = {
            header = "Hit the Bong",
            options = {
                {
                    item = "bubba_kush_bud",
                    label = "Bubba Kush Bud",
                    ingredients = { ["bubba_kush_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },

                {
                    item = "leila_delight_bud",
                    label = "Leilas Delight Bud",
                    ingredients = { ["leila_delight_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },

                {
                    item = "pineapple_express_bud",
                    label = "Pineapple Express Bud",
                    ingredients = { ["pineapple_express_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },

                {
                    item = "northern_lights_bud",
                    label = "Northern Lights Bud",
                    ingredients = { ["northern_lights_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },

                {
                    item = "maui_waui_bud",
                    label = "Maui Waui Bud",
                    ingredients = { ["maui_waui_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },

                {
                    item = "coop_goop_bud",
                    label = "Coop Goop Bud",
                    ingredients = { ["coop_goop_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },

                {
                    item = "sienna_haze_bud",
                    label = "Sienna Haze Bud",
                    ingredients = { ["sienna_haze_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },

                {
                    item = "frankistank_bud",
                    label = "Frankistank Bud",
                    ingredients = { ["frankistank_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                }
            },
        },
        craftingTime = 20000,
        item = "bong3",        -- This identifies that this config is triggered by the bong2 item
        progressBarLabel = "Taking a bong hit..."
    },
    crafting = {
        ["edibles"] = {
            label = "Edible Station",
            craftinglabel = 'Harvesting',
            craftingtime = '2000',
            coords = {
                vector3(-11.28, -1671.65, 29.49)
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "bubba_kush_gummy",
                    ingredients = {
                        ['gelatine'] = 1, 
                        ['sugar'] = 1,
                        ["bubba_kush_bud"] = 1,
                        ["grinder"] = 0,
                        ['gummymould'] = 1
                    }
                },
                [2]  = {
                    item = "leila_delight_gummy",
                    ingredients = {
                        ['gelatine'] = 1, ['sugar'] = 1,
                        ["leila_delight_bud"] = 1,
                        ["grinder"] = 0,
                        ['gummymould'] = 1
                    }
                },
                [3]  = {
                    item = "pineapple_express_gummy",
                    ingredients = {
                        ['gelatine'] = 1, ['sugar'] = 1,
                        ["pineapple_express_bud"] = 1,
                        ["grinder"] = 0,
                        ['gummymould'] = 1
                    }
                },
                [4]  = {
                    item = "northern_lights_gummy",
                    ingredients = {
                        ['gelatine'] = 1, ['sugar'] = 1,
                        ["northern_lights_bud"] = 1,
                        ["grinder"] = 0,
                        ['gummymould'] = 1
                    }
                },
                [5]  = {
                    item = "maui_waui_gummy",
                    ingredients = {
                        ['gelatine'] = 1, ['sugar'] = 1,
                        ["maui_waui_bud"] = 1,
                        ["grinder"] = 0,
                        ['gummymould'] = 1
                    }
                },
                [6]  = {
                    item = "coop_goop_gummy",
                    ingredients = {
                        ['gelatine'] = 1, 
                        ['sugar'] = 1,
                        ["coop_goop_bud"] = 1,
                        ["grinder"] = 0,
                        ['gummymould'] = 1
                    }
                },
                [7]  = {
                    item = "sienna_haze_gummy",
                    ingredients = {
                        ['gelatine'] = 1, 
                        ['sugar'] = 1,
                        ["sienna_haze_bud"] = 1,
                        ["grinder"] = 0,
                        ['gummymould'] = 1
                    }
                },
                [8]  = {
                    item = "frankistank_gummy",
                    ingredients = {
                        ['gelatine'] = 1, 
                        ['sugar'] = 1,
                        ["frankistank_bud"] = 1,
                        ["grinder"] = 0,
                        ['gummymould'] = 1
                    }
                },
            }
        },
        ["joints"] = {
            label = "Joints Station",
            craftinglabel = 'Harvesting',
            craftingtime = '2000',
            coords = {
                vector3(-11.24, -1672.81, 29.49),
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "bubba_kush_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["bubba_kush_bud"] = 1,
                        ["grinder"] = 0,
                    }
                },
                [2]  = {
                    item = "leila_delight_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["leila_delight_bud"] = 1,
                        ["grinder"] = 0,
                    }
                },
                [3]  = {
                    item = "pineapple_express_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["pineapple_express_bud"] = 1,
                        ["grinder"] = 0,
                    }
                },
                [4]  = {
                    item = "northern_lights_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["northern_lights_bud"] = 1,
                        ["grinder"] = 0,
                    }
                },
                [5]  = {
                    item = "maui_waui_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["maui_waui_bud"] = 1,
                        ["grinder"] = 0,
                    }
                },
                [6]  = {
                    item = "coop_goop_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["coop_goop_bud"] = 1,
                        ["grinder"] = 0,
                    }
                },
                [7]  = {
                    item = "sienna_haze_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["sienna_haze_bud"] = 1,
                        ["grinder"] = 0,
                    }
                },
                [8]  = {
                    item = "frankistank_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["frankistank_bud"] = 1,
                        ["grinder"] = 0,
                    }
                },
            }
        },
        ["trimming"] = {
            label = "Trimming Station",
            craftinglabel = 'Harvesting',
            craftingtime = '2000',
            coords = {
                vector3(-12.78, -1670.39, 29.49)
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "bubba_kush_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["bubba_kush_crop"] = 1,
                    }
                },
                [2] = {
                    item = "leila_delight_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["leila_delight_crop"] = 1,
                    }
                },
                [3] = {
                    item = "pineapple_express_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["pineapple_express_crop"] = 1,
                    }
                },
                [4] = {
                    item = "northern_lights_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["northern_lights_crop"] = 1,
                    }
                },
                [5] = {
                    item = "maui_waui_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["maui_waui_crop"] = 1,
                    }
                },
                [6] = {
                    item = "coop_goop_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["coop_goop_crop"] = 1,
                    }
                },
                [7] = {
                    item = "sienna_haze_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["sienna_haze_crop"] = 1,
                    }
                },
                [8] = {
                    item = "frankistank_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["frankistank_crop"] = 1,
                    }
                },
            }
        },
        ["strain1"] = {
            label = "Strain Bubba Kush",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                
                vector3(-4.93, -1660.88, 29.53)
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "bubba_kush_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["strain2"] = {
            label = "Strain Leila Delight",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(-6.7, -1662.66, 29.51)
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "leila_delight_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["strain3"] = {
            label = "Strain Pineapple Express",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(-8.01, -1664.3, 29.52)
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "pineapple_express_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["strain4"] = {
            label = "Strain Northern Lights",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(-9.29, -1665.82, 29.53)
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "northern_lights_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["strain5"] = {
            label = "Strain Maui Waui",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(-10.98, -1667.64, 29.51)
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "maui_waui_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["strain6"] = {
            label = "Strain Coop Goop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(-2.94, -1663.6, 29.5)
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "coop_goop_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["strain7"] = {
            label = "Strain Sienna Haze",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(-4.22, -1665.28, 29.5)
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "sienna_haze_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["strain8"] = {
            label = "Strain Frankistank",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(-5.69, -1666.85, 29.51)
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "frankistank_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
    },

    ["shop"] = {
        name = "hotbox_shop",
        label = "Hotbox Ingredients Shop",
        items = {
            { name = "gelatine", price = 0, },
			{ name = "sugar", price = 0, },
			{ name = "trimmers", price = 0,  },
			{ name = "grinder", price = 0,  },
			{ name = "rollingpapers", price = 100,  },
			{ name = "emptybaggy", price = 0,  },
			{ name = "gummymould", price = 100,  },
			{ name = "bong3", price = 150,  },
			{ name = "lighter", price = 50,  },
            {name = "hookah_apple", price = 0},
            {name = "hookah_blueberry", price = 0},
            {name = "hookah_mangomint", price = 0},
            {name = "hookah_starburst", price = 0},
            {name = "hookah_watermelon", price = 0},
            {name = "coal", price = 0},
        },
        coords = vector4(-6.81, -1657.71, 29.49, 133.06),
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