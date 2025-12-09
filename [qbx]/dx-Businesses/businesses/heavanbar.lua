Businesses["heavenbar"] = {
    enabled = true,
    drawmarker = true,
    job = "heavenbar",
    dutyzone = {
        zones = {
            vector2(-187.28, 6328.92),
            vector2(-168.36, 6350.11),
            vector2(-142.69, 6322.08),
            vector2(-159.49, 6303.43),
        },
        autoClock = { enter = true, exit = true },
        label = "HeavenBar",
    },
    blips = {
        enabled = true,
        label = "Heaven Bar",
        sprite = 671,
        color = 47,
        scale = 0.8,
        coords = vector3(-172.5, 6328.83, 31.58)
    },
    stash = {
        enabled = false,
        label = '',
        slots = '60',
        weight = '4000000',
        coords = {

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
    crafting = {
        ["drink"] = {
            label = "Drink Station",
            craftinglabel = 'Preparing',
            craftingtime = '2000',
            coords = {
                vector3(-172.5, 6328.83, 31.58)
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "heaven_jagerbomb",
                    ingredients = {
                        ["vodka"] = 1,
                        ["sprunk"] = 1,
                    }
                },
                [2]  = {
                    item = "heaven_vodka",
                    ingredients = {
                        ["vodka"] = 1,
                        ["cranberry"] = 1,
                    }
                },
                [3]  = {
                    item = "heaven_whiskey",
                    ingredients = {
                        ["rum"] = 1,
                        ["orange"] = 1,
                    }
                },
                [4]  = {
                    item = "heaven_tequila",
                    ingredients = {
                        ["tequila"] = 1,
                        ["triplsec"] = 1
                    }
                },
                [5]  = {
                    item = "heaven_fireball",
                    ingredients = {
                        ["rum"] = 1,
                        ["amaretto"] = 1,
                        ["orange"] = 1
                    }
                },
                [6]  = {
                    item = "heaven_bdayshot",
                    ingredients = {
                        ["vodka"] = 1,
                        ["prosecco"] = 1,
                    }
                },
            },
        },

        ["food"] = {
            label = "Food Station",
            craftinglabel = 'Preparing',
            craftingtime = '2000',
            coords = {
                vector3(-173.45, 6327.01, 31.65)
            }, -- coordinates for food Station
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "vusliders",
                    ingredients = {
                        ["meat"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [2]  = {
                    item = "vutacos",
                    ingredients = {
                        ["meat"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [3]  = {
                    item = "nplate",
                    ingredients = {
                        ["nachos"] = 1,
                        ["cheddar"] = 1,
                    }
                },
                [4]  = {
                    item = "tots",
                    ingredients = {
                        ["potato"] = 1,
                    }
                },
            },
        }
    },
    ["shop"] = {
        name = "heaven_bar_ingredients",
        label = "Heaven Bar Ingredients Shop",
        items = {
            { name = 'cranberry', price = 0 },
			{ name = 'gin', price = 0 },
			{ name = 'rum', price = 0 },
			{ name = 'amaretto', price = 0 },
			{ name = 'vodka', price = 0 },
			{ name = 'prosecco', price = 0 },
			{ name = 'pinejuice', price = 0 },
			{ name = 'tequila', price = 0 },
            { name = 'triplsec', price = 0 },
            { name = 'sprunk', price = 0 },
            { name = 'sprunklight', price = 0 },
            { name = 'ecola', price = 0 },
            { name = 'ecolalight', price = 0 },
            { name = 'crisps', price = 0 },
            { name = 'orange', price = 0 },
            { name = 'fries', price = 0 },
			{ name = 'wings', price = 0 },
            { name = "meat", price = 0},
            { name = "lettuce", price = 0},
            { name = "cheddar", price = 0},
            { name = "potato", price = 0},
            { name = "nachos", price = 0},
            { name = 'beer', price = 0 },

        },
        coords = vector4(-171.23, 6335.25, 31.58, 144.76),
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