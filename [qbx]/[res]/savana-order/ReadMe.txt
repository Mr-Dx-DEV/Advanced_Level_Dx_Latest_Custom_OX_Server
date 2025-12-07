QB ;


 # If you want to use the items in the ready menu. You can add it to your item list ( It is not mandatory to add it! )
    -- Order
    
    burgerxl                        = { name = 'burgerxl', label = 'Three patty burger', weight = 200, type = 'item', image = 'burgerxl.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
    chickenburger                        = { name = 'chickenburger', label = 'Chicken Burger', weight = 200, type = 'item', image = 'chickenburger.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
    chickenpotato                        = { name = 'chickenpotato', label = 'Chicken Potato', weight = 200, type = 'item', image = 'chickenpotato.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
    crispychicken                        = { name = 'crispychicken', label = 'Crispy Chicken', weight = 200, type = 'item', image = 'crispychicken.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
    tenderloin                        = { name = 'tenderloin', label = 'Tenderloin', weight = 200, type = 'item', image = 'tenderloin.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
    onionring                        = { name = 'onionring', label = 'Onion Ring', weight = 200, type = 'item', image = 'onionring.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
    kurkakola                        = { name = 'kurkakola', label = 'Coke', weight = 200, type = 'item', image = 'kurkakola.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
    water_bottle                 = { name = 'water_bottle', label = 'Bottle of Water', weight = 500, type = 'item', image = 'water_bottle.png', unique = false, useable = true, shouldClose = true, description = 'For all the thirsty out there' },
    coffee                       = { name = 'coffee', label = 'Coffee', weight = 200, type = 'item', image = 'coffee.png', unique = false, useable = true, shouldClose = true, description = 'Pump 4 Caffeine' },
    icetea                        = { name = 'icetea', label = 'Ice Tea', weight = 200, type = 'item', image = 'icetea.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
    milkshake                        = { name = 'milkshake', label = 'Milkshake', weight = 200, type = 'item', image = 'milkshake.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
    coollime                        = { name = 'coollime', label = 'Cool Lime', weight = 200, type = 'item', image = 'coollime.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
    cookie                        = { name = 'cookie', label = 'Cookie', weight = 200, type = 'item', image = 'cookie.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
    donut                        = { name = 'donut', label = 'Donut', weight = 200, type = 'item', image = 'donut.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },
    waffle                        = { name = 'waffle', label = 'Waffle', weight = 200, type = 'item', image = 'waffle.png', unique = false, useable = true, shouldClose = true, description = 'Nice to eat' },


 # For food and drinks to be edible and drinkable, you need to add them to qb-smallresources.

    eat = { -- default food items
        ['burgerxl'] = math.random(40, 50),
        ['chickenburger'] = math.random(40, 50),
        ['chickenpotato'] = math.random(40, 50),
        ['crispychicken'] = math.random(40, 50),
        ['tenderloin'] = math.random(40, 50),
        ['onionring'] = math.random(40, 50),
        ['cookie'] = math.random(40, 50),
        ['donut'] = math.random(40, 50),
        ['waffle'] = math.random(40, 50)
    },
    drink = { -- default drink items
        ['water_bottle'] = math.random(35, 54),
        ['kurkakola'] = math.random(35, 54),
        ['coffee'] = math.random(40, 50),
        ['icetea'] = math.random(40, 50),
        ['milkshake'] = math.random(40, 50),
        ['coollime'] = math.random(40, 50)

    },



ESX ;



 # If you want to use the items in the ready menu. You can add it to your item list. ( It is not mandatory to add it! )

CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('burgerxl', 'Three patty burger', 50, 0, 1),
	('chickenburger', 'Chicken Burger', 50, 0, 1),
	('chickenpotato', 'Chicken Potato', 50, 0, 1),
	('coffee', 'Coffee', 50, 0, 1),
	('cookie', 'Cookie', 50, 0, 1),
	('coollime', 'Cool Lime', 50, 0, 1),
	('crispychicken', 'Crispy Chicken', 50, 0, 1),
	('donut', 'Donut', 50, 0, 1),
	('icetea', 'Ice Tea', 50, 0, 1),
	('kurkakola', 'Coke', 50, 0, 1),
	('milkshake', 'Milkshake', 50, 0, 1),
	('onionring', 'Onion Ring', 50, 0, 1),
	('tenderloin', 'Tenderloin', 50, 0, 1),
	('waffle', 'Waffle', 50, 0, 1),
	('water_bottle', 'Bottle of Water', 50, 0, 1);


