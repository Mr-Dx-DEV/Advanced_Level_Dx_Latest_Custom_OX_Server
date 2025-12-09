Businesses["hightimes"] = {
    enabled = true,
    drawmarker = true,
    job = "hightimes",
    dutyzone = {
        zones = {
            vec2(370.75, -1281.22),
            vec2(391.23, -1253.92),
            vec2(363.46, -1229.74),
            vec2(306.33, -1241.36)
        },
        autoClock = { enter = true, exit = true },
        label = "High Times",
    },
    blips = {
        enabled = true,
        label = "High Times",
        sprite = 140,
        color = 50,
        scale = 0.7,
        coords = vector3(365.49, -1264.16, 32.72)
    },
    stash = {
        enabled = true,
        label = 'High Times Weed Shop Stash',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(362.58, -1258.18, 32.51)
        },
    },
    traysenabled = true,
    trays = {
        ["hightimes_Tray1"] = {
            label = "High Times Weed Shop Tray 1",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(365.19, -1267.08, 33.12)
            },
            size = vec3(1.5, 1.5, 1.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["hightimes_Tray2"] = {
            label = "High Times Weed Shop Tray 2",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(362.63, -1265.12, 33.07)
            },
            size = vec3(1.5, 1.5, 1.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["hightimes_Tray3"] = {
            label = "High Times Weed Shop Tray 3",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(360.82, -1261.52, 33.11)
            },
            size = vec3(1.5, 1.5, 1.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
    },
    props = {
        enabled = false,
        prop = 'prop_weed_01',
        coords = {
        },
    },
    bong = {
        enabled = true,
        menu = {
            header = "Hit the Bong",
            options = {
                {
                    item = "smoking_pineappleexpress_bud",
                    label = "Big Bussy Bud",
                    ingredients = { ["smoking_pineappleexpress_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "smoking_thejupiter_bud",
                    label = "The Doink Bud",
                    ingredients = { ["smoking_thejupiter_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "smoking_afterlife_bud",
                    label = "Cripple Bud",
                    ingredients = { ["smoking_afterlife_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "smoking_fossilfuel_bud",
                    label = "Doobie Bud",
                    ingredients = { ["smoking_fossilfuel_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "smoking_ogsmoking_bud",
                    label = "Wacky Tobacky Bud",
                    ingredients = { ["smoking_ogsmoking_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "smoking_greengod_bud",
                    label = "Green God Bud",
                    ingredients = { ["smoking_greengod_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "smoking_lockheartlove_bud",
                    label = "The Diddy Bud",
                    ingredients = { ["smoking_lockheartlove_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "smoking_nattypinkdelight_bud",
                    label = "Baked Kush Bud",
                    ingredients = { ["smoking_nattypinkdelight_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                }
            },
        },
        craftingTime = 20000,  -- Duration in milliseconds (20 seconds)
        item = "bong4",
        progressBarLabel = "Taking a bong hit..."
    },
    crafting = {
        ["hightimes Harvest 1"] = {
            label = "Harvest Big Bussy Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(347.83, -1250.82, 28.54)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "smoking_pineappleexpress_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },

        ["hightimes Harvest 2"] = {
            label = "Harvest The Doink Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(345.88, -1253.3, 28.53)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "smoking_thejupiter_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },

        ["hightimes Harvest 3"] = {
            label = "Harvest Doink Kush Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(344.91, -1248.12, 28.51)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "smoking_afterlife_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },

        ["hightimes Harvest 4"] = {
            label = "Harvest Doobie Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(342.73, -1250.23, 28.64)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "smoking_fossilfuel_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },

        ["hightimes Harvest 5"] = {
            label = "Harvest Wacky Tobacky Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(343.08, -1246.27, 28.57)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "smoking_ogsmoking_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },

        ["hightimes Harvest 6"] = {
            label = "Harvest Green God Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(340.84, -1248.55, 28.59)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "smoking_greengod_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },

        ["hightimes Harvest 7"] = {
            label = "Harvest The Diddy Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(342.34, -1248.93, 28.54)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "smoking_lockheartlove_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },

        ["hightimes Harvest 8"] = {
            label = "HarvestWee Wee Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(344.82, -1250.6, 28.63)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "smoking_nattypinkdelight_crop",
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
                vector3(348.22, -1238.54, 28.51)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "smoking_pineappleexpress_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["smoking_pineappleexpress_crop"] = 1,
                    }
                },
                [2] = {
                    item = "smoking_thejupiter_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["smoking_thejupiter_crop"] = 1,
                    }
                },
                [3] = {
                    item = "smoking_afterlife_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["smoking_afterlife_crop"] = 1,
                    }
                },
                [4] = {
                    item = "smoking_fossilfuel_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["smoking_fossilfuel_crop"] = 1,
                    }
                },
                [5] = {
                    item = "smoking_ogsmoking_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["smoking_ogsmoking_crop"] = 1,
                    }
                },
                [6] = {
                    item = "smoking_greengod_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["smoking_greengod_crop"] = 1,
                    }
                },
                [7] = {
                    item = "smoking_lockheartlove_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["smoking_lockheartlove_crop"] = 1,
                    }
                },
                [8] = {
                    item = "smoking_nattypinkdelight_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["smoking_nattypinkdelight_crop"] = 1,
                    }
                },
            }
        },

        ["Rolling"] = {
            label = "Roll Joints",
            craftinglabel = 'Rolling',
            craftingtime = '2000',
            coords = {
                vector3(348.08, -1240.55, 28.51)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "smoking_pineappleexpressjoint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["smoking_pineappleexpress_bud"] = 1,
                    }
                },
                [2] = {
                    item = "smoking_thejupiterjoint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["smoking_thejupiter_bud"] = 1,
                    }
                },
                [3] = {
                    item = "smoking_afterlifejoint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["smoking_afterlife_bud"] = 1,
                    }
                },
                [4] = {
                    item = "smoking_fossilfueljoint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["smoking_fossilfuel_bud"] = 1,
                    }
                },
                [5] = {
                    item = "smoking_ogsmokingjoint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["smoking_ogsmoking_bud"] = 1,
                    }
                },
                [6] = {
                    item = "smoking_greengodjoint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["smoking_greengod_bud"] = 1,
                    }
                },
                [7] = {
                    item = "smoking_lockheartlovejoint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["smoking_lockheartlove_bud"] = 1,
                    }
                },
                [8] = {
                    item = "smoking_nattypinkdelightjoint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["smoking_nattypinkdelight_bud"] = 1,
                    }
                },
            }
        },

        ["Oven"] = {
            label = "Oven",
            craftinglabel = 'Cooking',
            craftingtime = '2000',
            coords = {
                vector3(349.83, -1239.6, 28.51)
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
                        ["smoking_pineappleexpress_bud"] = 1,
                    }
                },
                [2] = {
                    item = "smoking_pineappleexpressgummy",
                    ingredients = {
                        ["gummymould"] = 1,
                       ["gelatine"] = 1,
                        ["sugar"] = 1,
                        ["smoking_pineappleexpress_bud"] = 1,
                    }
                },
                [3] = {
                    item = "smoking_thejupitercookie",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["weed_cannabutter"] = 1,
                        ["egg"] = 1,
                        -- ["milk"] = 1,
                        ["flour"] = 1,
                        -- ["sugar"] = 1,
                        ["chocolatechips"] = 1,
                        ["smoking_thejupiter_bud"] = 1,
                    }
                },
                [4] = {
                    item = "smoking_afterlifecakepop",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["weed_cannabutter"] = 1,
                        ["egg"] = 1,
                        ["milk"] = 1,
                        ["flour"] = 1,
                        -- ["sugar"] = 1,
                        -- ["smoking_afterlife_bud"] = 1,
                    }
                },
                [5] = {
                    item = "smoking_fossilfuelgummy",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["gelatine"] = 1,
                        ["sugar"] = 1,
                        ["smoking_fossilfuel_bud"] = 1,
                    }
                },
                [6] = {
                    item = "smoking_ogsmokingcakepop",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["weed_cannabutter"] = 1,
                        ["egg"] = 1,
                        ["milk"] = 1,
                        ["flour"] = 1,
                        -- ["sugar"] = 1,
                        -- ["smoking_ogsmoking_bud"] = 1,
                    }
                },
                [7] = {
                    item = "smoking_greengodbrownie",
                    ingredients = {
                        ["gummymould"] = 1,
                        -- ["weed_cannabutter"] = 1,
                        -- ["egg"] = 1,
                        ["milk"] = 1,
                        ["flour"] = 1,
                       -- ["sugar"] = 1,
                        ["chocolatechips"] = 1,
                        ["smoking_greengod_bud"] = 1,
                    }
                },
                [8] = {
                    item = "smoking_lockheartlovecookie",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["egg"] = 1,
                        ["milk"] = 1,
                        ["flour"] = 1,
                        -- ["sugar"] = 1,
                        -- ["weed_cannabutter"] = 1,
                        ["chocolatechips"] = 1,
                        ["smoking_lockheartlove_bud"] = 1,
                    }
                },
                [9] = {
                    item = "smoking_nattypinkdelightgummy",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["gelatine"] = 1,
                        ["sugar"] = 1,
                        ["smoking_fossilfuel_bud"] = 1,
                    }
                },
            }
        },

    },
    ["shop"] = {
        name = "smoking_shop",
        label = "hightimes Ingredients Shop",
        items = {
            { name = 'gelatine', price = 0, grade = 0  },
			{ name = 'butter', price = 0, grade = 0  },
			{ name = 'sugar', price = 0, grade = 0  },
			{ name = 'flour', price = 0, grade = 0  },
			{ name = 'egg', price = 0, grade = 0  },
			{ name = 'milk', price = 0, grade = 0  },
			{ name = 'chocolatechips', price = 0, grade = 0  },
			{ name = 'trimmers', price = 0, grade = 0  },
			{ name = 'grinder', price = 0, grade = 0  },
			{ name = 'rollingpapers', price = 100, grade = 0  },
			{ name = 'gummymould', price = 100, grade = 0  },
			{ name = 'lighter', price = 50, grade = 0  },
            { name = 'bong4', price = 150, grade = 0  },
        },
        coords = vector4(352.83, -1241.1, 28.51, 140.05),
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