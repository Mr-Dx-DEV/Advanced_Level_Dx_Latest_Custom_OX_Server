Businesses["hornbills"] = {
    enabled = true,
    drawmarker = true,
    job = "hornbills",
    dutyzone = {
        zones = {
            vec2(-402.551, 220.881),
            vec2(-364.327, 221.009), 
            vec2(-364.635, 191.52), 
            vec2(-402.066, 192.019)  
        },
        autoClock = { enter = true, exit = true },
        label = "Hornbills Nightclub",
    },
    blips = {
        enabled = true,
        label = "Hornbills Nightclub",
        sprite = 121,
        color = 5,
        scale = 0.7,
        coords = vec3(-377.712, 208.4, 83.651)  
    },
    stash = {
        enabled = true,
        label = 'Hornbills Nightclub Stash',
        slots = '40',
        weight = '400000',
        coords = {
            vec3(-390.069, 204.171, 83.651),  
            vec3(-392.713, 206.202, 83.651)  

        },
    },
    props = {
        enabled = false,
        prop = '',
        coords = {},
    },
    traysenabled = true,
    trays = {
        ["hornbillsclubCounter"] = {
            label = "Hornbills Nightclub Counter",
            slots = '40',
            weight = '20000',
            coords = {
                vec3(-386.005, 206.947, 83.651) 
            },
            size = vec3(0.7, 0.7, 0.7),
            rotation = 5,
            icon = 'fa-solid fa-bowl-food',
        },
        
    },
    crafting = {
        ["Cocktails"] = {
            label = "Cocktails Station",
            craftinglabel = 'Pouring Cocktails',
            craftingtime = '2000',
            coords = {
                vec3(-386.78, 208.686, 83.651)  
            },
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "paradisetwerkingtease",
                    ingredients = {
                        ["cranberry"] = 1,
                        ["gin"] = 1,
                    }
                },
                [2] = {
                    item = "paradisesexonthebeach",
                    ingredients = {
                        ["rum"] = 1,
                        ["amaretto"] = 1,
                        ["paradise_vodka"] = 1,
                    }
                },
                [3] = {
                    item = "paradiseblowjobshot",
                    ingredients = {
                        ["midori"] = 1,
                        ["paradise_vodka"] = 1,
                    }
                },
                [4] = {
                    item = "paradise_icedtea",
                    ingredients = {
                        ["amaretto"] = 1,
                        ["lemon"] = 1,
                    }
                },
            },
        },

        ["Beer"] = {
            label = "Beer Station",
            craftinglabel = 'Pouring Beers',
            craftingtime = '2000',
            coords = {
                vec3(-386.899, 204.146, 83.651) 
            },
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "ambeer",
                    ingredients = {},
                },
                [2] = {
                    item = "dusche",
                    ingredients = {},
                },
                [3] = {
                    item = "logger",
                    ingredients = {},
                },
                [4] = {
                    item = "pisswasser",
                    ingredients = {},
                },
                [5] = {
                    item = "pisswasser2",
                    ingredients = {},
                },
                [6] = {
                    item = "pisswasser3",
                    ingredients = {},
                },
            },
        },

        ["Food"] = {
            label = "Food Station",
            craftinglabel = 'Cooking Food',
            craftingtime = '2000',
            coords = {
                vec3(-386.713, 207.001, 83.651)  
            },
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "paradisebootyliciousburgers",
                    ingredients = {
                        ["meat"] = 1,
                        ["nachos"] = 1,
                        ["lettuce"] = 1,
                    }
                },
                [2] = {
                    item = "paradisecheekycheesesticks",
                    ingredients = {
                        ["cheddar"] = 1,
                        ["chocolate"] = 1,
                        ["nachos"] = 1,
                    }
                },
                [3] = {
                    item = "paradisestripperssliders",
                    ingredients = {
                        ["nachos"] = 1,
                        ["cubasil"] = 1,
                        ["cheddar"] = 1,
                    }
                },
                [4] = {
                    item = "paradisechessylickablefries",
                    ingredients = {
                        ["meat"] = 1,
                        ["lettuce"] = 1,
                    }
                },
            },
        },

        ["Coffee"] = {
            label = "Coffee Station",
            craftinglabel = 'Brewing Coffee',
            craftingtime = '2000',
            coords = {
        --        vec3(358.52, 283.24, 94.19)
            },
            anim = {
                dict = "mp_ped_interaction",
                clip = "handshake_guy_a",
            },
            items = {
                [1] = {
                    item = "coffee",
                    ingredients = { }
                },
            },
        }
    },
    ["shop"] = {
        name = "hornbills_shop",
        label = "Hornbills Nightclub Shop",
        items = {
            -- drink stuff
            { name = 'cranberry', price = 0 },
            { name = 'gin', price = 0 },
            { name = 'rum', price = 0 },
            { name = 'amaretto', price = 0 },
            { name = 'paradise_vodka', price = 0 },
            { name = 'midori', price = 0 },
            { name = 'lemon', price = 0 },
            { name = 'prosecco', price = 0 },
            { name = 'tequila', price = 0 },
            { name = 'triplsec', price = 0 },
            { name = 'sprunk', price = 0 },
            { name = 'sprunklight', price = 0 },
            { name = 'ecola', price = 0 },
            { name = 'ecolalight', price = 0 },
            { name = 'crisps', price = 0 },
            { name = 'orange', price = 0 },
            { name = 'lime', price = 0 },
            { name = 'pinejuice', price = 0 },

            -- food stuff 
            { name = 'cubasil', price = 0 },
            { name = 'nachos', price = 0 },
            { name = 'potato', price = 0 },
            { name = 'lettuce', price = 0 },
            { name = 'cheddar', price = 0 },
            { name = 'chocolate', price = 0 },
            { name = 'orange', price = 0 },
            { name = 'lime', price = 0 },
            { name = 'lemon', price = 0 },
            { name = 'crisps', price = 0 },
            { name = 'mintleaf', price = 0 },
            { name = 'peach', price = 0 },
            { name = 'strawberry', price = 0 },
            { name = 'meat', price = 0 },

        },
        coords = vec4(-389.686, 209.562, 83.651, 96.658),  
        ped = {
            ped = 'csb_stripper_01',
            scenario = "WORLD_HUMAN_HANG_OUT_STREET_CLUBHOUSE",
        },
        target = {
            radius = 2.0,
            targetIcon = "fas fa-wine-bottle",
            targetLabel = "Ingredients Shop",
            canInteract = function()
                return true
            end,
        }
    }
}