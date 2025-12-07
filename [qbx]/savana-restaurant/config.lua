Config = {}

Config.Framework = "qb" -- auto, esx or qb
Config.debug = true
Config.Target = true

Config.Categories = {
    [1] = {id = "drinks", label = "Drinks", jobs = {'suncafe', 'ambulance', 'police'}},
    [2] = {id = "foods", label = "Foods", jobs = {'suncafe', 'ambulance', 'police'}},
    [3] = {id = "desserts", label = "Desserts", jobs = {'suncafe', 'ambulance', 'police'}},
    [4] = {id = "ingredients", label = "Ingredients", jobs = {'suncafe', 'ambulance', 'police'}}
}

Config.Stores = {
    [1] = {
        job = "suncafe",
        coords = vector3(-1382.92, -945.45, 9.96),
        items = {
            [1] = {
                item = "beer", category = "drinks", craftTime = 3000, image = "public/banners/beer.png", title = "Beer",
                requirements = {
                    [1] = {name = "yeast", label = "Yeast", amount = 1},
                    [2] = {name = "water_bottle", label = "Water", amount = 1},
                    [3] = {name = "ice", label = "Ice", amount = 3}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [2] = {
                item = "coffee", category = "drinks", craftTime = 3000, image = "public/banners/coffee.png", title = "Coffee",
                requirements = {
                    [1] = {name = "water_bottle", label = "Water", amount = 1},
                    [2] = {name = "coffeebean", label = "Coffee Bean", amount = 2},
                    [3] = {name = "sugar", label = "Sugar", amount = 1}
                },
                animation = {dict = "amb@world_human_vehicle_mechanic@male@base", anim = "machinic_loop_mechandplayer"}
            },
            [3] = {
                item = "coollime", category = "drinks", craftTime = 3000, image = "public/banners/coollime.png", title = "Cool Lime",
                requirements = {
                    [1] = {name = "lemon", label = "Lemon", amount = 2},
                    [2] = {name = "ice", label = "Ice", amount = 3},
                    [3] = {name = "sugar", label = "Sugar", amount = 1},
                    [4] = {name = "water_bottle", label = "Water", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [4] = {
                item = "icetea", category = "drinks", craftTime = 3000, image = "public/banners/icetea.png", title = "Ice Tea",
                requirements = {
                    [1] = {name = "water_bottle", label = "Water", amount = 1},
                    [2] = {name = "ice", label = "Ice", amount = 3},
                    [3] = {name = "lemon", label = "Lemon", amount = 2}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [5] = {
                item = "kurkakola", category = "drinks", craftTime = 3000, image = "public/banners/kurkakola.png", title = "Cola",
                requirements = {
                    [1] = {name = "water_bottle", label = "Water", amount = 1},
                    [2] = {name = "sugar", label = "Sugar", amount = 2},
                    [3] = {name = "coffeebean", label = "Caffeine", amount = 2}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [6] = {
                item = "milkshake", category = "drinks", craftTime = 3000, image = "public/banners/milkshake.png", title = "Milkshake",
                requirements = {
                    [1] = {name = "icecream", label = "Ice Cream", amount = 1},
                    [2] = {name = "milk", label = "Milk", amount = 1},
                    [3] = {name = "ice", label = "Ice", amount = 2}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [7] = {
                item = "frappe", category = "drinks", craftTime = 3000, image = "public/banners/frappe.png", title = "Frappe",
                requirements = {
                    [1] = {name = "ice", label = "Ice", amount = 3},
                    [2] = {name = "water_bottle", label = "Water", amount = 1},
                    [3] = {name = "coffeebean", label = "Coffee Bean", amount = 3},
                    [4] = {name = "sugar", label = "Sugar", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [8] = {
                item = "cocowhite", category = "drinks", craftTime = 3000, image = "public/banners/cocowhite.png", title = "Cocowhite",
                requirements = {
                    [1] = {name = "whitechocolate", label = "White Chocolate", amount = 2},
                    [2] = {name = "pistachio", label = "Pistachio", amount = 4},
                    [3] = {name = "milk", label = "Milk", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [9] = {
                item = "burgerxl", category = "foods", craftTime = 3000, image = "public/banners/burgerxl.png", title = "Three Patty Burger",
                requirements = {
                    [1] = {name = "mincedmeat", label = "Minced Meat", amount = 2},
                    [2] = {name = "burgerbun", label = "Burger Bun", amount = 1},
                    [3] = {name = "flour", label = "Flour", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [10] = {
                item = "chickenburger", category = "foods", craftTime = 3000, image = "public/banners/chickenburger.png", title = "Chicken Burger",
                requirements = {
                    [1] = {name = "packagedchicken", label = "Packaged Chicken", amount = 2},
                    [2] = {name = "burgerbun", label = "Burger Bun", amount = 1},
                    [3] = {name = "flour", label = "Flour", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [11] = {
                item = "chickenpotato", category = "foods", craftTime = 3000, image = "public/banners/chickenpotato.png", title = "Chicken Potato",
                requirements = {
                    [1] = {name = "packagedchicken", label = "Packaged Chicken", amount = 1},
                    [2] = {name = "salt", label = "Salt", amount = 2}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [12] = {
                item = "crispychicken", category = "foods", craftTime = 3000, image = "public/banners/crispychicken.png", title = "Crispy Chicken",
                requirements = {
                    [1] = {name = "packagedchicken", label = "Packaged Chicken", amount = 2},
                    [2] = {name = "flour", label = "Flour", amount = 1},
                    [3] = {name = "salt", label = "Salt", amount = 2}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [13] = {
                item = "onionring", category = "foods", craftTime = 3000, image = "public/banners/onionring.png", title = "Onion Ring",
                requirements = {
                    [1] = {name = "salt", label = "Salt", amount = 2},
                    [2] = {name = "flour", label = "Flour", amount = 1},
                    [3] = {name = "onion", label = "Onion", amount = 2}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [14] = {
                item = "tenderloin", category = "foods", craftTime = 3000, image = "public/banners/tenderloin.png", title = "Tenderloin",
                requirements = {
                    [1] = {name = "salt", label = "Salt", amount = 1},
                    [2] = {name = "lettuce", label = "Lettuce", amount = 2},
                    [3] = {name = "vealmeat", label = "Veal Meat", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [15] = {
                item = "sandwich", category = "foods", craftTime = 3000, image = "public/banners/sandwich.png", title = "Sandwich",
                requirements = {
                    [1] = {name = "bread", label = "Bread", amount = 2},
                    [2] = {name = "salami", label = "Salami", amount = 2},
                    [3] = {name = "cheddar", label = "Cheddar", amount = 2},
                    [4] = {name = "lettuce", label = "Lettuce", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [16] = {
                item = "pizza", category = "foods", craftTime = 3000, image = "public/banners/pizza.png", title = "Pizza",
                requirements = {
                    [1] = {name = "dough", label = "Dough", amount = 1},
                    [2] = {name = "salami", label = "Salami", amount = 2},
                    [3] = {name = "cheddar", label = "Cheddar", amount = 2}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [17] = {
                item = "cookie", category = "desserts", craftTime = 3000, image = "public/banners/cookie.png", title = "Cookie",
                requirements = {
                    [1] = {name = "egg", label = "Egg", amount = 1},
                    [2] = {name = "sugar", label = "Sugar", amount = 1},
                    [3] = {name = "flour", label = "Flour", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [18] = {
                item = "donut", category = "desserts", craftTime = 3000, image = "public/banners/donut.png", title = "Donut",
                requirements = {
                    [1] = {name = "milk", label = "Milk", amount = 1},
                    [2] = {name = "sugar", label = "Sugar", amount = 2},
                    [3] = {name = "egg", label = "Egg", amount = 1},
                    [4] = {name = "water_bottle", label = "Water", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [19] = {
                item = "waffle", category = "desserts", craftTime = 3000, image = "public/banners/waffle.png", title = "Waffle",
                requirements = {
                    [1] = {name = "strawberry", label = "Strawberry", amount = 5},
                    [2] = {name = "egg", label = "Egg", amount = 2},
                    [3] = {name = "milk", label = "Milk", amount = 1},
                    [4] = {name = "flour", label = "Flour", amount = 2}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [20] = {
                item = "ricepudding", category = "desserts", craftTime = 3000, image = "public/banners/ricepudding.png", title = "Rice Pudding",
                requirements = {
                    [1] = {name = "rice", label = "Rice", amount = 5},
                    [2] = {name = "milk", label = "Milk", amount = 1},
                    [3] = {name = "sugar", label = "Sugar", amount = 2},
                    [4] = {name = "water_bottle", label = "Water", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [21] = {
                item = "magnolia", category = "desserts", craftTime = 3000, image = "public/banners/magnolia.png", title = "Magnolia",
                requirements = {
                    [1] = {name = "sugar", label = "Sugar", amount = 1},
                    [2] = {name = "egg", label = "Egg", amount = 1},
                    [3] = {name = "strawberry", label = "Strawberry", amount = 10},
                    [4] = {name = "milk", label = "Milk", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [22] = {
                item = "cupcake", category = "desserts", craftTime = 3000, image = "public/banners/cupcake.png", title = "Cupcake",
                requirements = {
                    [1] = {name = "milk", label = "Milk", amount = 1},
                    [2] = {name = "egg", label = "Egg", amount = 3},
                    [3] = {name = "flour", label = "Flour", amount = 2},
                    [4] = {name = "sugar", label = "Sugar", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [23] = {
                item = "fruitpancakes", category = "desserts", craftTime = 3000, image = "public/banners/fruitpancakes.png", title = "Fruit Pancakes",
                requirements = {
                    [1] = {name = "banana", label = "Banana", amount = 5},
                    [2] = {name = "strawberry", label = "Strawberry", amount = 5},
                    [3] = {name = "dough", label = "Dough", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [24] = {
                item = "cheesecake", category = "desserts", craftTime = 3000, image = "public/banners/cheescake.png", title = "Cheesecake",
                requirements = {
                    [1] = {name = "cheese", label = "Cheese", amount = 1},
                    [2] = {name = "sugar", label = "Sugar", amount = 1},
                    [3] = {name = "flour", label = "Flour", amount = 3}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [1] = {
                item = "bread", category = "ingredients", craftTime = 3000, image = "public/items/bread.png", title = "Bread",
                requirements = {
                    [1] = {name = "flour", label = "Flour", amount = 2},
                    [2] = {name = "yeast", label = "Yeast", amount = 1},
                    [3] = {name = "water_bottle", label = "Water", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [2] = {
                item = "burgerbun", category = "ingredients", craftTime = 3000, image = "public/items/burgerbun.png", title = "Burger Bun",
                requirements = {
                    [1] = {name = "flour", label = "Flour", amount = 1},
                    [2] = {name = "yeast", label = "Yeast", amount = 1},
                    [3] = {name = "egg", label = "Egg", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [3] = {
                item = "cheddar", category = "ingredients", craftTime = 3000, image = "public/items/cheddar.png", title = "Cheddar",
                requirements = {
                    [1] = {name = "milk", label = "Milk", amount = 2}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [4] = {
                item = "cheese", category = "ingredients", craftTime = 3000, image = "public/items/cheese.png", title = "Cheese",
                requirements = {
                    [1] = {name = "milk", label = "Milk", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [5] = {
                item = "dough", category = "ingredients", craftTime = 3000, image = "public/items/dough.png", title = "Dough",
                requirements = {
                    [1] = {name = "flour", label = "Flour", amount = 2},
                    [2] = {name = "yeast", label = "Yeast", amount = 1},
                    [3] = {name = "water_bottle", label = "Water", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [6] = {
                item = "ice", category = "ingredients", craftTime = 3000, image = "public/items/ice.png", title = "Ice",
                requirements = {
                    [1] = {name = "water_bottle", label = "Water", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [7] = {
                item = "icecream", category = "ingredients", craftTime = 3000, image = "public/items/icecream.png", title = "Ice Cream",
                requirements = {
                    [1] = {name = "milk", label = "Milk", amount = 1},
                    [2] = {name = "sugar", label = "Sugar", amount = 1},
                    [3] = {name = "ice", label = "Ice", amount = 2}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [8] = {
                item = "mincedmeat", category = "ingredients", craftTime = 3000, image = "public/items/mincedmeat.png", title = "Minced Meat",
                requirements = {
                    [1] = {name = "vealmeat", label = "Veal Meat", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [9] = {
                item = "salami", category = "ingredients", craftTime = 3000, image = "public/items/salami.png", title = "Salami",
                requirements = {
                    [1] = {name = "vealmeat", label = "Veal Meat", amount = 1},
                    [2] = {name = "salt", label = "Salt", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [10] = {
                item = "whitechocolate", category = "ingredients", craftTime = 3000, image = "public/items/whitechocolate.png", title = "White Chocolate",
                requirements = {
                    [1] = {name = "milk", label = "Milk", amount = 1},
                    [2] = {name = "sugar", label = "Sugar", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            }
        }
    },
    [2] = {
        job = "police",
        coords = vector3(-1407.21, -939.96, 10.87),
        items = {
            [1] = {
                item = "beer", category = "drinks", craftTime = 3000, image = "public/banners/beer.png", title = "Beer sadsads",
                requirements = {
                    [1] = {name = "yeast", label = "Yeast", amount = 1},
                    [2] = {name = "water_bottle", label = "Water", amount = 1},
                    [3] = {name = "ice", label = "Ice", amount = 3}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
            },
            [2] = {
                item = "coffee", category = "drinks", craftTime = 3000, image = "public/banners/coffee.png", title = "Coffee",
                requirements = {
                    [1] = {name = "water_bottle", label = "Water", amount = 1},
                    [2] = {name = "coffeebean", label = "Coffee Bean", amount = 2},
                    [3] = {name = "sugar", label = "Sugar", amount = 1}
                },
                animation = {dict = "amb@world_human_vehicle_mechanic@male@base", anim = "machinic_loop_mechandplayer"}
            },
            [3] = {
                item = "coollime", category = "drinks", craftTime = 3000, image = "public/banners/coollime.png", title = "Cool Lime",
                requirements = {
                    [1] = {name = "lemon", label = "Lemon", amount = 2},
                    [2] = {name = "ice", label = "Ice", amount = 3},
                    [3] = {name = "sugar", label = "Sugar", amount = 1},
                    [4] = {name = "water_bottle", label = "Water", amount = 1}
                },
                animation = {dict = "mini@repair", anim = "fixing_a_ped"}
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
    cancel = "Crafting progress canceled!"
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
