Businesses["upnatom"] = {
    enabled = true,
    drawmarker = true,
    job = "upnatom",
    dutyzone = {
        zones = {
            vector2(59.09, 269.32),
            vector2(93.18, 256.82),
            vector2(109.85, 301.89),
            vector2(90.91, 308.33),
            vector2(87.88, 303.79),
            vector2(82.58, 303.79),
            vector2(77.27, 303.79),
            vector2(71.97, 298.48)
        },
        autoClock = { enter = true, exit = true },
        label = "Up n Atom",
    },
    blips = {
        enabled = true,
        label = "Up n Atom",
        sprite = 76,
        color = 1,
        scale = 0.7,
        coords = vector3(81.89, 276.98, 110.21)
    },
    stash = {
        enabled = true,
        label = 'Up n Atom Stash',
        slots = '40',
        weight = '400000',
        coords = {
            vector3(94.26, 288.8, 110.21)
        },
    },
    props = {
        enabled = false,
        prop = '',
        coords = {},
    },
    traysenabled = true,
    trays = {
        ["UpnAtomCounter"] = {
            label = "Up n Atom Counter",
            slots = '20',
            weight = '20000',
            coords = {
                vec3(89.18, 288.14, 110.13)
            },
            size = vec3(0.7, 0.7, 0.7),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },

        ["UpnAtomCounter2"] = {
            label = "Up n Atom Counter 2",
            slots = '20',
            weight = '20000',
            coords = {
                vec3(89.77, 286.95, 110.13)
            },
            size = vec3(0.7, 0.7, 0.7),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        ["UpnAtomCounter3"] = {
            label = "Up n Atom Counter 2",
            slots = '20',
            weight = '20000',
            coords = {
                vec3(94.72, 285.34, 110.57)
            },
            size = vec3(0.7, 0.7, 0.7),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        }
    },
    crafting = {
        ["AtomGrill"] = {
            label = "Grill Station",
            craftinglabel = 'Grilling Burgers',
            craftingtime = '2000',
            coords = {
                vector3(94.58, 291.6, 110.21)
            },
            anim = {
                dict = "amb@prop_human_bbq@male@base",
                clip = "base",
            },
            items = {
                [1] = {
                    item = "burgermeat",
                    ingredients = { ["burgerpatty"] = 1, }
                },
                [2]  = {
                    item = "hotdogmeat",
                    ingredients = { ["rawhotdog"] = 1, }
                },
                [3]  = {
                    item = "chickenfillet",
                    ingredients = { ["chickenbreast"] = 1, }
                },
                [4]  = {
                    item = "bacon",
                    ingredients = { ["rawbacon"] = 1, }
                }
            },
        },

        ["AtomFryer"] = {
            label = "Fryer Station",
            craftinglabel = 'Frying Fries',
            craftingtime = '2000',
            coords = {
                vector3(92.3, 292.09, 110.21)
            },
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "atomfries",
                    ingredients = { ['slicedpotato'] = 1, }
                }
            },
        },

        ["AtomChoppingBoard"] = {
            label = "Atom Chopping Board",
            craftinglabel = 'Chopping Ingredients',
            craftingtime = '2000',
            coords = {
                vector3(96.28, 293.54, 110.21)
            },
            anim = {
                dict = "mp_arresting",
                clip = "a_uncuff",
            },
            items = {
                [1] = {
                    item = "slicedtomato",
                    ingredients = { ['tomato'] = 1, }
                },

                [2]  = {
                    item = "slicedpotato",
                    ingredients = { ['potato'] = 1, }
                },
            },
        },

        ["AtomPrepare"] = {
            label = "Prepare Station",
            craftinglabel = 'Preparing Food',
            craftingtime = '2000',
            coords = {
                vector3(92.14, 289.13, 110.21)
            },
            anim = {
                dict = "anim@heists@prison_heiststation@cop_reactions",
                clip = "cop_b_idle",
            },
            items = {
                [1] = {
                    item = "tripleburger",
                    ingredients = { ['burgermeat'] = 3, ['burgerbun'] = 1, ['cheddar'] = 1, ['lettuce'] = 1, ['slicedtomato'] = 1, }
                },

                [2]  = {
                    item = "baconcheesemelt",
                    ingredients = { ['bacon'] = 10, ['burgermeat'] = 1, ['lettuce'] = 1, ['burgerbun'] = 1, ['cheddar'] = 3, }
                },

                [3]  = {
                    item = "chillidog",
                    ingredients = { ['hotdogmeat'] = 1, ['hotdogbun'] = 1, ['cheddar'] = 1, ['chillimince'] = 1, }
                },

                [4]  = {
                    item = "grilledchicken",
                    ingredients = { ['chickenfillet'] = 1, ['slicedtomato'] = 1, }
                },
            },
        },

        ["AtomDrink"] = {
            label = "Drink Station",
            craftinglabel = 'Pouring Drinks',
            craftingtime = '2000',
            coords = {
                vector3(93.61, 286.61, 110.21)
            },
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "water_bottle",
                    ingredients = { }
                },
                [2]  = {
                    item = "atomsoda",
                    ingredients = { }
                },
                [3]  = {
                    item = "ecola",
                    ingredients = { }
                },
                [4]  = {
                    item = "ecolalight",
                    ingredients = { }
                },
                [5]  = {
                    item = "sprunk",
                    ingredients = { }
                },
                [6]  = {
                    item = "sprunklight",
                    ingredients = { }
                },
                [7]  = {
                    item = "raine",
                    ingredients = { }
                },
                [8]  = {
                    item = "orangotang",
                    ingredients = { }
                },
                [9]  = {
                    item = "junkdrink",
                    ingredients = { }
                },
            },
        },

        ["AtomShakesCoffee"] = {
            label = "Shake & Coffee Station",
            craftinglabel = 'Making .....',
            craftingtime = '2000',
            coords = {
                vector3(92.34, 287.16, 110.21)
            },
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1]  = {
                    item = "creamyshake",
                    ingredients = { ['butter'] = 10, ['milk'] = 1, ['cream'] = 1, }
                },
                [2]  = {
                    item = "coffee",
                    ingredients = { }
                }
            },
        },
    },
    ["shop"] = {
        name = "upnatom_shop",
        label = "Up n Atom Shop",
        items = {
            { name = 'burgerpatty', price = 0 },
			{ name = 'cheddar', price = 0 },
            { name = 'lettuce', price = 0 },
            { name = 'tomato', price = 0 },
            { name = 'burgerbun', price = 0 },
            { name = 'hotdogbun', price = 0 },
            { name = 'rawbacon', price = 0 },
            { name = 'rawhotdog', price = 0 },
            { name = 'chillimince', price = 0 },
            { name = 'butter', price = 0 },
            { name = 'potato', price = 0 },
            { name = 'chickenbreast', price = 0 },
            { name = 'milk', price = 0 },
            { name = 'cream', price = 0 }
        },
        coords = vector4(88.34, 293.25, 110.21, 256.23),
        ped = {
            ped = 'a_m_y_smartcaspat_01',
            scenario = "WORLD_HUMAN_HANG_OUT_STREET_CLUBHOUSE",
        },
        target = {
            radius = 2.3,
            targetIcon = "fas fa-box-open",
            targetLabel = "Ingredients Shop",
            canInteract = function()
                return true
            end,
        }
    }
}