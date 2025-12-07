Config = {}
Config.Framework = "qb" -- auto, esx or qb
Config.debug = false
Config.Target = true
Config.whoSellerActiv = true

Config.Categories = {
    [1] = {
        id = "drinks",
        label = "Drinks",
        jobs = {'suncafe', 'ambulance', 'police'}
    },
    [2] = {
        id = "foods",
        label = "Foods",
        jobs = {'suncafe', 'ambulance', 'police'}
    },
    [3] = {
        id = "desserts",
        label = "Desserts",
        jobs = {'suncafe', 'ambulance', 'police'}
    }
}

Config.orderSettings = {
    orderCar = 'burrito3',
    orderDriverPed = 'a_m_m_salton_02'
}

Config.whoSeller = {
    {   
        label = 'Banana',
        item = 'banana',
        price = '10'
    },
    {   
        label = 'Bread',
        item = 'bread',
        price = '10'
    },    {   
        label = 'Burger Bun',
        item = 'burgerbun',
        price = '10'
    },
    {   
        label = 'Cheddar',
        item = 'cheddar',
        price = '10'
    },
    {   
        label = 'Cheese',
        item = 'cheese',
        price = '10'
    },
    {   
        label = 'Coffee Bean',
        item = 'coffeebean',
        price = '10'
    },
    {   
        label = 'Dough',
        item = 'dough',
        price = '10'
    },
    {   
        label = 'Egg',
        item = 'egg',
        price = '10'
    },
    {   
        label = 'Ethyl Alcohol',
        item = 'ethylalcohol',
        price = '10'
    },
    {   
        label = 'Flour',
        item = 'flour',
        price = '10'
    },
    {   
        label = 'Ice cream',
        item = 'ice',
        price = '10'
    },
    {   
        label = 'Lemon',
        item = 'lemon',
        price = '10'
    },
    {   
        label = 'Lettuce',
        item = 'lettuce',
        price = '10'
    },
    {   
        label = 'Milk',
        item = 'milk',
        price = '10'
    },
    {   
        label = 'Minced Meat',
        item = 'mincedmeat',
        price = '10'
    },
    {   
        label = 'Onion',
        item = 'onion',
        price = '10'
    },
    {   
        label = 'Packaged Chicken',
        item = 'packaged_chicken',
        price = '10'
    },
    {   
        label = 'Rice',
        item = 'rice',
        price = '10'
    },
    {   
        label = 'Salami',
        item = 'salami',
        price = '10'
    },
    {   
        label = 'Salt',
        item = 'salt',
        price = '10'
    },
    {   
        label = 'Strawberry',
        item = 'strawberry',
        price = '10'
    },
    {   
        label = 'Sugar',
        item = 'sugar',
        price = '10'
    },
    {   
        label = 'Veal Meat',
        item = 'vealmeat',
        price = '10'
    },
    {   
        label = 'White Chocolate',
        item = 'whitechocolate',
        price = '10'
    },
    {   
        label = 'Yeast',
        item = 'yeast',
        price = '10'
    }
}

