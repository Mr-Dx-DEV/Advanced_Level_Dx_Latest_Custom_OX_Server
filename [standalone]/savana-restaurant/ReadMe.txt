Enter the public folder in the html file, then replace everything in items and banners with the images in the qb inventory by copying them. It will ask you a few questions, such as whether you want to 
copy from the same file. Say yes, but it would be better if you delete the images in banners first, then the images in items.

If you are using QBcore and ox_lib style things, you can start using them automatically without any settings.
The system may seem a bit complex, but you can understand it by tinkering with it a bit, and I also fixed a few bugs in the script.

There are no backdoors or anything like that in the script, so you can use it with peace of mind.

If you want to watch the video of the script, you can visit the site.

If you're using ESX or another framework, I haven't tested it on those, so I can't guarantee it will work.

Enter the items below into the Shared folder in the QBcore file, paste them into
items.lua, and if you have a job creation script, create a job named suncafe in the file. If not, enter jobs.lua and create a job as you wish.

-- Restuarant
burgerxl                      = { name = 'burgerxl', label = 'Three patty burger', weight = 200, type = 'item', image = 'burgerxl.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
chickenburger                 = { name = 'chickenburger', label = 'Chicken Burger', weight = 200, type = 'item', image = 'chickenburger.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
chickenpotato                 = { name = 'chickenpotato', label = 'Chicken Potato', weight = 200, type = 'item', image = 'chickenpotato.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
crispychicken                 = { name = 'crispychicken', label = 'Crispy Chicken', weight = 200, type = 'item', image = 'crispychicken.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
tenderloin                    = { name = 'tenderloin', label = 'Tenderloin', weight = 200, type = 'item', image = 'tenderloin.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
onionring                     = { name = 'onionring', label = 'Onion Ring', weight = 200, type = 'item', image = 'onionring.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
sandwich                      = { name = 'sandwich', label = 'Sandwich', weight = 200, type = 'item', image = 'sandwich.png', unique = false, useable = true, shouldClose = true, description = 'Nice bread for your stomach' },
pizza                         = { name = 'pizza', label = 'Pizza', weight = 200, type = 'item', image = 'pizza.png', unique = false, useable = true, shouldClose = true, description = 'Nice bread for your stomach' },

cookie                        = { name = 'cookie', label = 'Cookie', weight = 200, type = 'item', image = 'cookie.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
donut                         = { name = 'donut', label = 'Donut', weight = 200, type = 'item', image = 'donut.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
waffle                        = { name = 'waffle', label = 'Waffle', weight = 200, type = 'item', image = 'waffle.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
ricepudding                   = { name = 'ricepudding', label = 'Rice Pudding', weight = 200, type = 'item', image = 'ricepudding.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
magnolia                      = { name = 'magnolia', label = 'Magnolia', weight = 200, type = 'item', image = 'magnolia.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
cupcake                       = { name = 'cupcake', label = 'Cupcake', weight = 200, type = 'item', image = 'cupcake.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
fruitpancakes                 = { name = 'fruitpancakes', label = 'Fruit Pancakes', weight = 200, type = 'item', image = 'fruitpancakes.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
cheescake                     = { name = 'cheescake', label = 'Cheescake', weight = 200, type = 'item', image = 'cheescake.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },


kurkakola                     = { name = 'kurkakola', label = 'Coke', weight = 200, type = 'item', image = 'kurkakola.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
water_bottle                  = { name = 'water_bottle', label = 'Bottle of Water', weight = 500, type = 'item', image = 'water_bottle.png', unique = false, useable = true, shouldClose = true, description = 'For all the thirsty out there' },
coffee                        = { name = 'coffee', label = 'Coffee', weight = 200, type = 'item', image = 'coffee.png', unique = false, useable = true, shouldClose = true, description = 'Pump 4 Caffeine' },
icetea                        = { name = 'icetea', label = 'Ice Tea', weight = 200, type = 'item', image = 'icetea.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
milkshake                     = { name = 'milkshake', label = 'Milkshake', weight = 200, type = 'item', image = 'milkshake.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
coollime                      = { name = 'coollime', label = 'Cool Lime', weight = 200, type = 'item', image = 'coollime.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
frappe                        = { name = 'frappe', label = 'Frappe', weight = 200, type = 'item', image = 'frappe.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
cocowhite                     = { name = 'cocowhite', label = 'Cocowhite', weight = 200, type = 'item', image = 'cocowhite.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },


banana                        = { name = 'banana', label = 'Banana', weight = 200, type = 'item', image = 'banana.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
bread                         = { name = 'bread', label = 'Bread', weight = 200, type = 'item', image = 'bread.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
burgerbun                     = { name = 'burgerbun', label = 'Burger Bun', weight = 200, type = 'item', image = 'burgerbun.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
cheddar                       = { name = 'cheddar', label = 'Cheddar', weight = 200, type = 'item', image = 'cheddar.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
cheese                        = { name = 'cheese', label = 'Cheese', weight = 200, type = 'item', image = 'cheese.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
coffeebean                    = { name = 'coffeebean', label = 'Coffee Bean', weight = 200, type = 'item', image = 'coffeebean.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
dough                         = { name = 'dough', label = 'Dough', weight = 200, type = 'item', image = 'dough.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
egg                           = { name = 'egg', label = 'Egg', weight = 200, type = 'item', image = 'egg.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
ethylalcohol                  = { name = 'ethylalcohol', label = 'Ethyl Alcohol', weight = 200, type = 'item', image = 'ethylalcohol.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
flour                         = { name = 'flour', label = 'Flour', weight = 200, type = 'item', image = 'flour.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
ice                           = { name = 'ice', label = 'Ice', weight = 200, type = 'item', image = 'ice.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
icecream                      = { name = 'icecream', label = 'Ice cream', weight = 200, type = 'item', image = 'icecream.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
lemon                         = { name = 'lemon', label = 'Lemon', weight = 200, type = 'item', image = 'lemon.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
lettuce                       = { name = 'lettuce', label = 'Lettuce', weight = 200, type = 'item', image = 'lettuce.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
milk                          = { name = 'milk', label = 'Milk', weight = 200, type = 'item', image = 'milk.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
mincedmeat                    = { name = 'mincedmeat', label = 'Minced Meat', weight = 200, type = 'item', image = 'mincedmeat.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
onion                         = { name = 'onion', label = 'Onion', weight = 200, type = 'item', image = 'onion.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
packaged_chicken              = { name = 'packaged_chicken', label = 'Packaged Chicken', weight = 200, type = 'item', image = 'packaged_chicken.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
pistachio                     = { name = 'pistachio', label = 'Pistachio', weight = 200, type = 'item', image = 'pistachio.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
rice                          = { name = 'rice', label = 'Rice', weight = 200, type = 'item', image = 'rice.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
salami                        = { name = 'salami', label = 'Salami', weight = 200, type = 'item', image = 'salami.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
salt                          = { name = 'salt', label = 'Salt', weight = 200, type = 'item', image = 'salt.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
strawberry                    = { name = 'strawberry', label = 'Strawberry', weight = 200, type = 'item', image = 'strawberry.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
sugar                         = { name = 'sugar', label = 'Sugar', weight = 200, type = 'item', image = 'sugar.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
vealmeat                      = { name = 'vealmeat', label = 'Veal Meat', weight = 200, type = 'item', image = 'vealmeat.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
whitechocolate                = { name = 'whitechocolate', label = 'White Chocolate', weight = 200, type = 'item', image = 'whitechocolate.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
yeast                         = { name = 'yeast', label = 'Yeast', weight = 200, type = 'item', image = 'yeast.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
