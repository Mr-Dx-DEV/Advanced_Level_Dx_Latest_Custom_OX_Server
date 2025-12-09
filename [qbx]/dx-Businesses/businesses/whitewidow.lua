Businesses["whitewidow"] = {
    enabled = true,
    drawmarker = true,
    job = "whitewidow",
    dutyzone = {
        zones = {
            vec2(-1336.4371337891, -1288.3179931641),
            vec2(-1363.0185546875, -1212.3747558594),
            vec2(-1322.7342529297, -1210.6441650391),
            vec2(-1296.4191894531, -1273.7803955078),
        },
        autoClock = { enter = true, exit = true },
        label = "White Widow",
    },
    blips = {
        enabled = true,
        label = "White Widow",
        sprite = 469,
        color = 52,
        scale = 0.7,
        coords = vec3(-1356.39, -1241.15, 4.9)
    },
    stash = {
        enabled = true,
        label = 'White Widow Stash',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(-1343.42, -1224.25, 9.72),
            vector3(-1334.34, -1238.4, 5.94)
        },
    },
    traysenabled = true,
    trays = {
        ["ww_Tray1"] = {
            label = "White Widow Tray 1",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-1332.256, -1230.9875, 6.2116)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["ww_Tray2"] = {
            label = "White Widow Tray 2",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(-1333.1029, -1234.418, 6.2116)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
    },
    props = {
        enabled = true,
        prop = 'prop_weed_01',
        coords = {
            vector4(-1338.35, -1218.6, 9.72, 20.55),
            vector4(-1339.67, -1219.12, 9.72, 55.33),
            vector4(-1337.98, -1220.43, 9.72, 215.44),
            vector4(-1339.51, -1221.01, 9.72, 215.44),
            vector4(-1337.33, -1221.64, 9.72, 215.44),
            vector4(-1338.84, -1222.27, 9.72, 215.44),
            vector4(-1336.82, -1223.51, 9.72, 215.44),
            vector4(-1338.39, -1224.13, 9.72, 215.44),
        },
    },
    bong = {
        enabled = true,
        menu = {
            header = "Hit the Bong",
            options = {
                {
                    item = "weed_skunk_cbd_bud",
                    label = "Skunk Bud",
                    ingredients = { ["weed_skunk_cbd_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "weed_og-kush_cbd_bud",
                    label = "OG Kush Bud",
                    ingredients = { ["weed_og-kush_cbd_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "weed_white-widow_cbd_bud",
                    label = "White Widow Bud",
                    ingredients = { ["weed_white-widow_cbd_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "weed_ak47_cbd_bud",
                    label = "AK47 Bud",
                    ingredients = { ["weed_ak47_cbd_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "weed_amnesia_cbd_bud",
                    label = "Amnesia Bud",
                    ingredients = { ["weed_amnesia_cbd_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "weed_purple-haze_cbd_bud",
                    label = "Purple Haze Bud",
                    ingredients = { ["weed_purple-haze_cbd_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "weed_gelato_cbd_bud",
                    label = "Gelato Bud",
                    ingredients = { ["weed_gelato_cbd_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "weed_zkittlez_cbd_bud",
                    label = "Zkittlez Bud",
                    ingredients = { ["weed_zkittlez_cbd_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                }
                -- Add more options as needed
            },
        },
        craftingTime = 20000,  -- Duration in milliseconds (10 seconds)
        item = "bong",
        progressBarLabel = "Taking a bong hit..."
    },
    crafting = {
        ["Harvest 1"] = {
            label = "Harvest Skunk Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(-1338.35, -1218.6, 9.72)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "weed_skunk_cbd_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["Harvest 2"] = {
            label = "Harvest OG Kush Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(-1339.67, -1219.12, 9.72)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "weed_og-kush_cbd_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["Harvest 3"] = {
            label = "Harvest White Widow Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(-1337.98, -1220.43, 9.72)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "weed_white-widow_cbd_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["Harvest 4"] = {
            label = "Harvest Ak47 Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(-1339.51, -1221.01, 9.72)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "weed_ak47_cbd_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["Harvest 5"] = {
            label = "Harvest Amnesia Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(-1337.33, -1221.64, 9.72)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "weed_amnesia_cbd_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["Harvest 6"] = {
            label = "Harvest Purple Haze Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(-1338.84, -1222.27, 9.72)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "weed_purple-haze_cbd_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["Harvest 7"] = {
            label = "Harvest Gelato Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(-1336.82, -1223.51, 9.72)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "weed_gelato_cbd_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },
        ["Harvest 8"] = {
            label = "Harvest Zkittlez Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(-1338.39, -1224.13, 9.72)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "weed_zkittlez_cbd_crop",
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
                vector3(-1344.3, -1221.09, 9.72)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "weed_skunk_cbd_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["weed_skunk_cbd_crop"] = 1,
                    }
                },
                [2] = {
                    item = "weed_og-kush_cbd_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["weed_og-kush_cbd_crop"] = 1,
                    }
                },
                [3] = {
                    item = "weed_white-widow_cbd_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["weed_white-widow_cbd_crop"] = 1,
                    }
                },
                [4] = {
                    item = "weed_ak47_cbd_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["weed_ak47_cbd_crop"] = 1,
                    }
                },
                [5] = {
                    item = "weed_amnesia_cbd_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["weed_amnesia_cbd_crop"] = 1,
                    }
                },
                [6] = {
                    item = "weed_purple-haze_cbd_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["weed_purple-haze_cbd_crop"] = 1,
                    }
                },
                [7] = {
                    item = "weed_gelato_cbd_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["weed_gelato_cbd_crop"] = 1,
                    }
                },
                [8] = {
                    item = "weed_zkittlez_cbd_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["weed_zkittlez_cbd_crop"] = 1,
                    }
                },
            }
        },

        ["Rolling"] = {
            label = "Roll Joints",
            craftinglabel = 'Rolling',
            craftingtime = '2000',
            coords = {
                vector3(-1342.65, -1220.45, 9.72)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "amethyst_aura_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["weed_skunk_cbd_bud"] = 1,
                    }
                },
                [2] = {
                    item = "babinski_kush_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["weed_og-kush_cbd_bud"] = 1,
                    }
                },
                [3] = {
                    item = "get_sharked_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["weed_white-widow_cbd_bud"] = 1,
                    }
                },
                [4] = {
                    item = "lex_lotto_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["weed_ak47_cbd_bud"] = 1,
                    }
                },
                [5] = {
                    item = "peach_zkittles_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["weed_amnesia_cbd_bud"] = 1,
                    }
                },
                [6] = {
                    item = "pretty_kitty_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["weed_purple-haze_cbd_bud"] = 1,
                    }
                },
                [7] = {
                    item = "sheilas_dream_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["weed_gelato_cbd_bud"] = 1,
                    }
                },
                [8] = {
                    item = "tazmanian_joint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["weed_zkittlez_cbd_bud"] = 1,
                    }
                },
            }
        },

        ["edibles"] = {
            label = "Edible Station",
            craftinglabel = 'Making',
            craftingtime = '2000',
            coords = {
                vector3(-1343.83, -1219.82, 9.72)
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1]  = {
                    item = "amethyst_aura_gummy",
                    ingredients = {
                        ['gelatine'] = 1,
                        ['sugar'] = 1,
                        ["weed_skunk_cbd_bud"] = 1,
                        ['gummymould'] = 1
                    }
                },
                [2]  = {
                    item = "babinski_kush_gummy",
                    ingredients = {
                        ['gelatine'] = 1,
                        ['sugar'] = 1,
                        ["weed_og-kush_cbd_bud"] = 1,
                        ['gummymould'] = 1
                    }
                },
                [3]  = {
                    item = "get_sharked_gummy",
                    ingredients = {
                        ['gelatine'] = 1,
                        ['sugar'] = 1,
                        ["weed_white-widow_cbd_bud"] = 1,
                        ['gummymould'] = 1
                    }
                },
                [4]  = {
                    item = "lex_lotto_gummy",
                    ingredients = {
                        ['gelatine'] = 1,
                        ['sugar'] = 1,
                        ["weed_ak47_cbd_bud"] = 1,
                        ['gummymould'] = 1
                    }
                },
                [5]  = {
                    item = "peach_zkittles_gummy",
                    ingredients = {
                        ['gelatine'] = 1,
                        ['sugar'] = 1,
                        ["weed_gelato_cbd_bud"] = 1,
                        ['gummymould'] = 1
                    }
                },
                [6]  = {
                    item = "pretty_kitty_gummy",
                    ingredients = {
                        ['gelatine'] = 1,
                        ['sugar'] = 1,
                        ["weed_amnesia_cbd_bud"] = 1,
                        ['gummymould'] = 1
                    }
                },
                [7]  = {
                    item = "sheilas_dream_gummy",
                    ingredients = {
                        ['gelatine'] = 1,
                        ['sugar'] = 1,
                        ["weed_purple-haze_cbd_bud"] = 1,
                        ['gummymould'] = 1
                    }
                },
                [8]  = {
                    item = "tazmanian_gummy",
                    ingredients = {
                        ['gelatine'] = 1,
                        ['sugar'] = 1,
                        ["weed_zkittlez_cbd_bud"] = 1,
                        ['gummymould'] = 1
                    }
                },
            }
        },
    },
    ["shop"] = {
        name = "whitewidow_shop",
        label = "White Widow Ingredients Shop",
        items = {
            { name = 'gelatine', price = 0, grade = 0  },
			{ name = 'sugar', price = 0, grade = 0  },
			{ name = 'trimmers', price = 0, grade = 0  },
			{ name = 'grinder', price = 0, grade = 0  },
			{ name = 'rollingpapers', price = 100, grade = 0  },
			{ name = 'gummymould', price = 100, grade = 0  },
			{ name = 'lighter', price = 50, grade = 0  },
            { name = 'bong', price = 150, grade = 0  },
        },
        coords = vector4(-1343.0065, -1227.3469, 9.7205, 297.2176),
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