Config.Stores = {
    [1] = {
        job = "police",
        coords = vector3(-1387.91, -933.4, 10.75),
        
        order = {
            vehicleSpawn = vector4(-1433.99, -944.96, 8.89, 315.63),
            destination = vector3(-1375.35, -891.29, 13.61),
            vehicleDelete = vector3(-1374.22, -1012.4, 7.29),
        },

        items = {
            [1] = {
                item = "bread",
                category = "drinks",
                craftTime = 3000, -- milisecond 
                image = "public/banners/beer.png",
                title = "Beer",
                
                requirements = {
                    [1] = {
                        name = "bread",
                        label = "Yeast",
                        amount = 1
                    },
                    -- [2] = {
                    --     name = "water_bottle",
                    --     label = "Water",
                    --     amount = 1
                    -- },
                    -- [3] = {
                    --     name = "ice",
                    --     label = "Ice",
                    --     amount = 3
                    -- }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [2] = {
                item = "coffee",
                category = "drinks",
                craftTime = 3000, -- milisecond 
                image = "public/banners/coffee.png",
                title = "Coffee",
                
                requirements = {
                    [1] = {
                        name = "water_bottle",
                        label = "Water",
                        amount = 1
                    },
                    [2] = {
                        name = "coffeebean",
                        label = "Coffee Bean",
                        amount = 2
                    },
                    [3] = {
                        name = "sugar",
                        label = "Sugar",
                        amount = 1
                    }
                },

                animation = {
                    dict = "amb@world_human_vehicle_mechanic@male@base",
                    anim = "machinic_loop_mechandplayer"
                }
            },
            [3] = {
                item = "coollime",
                category = "drinks",
                craftTime = 3000, -- milisecond 
                image = "public/banners/coollime.png",
                title = "Cool Lime",
                
                requirements = {
                    [1] = {
                        name = "lemon",
                        label = "Lemon",
                        amount = 2
                    },
                    [2] = {
                        name = "ice",
                        label = "Ice",
                        amount = 3
                    },
                    [3] = {
                        name = "sugar",
                        label = "Sugar",
                        amount = 1
                    },
                    [4] = {
                        name = "water_bottle",
                        label = "Water",
                        amount = 1
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [4] = {
                item = "icetea",
                category = "drinks",
                craftTime = 3000, -- milisecond 
                image = "public/banners/icetea.png",
                title = "Ice Tea",
                
                requirements = {
                    [1] = {
                        name = "water_bottle",
                        label = "Water",
                        amount = 1
                    },
                    [2] = {
                        name = "ice",
                        label = "Ice",
                        amount = 3
                    },
                    [3] = {
                        name = "lemon",
                        label = "Lemon",
                        amount = 2
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [5] = {
                item = "kurkakola",
                category = "drinks",
                craftTime = 3000, -- milisecond 
                image = "public/banners/kurkakola.png",
                title = "Cola",
                
                requirements = {
                    [1] = {
                        name = "water_bottle",
                        label = "Water",
                        amount = 1
                    },
                    [2] = {
                        name = "sugar",
                        label = "Sugar",
                        amount = 2
                    },
                    [3] = {
                        name = "coffeebean",
                        label = "Caffeine",
                        amount = 2
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [6] = {
                item = "milkshake",
                category = "drinks",
                craftTime = 3000, -- milisecond 
                image = "public/banners/milkshake.png",
                title = "Milkshake",
                
                requirements = {
                    [1] = {
                        name = "icecream",
                        label = "Ice Cream",
                        amount = 1
                    },
                    [2] = {
                        name = "milk",
                        label = "Milk",
                        amount = 1
                    },
                    [3] = {
                        name = "ice",
                        label = "Ice",
                        amount = 2
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [7] = {
                item = "frappe",
                category = "drinks",
                craftTime = 3000, -- milisecond 
                image = "public/banners/frappe.png",
                title = "Frappe",
                
                requirements = {
                    [1] = {
                        name = "ice",
                        label = "Ice",
                        amount = 3
                    },
                    [2] = {
                        name = "water_bottle",
                        label = "Water",
                        amount = 1
                    },
                    [3] = {
                        name = "coffeebean",
                        label = "Coffee Bean",
                        amount = 3
                    },
                    [4] = {
                        name = "sugar",
                        label = "Sugar",
                        amount = 1
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [8] = {
                item = "cocowhite",
                category = "drinks",
                craftTime = 3000, -- milisecond 
                image = "public/banners/cocowhite.png",
                title = "Cocowhite",
                
                requirements = {
                    [1] = {
                        name = "whitechocolate",
                        label = "White Chocolate",
                        amount = 2
                    },
                    [2] = {
                        name = "pistachio",
                        label = "Pistachio",
                        amount = 4
                    },
                    [3] = {
                        name = "milk",
                        label = "Milk",
                        amount = 1
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [9] = {
                item = "burgerxl",
                category = "foods",
                craftTime = 3000, -- milisecond 
                image = "public/banners/burgerxl.png",
                title = "Three Patty Burger",
                
                requirements = {
                    [1] = {
                        name = "mincedmeat",
                        label = "Minced Meat",
                        amount = 2
                    },
                    [2] = {
                        name = "burgerbun",
                        label = "Burger Bun",
                        amount = 1
                    },
                    [3] = {
                        name = "flour",
                        label = "Flour",
                        amount = 1
                    },
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [10] = {
                item = "chickenburger",
                category = "foods",
                craftTime = 3000, -- milisecond 
                image = "public/banners/chickenburger.png",
                title = "Chicken Burger",
                
                requirements = {
                    [1] = {
                        name = "packaged_chicken",
                        label = "Packaged Chicken",
                        amount = 2
                    },
                    [2] = {
                        name = "burgerbun",
                        label = "Burger Bun",
                        amount = 1
                    },
                    [3] = {
                        name = "flour",
                        label = "Flour",
                        amount = 1
                    },
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [11] = {
                item = "chickenpotato",
                category = "foods",
                craftTime = 3000, -- milisecond 
                image = "public/banners/chickenpotato.png",
                title = "Chicken Potato",
                
                requirements = {
                    [1] = {
                        name = "packaged_chicken",
                        label = "Packaged Chicken",
                        amount = 1
                    },
                    [2] = {
                        name = "salt",
                        label = "Salt",
                        amount = 2
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [12] = {
                item = "crispychicken",
                category = "foods",
                craftTime = 3000, -- milisecond 
                image = "public/banners/crispychicken.png",
                title = "Crispy Chicken",
                
                requirements = {
                    [1] = {
                        name = "packaged_chicken",
                        label = "Packaged Chicken",
                        amount = 2
                    },
                    [2] = {
                        name = "flour",
                        label = "Flour",
                        amount = 1
                    },
                    [3] = {
                        name = "salt",
                        label = "Salt",
                        amount = 2
                    },
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [13] = {
                item = "onionring",
                category = "foods",
                craftTime = 3000, -- milisecond 
                image = "public/banners/onionring.png",
                title = "Onion Ring",
                
                requirements = {
                    [1] = {
                        name = "salt",
                        label = "Salt",
                        amount = 2
                    },
                    [2] = {
                        name = "flour",
                        label = "Flour",
                        amount = 1
                    },
                    [3] = {
                        name = "onion",
                        label = "Onion",
                        amount = 2
                    },
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [14] = {
                item = "tenderloin",
                category = "foods",
                craftTime = 3000, -- milisecond 
                image = "public/banners/tenderloin.png",
                title = "Tenderloin",
                
                requirements = {
                    [1] = {
                        name = "salt",
                        label = "Salt",
                        amount = 1
                    },
                    [2] = {
                        name = "lettuce",
                        label = "Lettuce",
                        amount = 2
                    },
                    [3] = {
                        name = "vealmeat",
                        label = "Veal Meat",
                        amount = 1
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [15] = {
                item = "sandwich",
                category = "foods",
                craftTime = 3000, -- milisecond 
                image = "public/banners/sandwich.png",
                title = "Sandwich",
                
                requirements = {
                    [1] = {
                        name = "bread",
                        label = "Bread",
                        amount = 2
                    },
                    [2] = {
                        name = "salami",
                        label = "Salami",
                        amount = 2
                    },
                    [3] = {
                        name = "cheddar",
                        label = "Cheddar",
                        amount = 2
                    },
                    [4] = {
                        name = "lettuce",
                        label = "Lettuce",
                        amount = 1
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [16] = {
                item = "pizza",
                category = "foods",
                craftTime = 3000, -- milisecond 
                image = "public/banners/pizza.png",
                title = "Pizza",
                
                requirements = {
                    [1] = {
                        name = "dough",
                        label = "Dough",
                        amount = 1
                    },
                    [2] = {
                        name = "salami",
                        label = "Salami",
                        amount = 2
                    },
                    [3] = {
                        name = "cheddar",
                        label = "Cheddar",
                        amount = 2
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [17] = {
                item = "cookie",
                category = "desserts",
                craftTime = 3000, -- milisecond 
                image = "public/banners/cookie.png",
                title = "Cookie",
                
                requirements = {
                    [1] = {
                        name = "egg",
                        label = "Egg",
                        amount = 1
                    },
                    [2] = {
                        name = "sugar",
                        label = "Sugar",
                        amount = 1
                    },
                    [3] = {
                        name = "flour",
                        label = "Flour",
                        amount = 1
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [18] = {
                item = "donut",
                category = "desserts",
                craftTime = 3000, -- milisecond 
                image = "public/banners/donut.png",
                title = "Donut",
                
                requirements = {
                    [1] = {
                        name = "milk",
                        label = "Milk",
                        amount = 1
                    },
                    [2] = {
                        name = "sugar",
                        label = "Sugar",
                        amount = 2
                    },
                    [3] = {
                        name = "egg",
                        label = "Egg",
                        amount = 1
                    },
                    [4] = {
                        name = "water_bottle",
                        label = "Water",
                        amount = 1
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [19] = {
                item = "waffle",
                category = "desserts",
                craftTime = 3000, -- milisecond 
                image = "public/banners/waffle.png",
                title = "Waffle",
                
                requirements = {
                    [1] = {
                        name = "strawberry",
                        label = "Strawberry",
                        amount = 5
                    },
                    [2] = {
                        name = "egg",
                        label = "Egg",
                        amount = 2
                    },
                    [3] = {
                        name = "milk",
                        label = "Milk",
                        amount = 1
                    },
                    [4] = {
                        name = "flour",
                        label = "Flour",
                        amount = 2
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [20] = {
                item = "ricepudding",
                category = "desserts",
                craftTime = 3000, -- milisecond 
                image = "public/banners/ricepudding.png",
                title = "Rice Pudding",
                
                requirements = {
                    [1] = {
                        name = "rice",
                        label = "Rice",
                        amount = 5
                    },
                    [2] = {
                        name = "milk",
                        label = "Milk",
                        amount = 1
                    },
                    [3] = {
                        name = "sugar",
                        label = "Sugar",
                        amount = 2
                    },
                    [4] = {
                        name = "water_bottle",
                        label = "Water",
                        amount = 1
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [21] = {
                item = "magnolia",
                category = "desserts",
                craftTime = 3000, -- milisecond 
                image = "public/banners/magnolia.png",
                title = "Magnolia",
                
                requirements = {
                    [1] = {
                        name = "sugar",
                        label = "Sugar",
                        amount = 1
                    },
                    [2] = {
                        name = "egg",
                        label = "Egg",
                        amount = 1
                    },
                    [3] = {
                        name = "strawberry",
                        label = "Strawberry",
                        amount = 10
                    },
                    [4] = {
                        name = "milk",
                        label = "Milk",
                        amount = 1
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [22] = {
                item = "cupcake",
                category = "desserts",
                craftTime = 3000, -- milisecond 
                image = "public/banners/cupcake.png",
                title = "Cupcake",
                
                requirements = {
                    [1] = {
                        name = "milk",
                        label = "Milk",
                        amount = 1
                    },
                    [2] = {
                        name = "egg",
                        label = "Egg",
                        amount = 3
                    },
                    [3] = {
                        name = "flour",
                        label = "Flour",
                        amount = 2
                    },
                    [4] = {
                        name = "sugar",
                        label = "Sugar",
                        amount = 1
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [23] = {
                item = "fruitpancakes",
                category = "desserts",
                craftTime = 3000, -- milisecond 
                image = "public/banners/fruitpancakes.png",
                title = "Fruit Pancakes",
                
                requirements = {
                    [1] = {
                        name = "banana",
                        label = "Banana",
                        amount = 5
                    },
                    [2] = {
                        name = "strawberry",
                        label = "Strawberry",
                        amount = 5
                    },
                    [3] = {
                        name = "dough",
                        label = "Dough",
                        amount = 1
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [24] = {
                item = "cheescake",
                category = "desserts",
                craftTime = 3000, -- milisecond 
                image = "public/banners/cheescake.png",
                title = "Cheescake",
                
                requirements = {
                    [1] = {
                        name = "cheese",
                        label = "Cheese",
                        amount = 1
                    },
                    [2] = {
                        name = "sugar",
                        label = "Sugar",
                        amount = 1
                    },
                    [3] = {
                        name = "flour",
                        label = "Flour",
                        amount = 3
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
        }
    },
    [2] = {
        job = "police",
        coords = vector3(-1407.21, -939.96, 10.87),
        order = {
            vehicleSpawn = vector4(63.31, -1318.76, 29.19, 210.23),
            destination = vector3(79.87, -1438.39, 29.31),
            vehicleDelete = vector3(60.76, -1423.55, 29.31),
        },
        items = {
            [1] = {
                item = "beer",
                category = "drinks",
                craftTime = 3000, -- milisecond 
                image = "public/banners/beer.png",
                title = "Beer sadsads",
                
                requirements = {
                    [1] = {
                        name = "yeast",
                        label = "Yeast",
                        amount = 1
                    },
                    [2] = {
                        name = "water_bottle",
                        label = "Water",
                        amount = 1
                    },
                    [3] = {
                        name = "ice",
                        label = "Ice",
                        amount = 3
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            },
            [2] = {
                item = "coffee",
                category = "drinks",
                craftTime = 3000, -- milisecond 
                image = "public/banners/coffee.png",
                title = "Coffee",
                
                requirements = {
                    [1] = {
                        name = "water_bottle",
                        label = "Water",
                        amount = 1
                    },
                    [2] = {
                        name = "coffeebean",
                        label = "Coffee Bean",
                        amount = 2
                    },
                    [3] = {
                        name = "sugar",
                        label = "Sugar",
                        amount = 1
                    }
                },

                animation = {
                    dict = "amb@world_human_vehicle_mechanic@male@base",
                    anim = "machinic_loop_mechandplayer"
                }
            },
            [3] = {
                item = "coollime",
                category = "drinks",
                craftTime = 3000, -- milisecond 
                image = "public/banners/coollime.png",
                title = "Cool Lime",
                
                requirements = {
                    [1] = {
                        name = "lemon",
                        label = "Lemon",
                        amount = 2
                    },
                    [2] = {
                        name = "ice",
                        label = "Ice",
                        amount = 3
                    },
                    [3] = {
                        name = "sugar",
                        label = "Sugar",
                        amount = 1
                    },
                    [4] = {
                        name = "water_bottle",
                        label = "Water",
                        amount = 1
                    }
                },

                animation = {
                    dict = "mini@repair",
                    anim = "fixing_a_ped"
                }
            }
        }
    }
}

Config.Locale = {
    crafting = "You crafting item...",
    craft = "Item successfully crafted!",
    no_perm = "You don't have permission!",
    noItem = "You do not have the requirements to craft this item!",
    openMenu = "[E] Open Menu",
    cancel = "Crafting progress canceled!",
    orderVeh = "The order van is on its way!",
    noYou = "You're not the one who ordered it!",
    alreadyOrder = "You already have an active order!",
    noMoney = 'Enough Money',
    emptyBasket = 'Basket empty!',
    orderSuccess = 'Let me know again if you need anything.',
    takeItems = '[E] Take items'
}

function getFramework()
    if Config.Framework == "esx" then
        return exports['es_extended']:getSharedObject(), "esx"
    elseif Config.Framework == "qb" then
        return exports["qb-core"]:GetCoreObject(), "qb"
    elseif Config.Framework == "auto" then
        if GetResourceState('qb-core') == 'started' then
            return exports["qb-core"]:GetCoreObject(), "qb"
        elseif GetResourceState('es_extended') == 'started' then
            return exports['es_extended']:getSharedObject(), "esx"
        end
    end
end

if GetResourceState('es_extended') == 'started' then
    Config.Framework = 'esx'
else
    Config.framework = 'qb'
end