Businesses["comicweed"] = {
    enabled = true,
    drawmarker = true,
    job = "comicweed",
    dutyzone = {
        zones = {
            vec2(1154.2, -1004.59),
            vec2(1152.68, -971.06),
            vec2(1112.81, -974.83),
            vec2(1110.08, -1005.61)
            
        },
        autoClock = { enter = true, exit = true },
        label = "Cosmic Weed Shop",
    },
    blips = {
        enabled = true,
        label = "Cosmic Weed Shop",
        sprite = 140,
        color = 50,
        scale = 0.7,
        coords = vector3(1135.3352, -989.6584, 50.1615)
    },
    stash = {
        enabled = true,
        label = 'Cosmic Weed Shop Stash',
        slots = '100',
        weight = '1000000',
        coords = {
            vector3(1132.29, -993.43, 46.11),
            vector3(1123.73, -986.22, 46.37)
        },
    },
    traysenabled = true,
    trays = {
        ["CosmicWeed_Tray1"] = {
            label = "Cosmic Weed Shop Tray 1",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(1133.2651, -990.155, 46.2479)
            },
            size = vec3(0.5, 0.5, 0.5),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["CosmicWeed_Tray2"] = {
            label = "Cosmic Weed Shop Tray 2",
            slots = '20',
            weight = '20000',
            coords = {
                vector3(1133.468, -991.8398, 46.2479)
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
            vector4(1120.31, -980.69, 46.37, 271.75),
            vector4(1120.29, -981.42, 46.37, 267.21),
            vector4(1121.26, -983.07, 46.37, 286.86),
            vector4(1121.33, -984.69, 46.37, 291.54)
        },
    },
    bong = {
        enabled = true,
        menu = {
            header = "Hit the Bong",
            options = {
                {
                    item = "cosmic_pineappleexpress_bud",
                    label = "Big Bussy Bud",
                    ingredients = { ["cosmic_pineappleexpress_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "cosmic_thejupiter_bud",
                    label = "The Doink Bud",
                    ingredients = { ["cosmic_thejupiter_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "cosmic_afterlife_bud",
                    label = "Cripple Bud",
                    ingredients = { ["cosmic_afterlife_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "cosmic_fossilfuel_bud",
                    label = "Doobie Bud",
                    ingredients = { ["cosmic_fossilfuel_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "cosmic_ogcosmic_bud",
                    label = "Wacky Tobacky Bud",
                    ingredients = { ["cosmic_ogcosmic_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "cosmic_greengod_bud",
                    label = "Green God Bud",
                    ingredients = { ["cosmic_greengod_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "cosmic_lockheartlove_bud",
                    label = "The Diddy Bud",
                    ingredients = { ["cosmic_lockheartlove_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                },
                {
                    item = "cosmic_nattypinkdelight_bud",
                    label = "Baked Kush Bud",
                    ingredients = { ["cosmic_nattypinkdelight_bud"] = 1, ["lighter"] = 0 },
                    effects = { Stress = math.random(1, 3), Health = 10, Armour = 10 }
                }
            },
        },
        craftingTime = 20000,  -- Duration in milliseconds (20 seconds)
        item = "bong4",
        progressBarLabel = "Taking a bong hit..."
    },
    crafting = {
        ["Cosmic Harvest 1"] = {
            label = "Harvest Big Bussy Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(1121.83, -981.1, 46.39)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "cosmic_pineappleexpress_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },

        ["Cosmic Harvest 2"] = {
            label = "Harvest The Doink Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(1122.91, -980.95, 46.39)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "cosmic_thejupiter_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },

        ["Cosmic Harvest 3"] = {
            label = "Harvest Doink Kush Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(1123.43, -980.14, 46.4)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "cosmic_afterlife_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },

        ["Cosmic Harvest 4"] = {
            label = "Harvest Doobie Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(1121.0, -980.34, 46.39)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "cosmic_fossilfuel_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },

        ["Cosmic Harvest 5"] = {
            label = "Harvest Wacky Tobacky Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(1120.31, -980.69, 46.37)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "cosmic_ogcosmic_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },

        ["Cosmic Harvest 6"] = {
            label = "Harvest Green God Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(1120.29, -981.42, 46.37)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "cosmic_greengod_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },

        ["Cosmic Harvest 7"] = {
            label = "Harvest The Diddy Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(1121.26, -983.07, 46.37)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "cosmic_lockheartlove_crop",
                    ingredients = {
                        ["trimmers"] = 0,
                    }
                },
            }
        },

        ["Cosmic Harvest 8"] = {
            label = "HarvestWee Wee Crop",
            craftinglabel = 'Harvesting',
            craftingtime = '500',
            coords = {
                vector3(1121.33, -984.69, 46.37)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "cosmic_nattypinkdelight_crop",
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
                vector3(1123.0, -982.68, 46.37)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "cosmic_pineappleexpress_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["cosmic_pineappleexpress_crop"] = 1,
                    }
                },
                [2] = {
                    item = "cosmic_thejupiter_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["cosmic_thejupiter_crop"] = 1,
                    }
                },
                [3] = {
                    item = "cosmic_afterlife_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["cosmic_afterlife_crop"] = 1,
                    }
                },
                [4] = {
                    item = "cosmic_fossilfuel_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["cosmic_fossilfuel_crop"] = 1,
                    }
                },
                [5] = {
                    item = "cosmic_ogcosmic_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["cosmic_ogcosmic_crop"] = 1,
                    }
                },
                [6] = {
                    item = "cosmic_greengod_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["cosmic_greengod_crop"] = 1,
                    }
                },
                [7] = {
                    item = "cosmic_lockheartlove_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["cosmic_lockheartlove_crop"] = 1,
                    }
                },
                [8] = {
                    item = "cosmic_nattypinkdelight_bud",
                    ingredients = {
                        ["trimmers"] = 0,
                        ["cosmic_nattypinkdelight_crop"] = 1,
                    }
                },
            }
        },

        ["Rolling"] = {
            label = "Roll Joints",
            craftinglabel = 'Rolling',
            craftingtime = '2000',
            coords = {
                vector3(1123.27, -984.04, 46.37)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "cosmic_pineappleexpressjoint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["cosmic_pineappleexpress_bud"] = 1,
                    }
                },
                [2] = {
                    item = "cosmic_thejupiterjoint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["cosmic_thejupiter_bud"] = 1,
                    }
                },
                [3] = {
                    item = "cosmic_afterlifejoint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["cosmic_afterlife_bud"] = 1,
                    }
                },
                [4] = {
                    item = "cosmic_fossilfueljoint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["cosmic_fossilfuel_bud"] = 1,
                    }
                },
                [5] = {
                    item = "cosmic_ogcosmicjoint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["cosmic_ogcosmic_bud"] = 1,
                    }
                },
                [6] = {
                    item = "cosmic_greengodjoint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["cosmic_greengod_bud"] = 1,
                    }
                },
                [7] = {
                    item = "cosmic_lockheartlovejoint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["cosmic_lockheartlove_bud"] = 1,
                    }
                },
                [8] = {
                    item = "cosmic_nattypinkdelightjoint",
                    ingredients = {
                        ["rollingpapers"] = 1,
                        ["grinder"] = 0,
                        ["cosmic_nattypinkdelight_bud"] = 1,
                    }
                },
            }
        },

        ["Oven"] = {
            label = "Oven",
            craftinglabel = 'Cooking',
            craftingtime = '2000',
            coords = {
                vector3(1131.93, -990.47, 46.11)
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
                        ["cosmic_pineappleexpress_bud"] = 1,
                    }
                },
                [2] = {
                    item = "cosmic_pineappleexpressgummy",
                    ingredients = {
                        ["gummymould"] = 1,
                       ["gelatine"] = 1,
                        ["sugar"] = 1,
                        ["cosmic_pineappleexpress_bud"] = 1,
                    }
                },
                [3] = {
                    item = "cosmic_thejupitercookie",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["weed_cannabutter"] = 1,
                        ["egg"] = 1,
                        -- ["milk"] = 1,
                        ["flour"] = 1,
                        -- ["sugar"] = 1,
                        ["chocolatechips"] = 1,
                        ["cosmic_thejupiter_bud"] = 1,
                    }
                },
                [4] = {
                    item = "cosmic_afterlifecakepop",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["weed_cannabutter"] = 1,
                        ["egg"] = 1,
                        ["milk"] = 1,
                        ["flour"] = 1,
                        -- ["sugar"] = 1,
                        -- ["cosmic_afterlife_bud"] = 1,
                    }
                },
                [5] = {
                    item = "cosmic_fossilfuelgummy",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["gelatine"] = 1,
                        ["sugar"] = 1,
                        ["cosmic_fossilfuel_bud"] = 1,
                    }
                },
                [6] = {
                    item = "cosmic_ogcosmiccakepop",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["weed_cannabutter"] = 1,
                        ["egg"] = 1,
                        ["milk"] = 1,
                        ["flour"] = 1,
                        -- ["sugar"] = 1,
                        -- ["cosmic_ogcosmic_bud"] = 1,
                    }
                },
                [7] = {
                    item = "cosmic_greengodbrownie",
                    ingredients = {
                        ["gummymould"] = 1,
                        -- ["weed_cannabutter"] = 1,
                        -- ["egg"] = 1,
                        ["milk"] = 1,
                        ["flour"] = 1,
                       -- ["sugar"] = 1,
                        ["chocolatechips"] = 1,
                        ["cosmic_greengod_bud"] = 1,
                    }
                },
                [8] = {
                    item = "cosmic_lockheartlovecookie",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["egg"] = 1,
                        ["milk"] = 1,
                        ["flour"] = 1,
                        -- ["sugar"] = 1,
                        -- ["weed_cannabutter"] = 1,
                        ["chocolatechips"] = 1,
                        ["cosmic_lockheartlove_bud"] = 1,
                    }
                },
                [9] = {
                    item = "cosmic_nattypinkdelightgummy",
                    ingredients = {
                        ["gummymould"] = 1,
                        ["gelatine"] = 1,
                        ["sugar"] = 1,
                        ["cosmic_fossilfuel_bud"] = 1,
                    }
                },
            }
        },

    },
    ["shop"] = {
        name = "comicweed_shop",
        label = "Cosmic Ingredients Shop",
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
        coords = vector4(1131.98, -987.56, 46.11, 189.62),
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