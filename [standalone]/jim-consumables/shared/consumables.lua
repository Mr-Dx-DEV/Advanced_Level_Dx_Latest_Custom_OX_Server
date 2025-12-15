Config = Config or {}

Config.Consumables = {

	--Effects can be applied here, like stamina on coffee for example
    vodka = { 			        emote = "vodkab", 		canRun = false, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
    beer = { 			        emote = "beer", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
    whiskey = { 		        emote = "whiskey",  	canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
    sandwich = {                emote = "sandwich", 	canRun = false, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { hunger = 20, }},

    twerks_candy = {            emote = "egobar", 		canRun = true, 		time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
    snikkel_candy = {           emote = "egobar", 		canRun = true, 		time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},

    coffee = {                  emote = "coffee", 		canRun = false, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "drink", stats = { time = 10000, thirst = math.random(10,15), }},
    water_bottle = {            emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "drink", stats = { thirst = 20, }},
    tosti = {                   emote = "sandwich", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},

    kurkakola = { 		        emote = "ecola", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},

    -- Casino Items
    casino_beer = {             emote = "beer",         canRun = false,     time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
    casino_burger = {           emote = "burger",       canRun = false,     time = math.random(5000, 6000), stress = math.random(1, 2), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(15,25), }},
    casino_chips = {            emote = "crisps",       canRun = true,      time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { hunger = math.random(5,10), }},
    casino_coffee = {           emote = "coffee",       canRun = false,     time = math.random(5000, 6000), stress = math.random(1, 3), heal = 0, armor = 0, type = "drink", stats = { effect = "stamina", time = 10000, amount = 2, thirst = math.random(10,15), }},
    casino_coke = {             emote = "ecola",        canRun = false,     time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},
    casino_donut = {            emote = "donut",        canRun = true,      time = math.random(5000, 6000), stress = math.random(1, 2), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},
    casino_ego_chaser = {       emote = "drink",        canRun = false,     time = math.random(5000, 6000), stress = math.random(3, 5), heal = 0, armor = 0, type = "alcohol", stats = { effect = "stress", time = 8000, amount = 3, thirst = math.random(10,15), canOD = true }},
    casino_luckypotion = {      emote = "drink",  canRun = false,     time = math.random(5000, 6000), stress = math.random(2, 4), heal = 5, armor = 0, type = "drink", stats = { effect = "luck", time = 15000, amount = 3, thirst = math.random(15,20), }},
    casino_psqs = {             emote = "whiskey",      canRun = false,     time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
    casino_sandwitch = {        emote = "sandwich",     canRun = false,     time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
    casino_sprite = {           emote = "ecola",        canRun = false,     time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(15,25), }},





    --- Drugs
		["coke"] = { 		emote = "coke",		time = math.random(5000, 6000), canRun = false, disableWalk = true, stress = math.random(2, 5), heal = 0, armor = 0, type = "drug", stats = { screen = "focus", effects = {{type = "heal", time = 60000, amount = 5}, {type = "stamina", time = 48000, amount = 30.0}}, canOD = true } },
    ["cokebaggy"] = { 		emote = "coke",		time = math.random(5000, 6000), canRun = false, disableWalk = true, stress = math.random(2, 5), heal = 0, armor = 0, type = "drug", stats = { screen = "focus", effects = {{type = "heal", time = 60000, amount = 5}, {type = "stamina", time = 48000, amount = 30.0}}, canOD = true } },
		["kq_meth_low"] = { 		emote = "oxy",		time = math.random(5000, 6000), canRun = false, disableWalk = true, stress = math.random(2, 5), heal = 0, armor = 0, type = "drug", stats = { screen = "turbo", effects = {{type = "armor", time = 60000, amount = 7}, {type = "stamina", time = 48000, amount = 30.0}},canOD = true } },
		["kq_meth_mid"] = { 		emote = "oxy",		time = math.random(5000, 6000), canRun = false, disableWalk = true, stress = math.random(2, 5), heal = 0, armor = 0, type = "drug", stats = { screen = "turbo", effects = {{type = "armor", time = 60000, amount = 8}, {type = "stamina", time = 54000, amount = 40.0}},canOD = true } },
		["kq_meth_high"] = { 		emote = "oxy",		time = math.random(5000, 6000), canRun = false, disableWalk = true, stress = math.random(2, 5), heal = 0, armor = 0, type = "drug", stats = { screen = "turbo", effects = {{type = "armor", time = 60000, amount = 9}, {type = "stamina", time = 60000, amount = 50.0}},canOD = true } },
	
    --- Rex Diner
    ["rexheartstopper"] = { emote = "burger", canRun = false, disableWalk = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["rextorpedo"] = {	emote = "torpedo", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["rexshotfries"] = { emote = "bsfries", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["rexmeatfree"] = { emote = "burger", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
    ["rexshotnuggets"] = {	emote = "bsfries", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["rexshotrings"] = { emote = "bsfries", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["rexmoneyshot"] = { emote = "burger", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["rexbleeder"] = {	emote = "burger", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["rexrimjob"] = { emote = "donut", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65)}},
    ["rexcreampie"] = { emote = "donut", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65)}},
    -- ["rexcheesewrap"] = { emote = "sandwich", canRun = false, disableWalk = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    -- ["rexchickenwrap"] = {	emote = "sandwich", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["rexbscoffee"] = { emote = "bscoffee", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["rexmilkshake"] = { emote = "drink", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["rexbscoke"] = { emote = "bscoke", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    

    ["saltyryan2"] = { 	emote = "coffee",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    ["icedriley2"] = { 	emote = "coffee",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    ["orangeweedsicle2"] = { 	emote = "coffee",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    ["smorelatte2"] = { 	emote = "coffee",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    ["snowblower2"] = { 	emote = "coffee",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    ["teluzacoffee2"] = { 	emote = "coffee",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    ["hotryleigh2"] = { 	emote = "coffee",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    ["weedmachine2"] = { 	emote = "coffee",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },

    ["teluzacupcake2"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["cannaroll2"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["whoopdeedoo2"] = {			emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["brogurt2"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["morningbaked2"] = {	emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },



    ["vodka"] = { 			emote = "vodkab", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
    ["beer"] = { 			emote = "beer", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "focus", widepupils = true, canOD = true }},
    ["whiskey"] = { 		emote = "whiskey",  	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "focus", widepupils = true, canOD = true }},
    ["grapejuice"] = { 		emote = "drink",  		canRun = true,  	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20) }},
    ["sandwich"] = { 		emote = "sandwich", 	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
    ["twerks_candy"] = { 	emote = "egobar", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
    ["snikkel_candy"] = { 	emote = "egobar", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
    ["tosti"] = { 			emote = "sandwich", 	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},

    ["coffee"] = { 			emote = "coffee", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50,60), }},
    ["water_bottle"] = { 	emote = "drink", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,15), }},
    ["kurkakola"] = { 		emote = "ecola", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},

    -- Dank Desserts
    ["joeyhalfnut"] = {			emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["dankpop"] = {	emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["tddbrownie"] = {	emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },


    -- Start Cat Cafe
    ["sake"] = { emote = "flute", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "focus", widepupils = true, canOD = true }},
    ["bobatea"] = { emote = "uwu12", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65), }},
    ["bbobatea"] = { emote = "uwu12", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65), }},
    ["gbobatea"] = { emote = "uwu12", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65), }},
    ["obobatea"] = { emote = "uwu12", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65), }},
    ["pbobatea"] = { emote = "uwu12", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65), }},
    ["nekolatte"] = { emote = "uwu2", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = {thirst = math.random(50, 60), }},
    ["mocha"] = { emote = "uwu1", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 60), }},
    ["catcoffee"] = { emote = "uwu4", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 60), }},
    ["bento2"] = { emote = "uwu7", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4),  heal = 0, armor = 0, type = "food", stats = {hunger = math.random(50, 65), }},
    ["cake"] = { emote = "sandwich", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(25, 35), }},
    ["nekocookie"] = { emote = "uwu6", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(25, 35), }},
    ["nekodonut"] = { emote = "uwu5", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(25, 35), }},
    ["riceball"] = { emote = "sandwich", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["miso"] = { emote = "uwu9", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["bmochi"] = { emote = "uwu13", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(25, 35), }},
    ["pmochi"] = { emote = "uwu13", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(25, 35), }},
    ["gmochi"] = { emote = "uwu13", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(25, 35), }},
    ["omochi"] = { emote = "uwu13", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(25, 35), }},
    ["cakepop"] = { emote = "sandwich", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(25, 35), }},
    ["pizza"] = { emote = "sandwich", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["pancake"] = { emote = "sandwich", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(25, 35), }},
    ["purrito"] = { emote = "uwu8", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = {hunger = math.random(50, 65), }},
    ["noodlebowl"] = { emote = "uwu9", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["ramen"] = { emote = "uwu9", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    -- End Cat Cafe

    -- Start Burger Shot

    --Jim-BurgerShot-Drinks
    ["bscoffee"] = { emote = "bscoffee", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["milkshake"] = { emote = "drink", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["bscoke"] = { emote = "bscoke", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},

    --Jim-BurgerShot-Food
    ["heartstopper"] = { emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["torpedo"] = {	emote = "torpedo", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["shotfries"] = { emote = "bsfries", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["meatfree"] = { emote = "burger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
    ["shotnuggets"] = {	emote = "bsfries", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["shotrings"] = { emote = "bsfries", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["moneyshot"] = { emote = "burger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["bleeder"] = {	emote = "burger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["rimjob"] = { emote = "donut", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65)}},
    ["creampie"] = { emote = "donut", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65),}},
    ["cheesewrap"] = { emote = "sandwich", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["chickenwrap"] = {	emote = "sandwich", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},

    -- End Burger Shot

    -- Start Vanilla Unicorn
    ["midori"] = { emote = "beer3", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 60), screen = "focus", widepupils = true, canOD = true }},
    ["prosecco"] = { emote = "beer3", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "focus", widepupils = true, canOD = true }},
    ["tequila"] = { emote = "beer3", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 60), screen = "focus", widepupils = true, canOD = true }},
    ["triplsec"] = { emote = "beer3", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "focus", widepupils = true, canOD = true }},
    ["gin"] = { emote = "ginb", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "focus", widepupils = true, canOD = true }},
    ["rum"] = { emote = "rumb", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 60), screen = "focus", widepupils = true, canOD = true }},
    ["amaretto"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "focus", widepupils = true, canOD = true }},
    ["amarettosour"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 60), screen = "focus", widepupils = true, canOD = true }},
    ["bellini"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "focus", widepupils = true, canOD = true }},
    ["cosmopolitan"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 60), screen = "focus", widepupils = true, canOD = true }},
    ["longisland"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "focus", widepupils = true, canOD = true }},
    ["margarita"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 60), screen = "focus", widepupils = true, canOD = true }},
    ["pinacolada"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "focus", widepupils = true, canOD = true }},
    ["sangria"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "focus", widepupils = true, canOD = true }},
    ["screwdriver_drink"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 60), screen = "focus", widepupils = true, canOD = true }},
    ["strawdaquiri"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "focus", widepupils = true, canOD = true }},
    ["strawmargarita"] = { emote = "whiskey", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 60), screen = "focus", widepupils = true, canOD = true }},
    ["ambeer"] = { emote = "beer3", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 60), screen = "focus", widepupils = true, canOD = true }},
    ["dusche"] = { emote = "beer1", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 60), screen = "focus", widepupils = true, canOD = true }},
    ["logger"] = { emote = "beer2", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 60), screen = "focus", widepupils = true, canOD = true }},
    ["pisswasser"] = { emote = "beer4", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 60), screen = "focus", widepupils = true, canOD = true }},
    ["pisswasser2"] = { emote = "beer5", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 60), screen = "focus", widepupils = true, canOD = true }},
    ["pisswasser3"] = { emote = "beer6", canRun = true,  time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(50, 60), screen = "focus", widepupils = true, canOD = true }},
    ["cranberry"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20, 20), }},
    ["pinejuice"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65), }},
    ["ecola"] = { emote = "ecola", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20, 30), }},
    ["ecolalight"] = { emote = "ecola", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20, 30), }},
    ["sprunk"] = { emote = "sprunk", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20, 30), }},
    ["sprunklight"] = { emote = "sprunk", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20, 30), }},
    ["crisps"] = { emote = "crisps", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 30), }},
    ["cubasil"] = { emote = "burger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 30), }},
    ["mintleaf"] = { emote = "burger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 30), }},
    ["peach"] = { emote = "burger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 30), }},
    ["strawberry"] = { emote = "burger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 30), }},
    ["chocolate"] = { emote = "egobar", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 30), }},
    ["nplate"] = { emote = "burger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["vusliders"] = { emote = "burger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["vutacos"] = { emote = "burger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["tots"] = { emote = "burger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["nachos"] = { emote = "burger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["corona"] = { emote = "beer", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "rampage", time = 60000, widepupils = true, canOD = true } },

    ["bahama_moneyshot"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20, 30), }},
    ["bahama_mamassweettea"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20, 35), }},
    ["bahama_bahamamamatraumatripleslipperynipple"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20, 40), }},
    ["bahama_cashandsantanaspecial"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20, 50), }},
	
    ["bahama_santanassweetheatwings"] = { emote = "burger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 40), }},
    ["bahama_birthdaysuitbirthdaycake"] = { emote = "burger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 45), }},
    ["bahama_cashstwicesmokedloadedpotatoes"] = { emote = "burger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 50), }},
	
    
    
    -- End Vanilla Unicorn


    -- Start Hornys Burger
    ["tripleburger"] = 			{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["baconcheesemelt"] = 		{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["chillidog"] = 			{ emote = "atomhotdog", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["atomfries"] = 			{ emote = "atomfries", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["chickenfillet"]= 			{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["chickenhorn"] = 			{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["grilledchicken"] = 		{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["chickensalad"] = 			{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["hunksohen"] = 			{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["chickentaco"]= 			{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["enchiladas"] = 			{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["gazpacho"] = 				{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["hornbreakfast"] = 		{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["eggsbenedict"] = 			{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["hashbrowns"] = 			{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["sausages"] = 				{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["baconroll"] = 			{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["baconeggtoast"] = 		{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["frenchtoast"] = 			{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["frenchtoastbacon"] = 		{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["hornburger"] = 			{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["dblhornburger"] = 		{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["baconhornburger"] = 		{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["picklehornburger"] = 		{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["chickenhornburger"] = 	{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["dblchickenhornburger"] = 	{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65) }},
    ["breadslice"] =			{ emote = "breadslice", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 20) }},

    ["icecone"] = 				{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 30) }},
    ["icenugget"] = 			{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 30) }},
    ["icecake"] = 				{ emote = "burger", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20, 30) }},

    ["creamyshake"] = 			{ emote = "atomdrink", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65) }},
    ["atomsoda"]  = 			{ emote = "atomdrink", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65) }},
    ["orangotang"] = 			{ emote = "ecola", canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65) }},
    ["raine"]  = 				{ emote = "ecola", canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65) }},
    ["junkdrink"]  = 			{ emote = "ecola", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65) }},
    ["milk"] = 					{ emote = "ecola", canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65) }},
    -- End Hornys Burger

    -- puff puff pass & Blazeit
    -- ["afghankush_joint"] = {	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["bluedream_joint"] = { 	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["granddaddypurple_joint"] = { emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["greencrack_joint"] = { 	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["jackherrer_joint"] = { 	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["sourdiesel_joint"] = { 	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["weddingcake_joint"] = { 	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["ppp_joint"] = { 	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["blazeit_joint"] = { 	emote = "joint",	canRun = true, disableWalk = false, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },

    -- ["cannabutter"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["gummy_rasberry"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["gummy_blueberry"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["gummy_grape"] = {			emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["gummy_applering"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["edible_ricecrispy"] = {	emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["gummy_belt"] = {			emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["edible_snickerdoodle"] = {	emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["edible_peanutcookie"] = {	emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["edible_cchip"] = {	emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["lean"] = { 	emote = "coffee",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 5, armor = 0, type = "alcohol", stats = { screen = "turbo",  time = 60000, widepupils = true, canOD = false } },

    -- Whitewidow
    -- ["weed_skunk_cbd_joint"] = { 	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["weed_og-kush_cbd_joint"] = { 	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["weed_white-widow_cbd_joint"] = { 	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["weed_ak47_cbd_joint"] = { 	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["weed_amnesia_cbd_joint"] = { 	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["weed_purple-haze_cbd_joint"] = { 	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["weed_gelato_cbd_joint"] = { 	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["weed_zkittlez_cbd_joint"] = { 	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },

    ["gummy_skunk_cbd"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["gummy_og-kush_cbd"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["gummy_white-widow_cbd"] = {			emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["gummy_ak47_cbd"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["gummy_amnesia_cbd"] = {	emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["gummy_purple-haze_cbd"] = {			emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["gummy_gelato_cbd"] = {	emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["gummy_zkittlez_cbd"] = {	emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },	

    ["amethyst_aura_gummy"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["babinski_kush_gummy"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["get_sharked_gummy"] = {			emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["lex_lotto_gummy"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["peach_zkittles_gummy"] = {	emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["pretty_kitty_gummy"] = {			emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["sheilas_dream_gummy"] = {	emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["tazmanian_gummy"] = {	emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },	

    -- CLUCKIN BELL
    ["cluckin_chickenfeetpie"] = 			{ emote = "cluckinpie", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["cluckin_cocksalad"] = 			{ emote = "cluckinbuffwings", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},		
    ["cluckin_rings"] = 			{ emote = "sandwich", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["cluckin_bigcocksandwich"] = 			{ emote = "cluckinbigburger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["cluckin_bucketofcocks"] = 			{ emote = "cluckinbucket", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["cluckin_chickenlegs"] = 			{ emote = "cluckindrummy", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["cluckin_cockballssoup"] = 			{ emote = "cluckinsoup", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["cluckin_cockmeatsandwich"] = 			{ emote = "cluckinburger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["cluckin_cockwrap"] = 			{ emote = "cluckinwrap", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["cluckin_hotcock"] = 			{ emote = "cluckinbuffwing", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["cluckin_hotcockwings"] = 			{ emote = "cluckinbuffwings", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["cluckin_taters"] = 			{ emote = "cluckinwedges", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["cluckin_wingading"] = 			{ emote = "cluckinwingdings", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["cluckin_cockinacone"] = 			{ emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["cluckin_cockinthetaco"] = 			{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["cluckin_creamofthecock"] = 			{ emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    --["cluckin_redvelvetcake"] = 			{ emote = "cheesecake", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["cluckin_littlechickspigs"] = 			{ emote = "cluckinbuffwings", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["cluckin_cockandbenne"] = 			{ emote = "cluckinbuffwings", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},

    ["cluckin_pinkcockshake"] = 			{ emote = "cluckinpinkdrink", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55, 65) }},
    ["cluckin_yellowcockshake"] = 			{ emote = "cluckinyellowdrink", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55, 65) }},

    ["fries"] = {	emote = "sandwich", canRun = true, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10, 20), }},
    ["wings"] = {	emote = "dinner", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10, 20), }},
    ["wine"] = {    emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "focus", widepupils = true, canOD = true }},


    ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Items that effect status changes, like bleeding can cause problems as they are all handled in their own scripts
    -- Testing these but they may be best left handled by default scripts
    ["ifak"] = { 			emote = "bandage", 		time = math.random(5000, 6000), stress = 0, heal = 30, armor = 0, type = "drug", stats = { effect = "heal", amount = 6, widepupils = false, canOD = false}},
		["bandage"] = { 		emote = "bandage", 		time = math.random(5000, 6000), stress = 0, heal = 25, armor = 0, type = "drug", stats = { effect = "heal", amount = 3, widepupils = false, canOD = false}},
		

    --Testing effects & armor with small functionality to drugs - This may be another one left to default scripts
    ["joint"] = { 			emote = "smoke3",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },
    ["cigarrete"] = { 			emote = "smoke",	time = math.random(8000, 10000), stress = math.random(12, 24), heal = 0, type = "drug"},
    ["cigar"] = { 			emote = "cigar",	time = math.random(15000, 20000), stress = math.random(12, 24), heal = 0, type = "drug",},


    --["crackbaggy"] = { 		emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { effect = "heal", widepupils = false, canOD = true } },
    ["xtcbaggy"] = { 		emote = "oxy",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 10, type = "drug", stats = { effect = "strength", widepupils = true, canOD = true } },
    ["oxy"] = { 			emote = "oxy",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { screen = "weed", effects = {{type = "heal", time = 60000, amount = 5}, {type = "stamina", time = 48000, amount = 30.0}}, canOD = true } },
    ["meth"] = { 			emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 10, type = "drug", stats = { effect = "stamina", widepupils = false, canOD = true } },


    -- hotbox
    -- ["bubba_kush_joint"] = {	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["leila_delight_joint"] = {	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["pineapple_express_joint"] = {	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["northern_lights_joint"] = {	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["maui_waui_joint"] = {	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["coop_goop_joint"] = {	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["sienna_haze_joint"] = {	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },
    -- ["frankistank_joint"] = {	emote = "joint",	canRun = true, time = math.random(10000,15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo",  time = 60000, widepupils = false, canOD = false } },

    ["bubba_kush_gummy"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["leila_delight_gummy"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["pineapple_express_gummy"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["northern_lights_gummy"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["maui_waui_gummy"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["coop_goop_gummy"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["sienna_haze_gummy"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },
    ["frankistank_gummy"] = {		emote = "oxy",	canRun = true, time = math.random(5000,6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus",  time = 60000, widepupils = false, canOD = false } },

    -- paradise
    ["paradisebootyliciousburgers"] = { emote = "snrdoubleburger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["paradisecheekycheesesticks"] = { emote = "snrdoubleburger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["paradisestripperssliders"] = { emote = "snrdoubleburger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["paradisechessylickablefries"] = { emote = "atomfries", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},

    ["paradisetwerkingtease"] = { emote = "vodkab", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "rampage", time = 60000, widepupils = false, canOD = false } },
    ["paradisesexonthebeach"] = { emote = "whiskey", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "rampage", time = 60000, widepupils = false, canOD = false } },
    ["paradiseblowjobshot"] = { emote = "whiskey", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "rampage", time = 60000, widepupils = false, canOD = false } },
    ["paradise_icedtea"] = { emote = "whiskey", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "rampage", time = 60000, widepupils = false, canOD = false } },

    -- snr buns

    ["snr_buns_burger"] = { emote = "snrburger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["snr_buns_dbl_burger"] = { emote = "snrdoubleburger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["snr_buns_chicken_kebab"] = { emote = "snrkebabchicken", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["snr_buns_steak_kebab"] = { emote = "snrkebabsteak", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},

    ["snr_buns_fries"] = { emote = "snrfries", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},

    ["snr_buns_donut"] = { emote = "snrdonut", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65)}},
    ["snr_buns_chocolate_chip_muffin"] = { emote = "snrchocolatemuffin", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65)}},
    ["snr_buns_blueberry_muffin"] = { emote = "snrblueberrymuffin", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65)}},

    ["snr_buns_chocolate_ice_cream"] = 			{ emote = "snrbunschocolate", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["snr_buns_vanilla_ice_cream"] = 			{ emote = "snrbunsvanilla", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["snr_buns_strawberry_ice_cream"] = 			{ emote = "snrbunsstrawberry", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["snr_buns_mint_ice_cream"] = 			{ emote = "snrbunsmint", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},

    ["snr_buns_cherry_slushie"] = { emote = "snrslushiered", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["snr_buns_lemon_slushie"] = { emote = "snrslushieyellow", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["snr_buns_pineapple_slushie"] = { emote = "snrslushiewhite", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},

    ["heaven_jagerbomb"] = { emote = "whiskey", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), screen = "focus", widepupils = true, canOD = true }},
    ["heaven_vodka"] = { emote = "vodkab", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), screen = "focus", widepupils = true, canOD = true }},
    ["heaven_whiskey"] = { emote = "whiskey", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), screen = "focus", widepupils = true, canOD = true }},
    ["heaven_tequila"] = { emote = "whiskey", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), screen = "focus", widepupils = true, canOD = true }},
    ["heaven_fireball"] = { emote = "whiskey", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), screen = "focus", widepupils = true, canOD = true }},
    ["heaven_bdayshot"] = { emote = "whiskey", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), screen = "focus", widepupils = true, canOD = true }},

    ["vintage_etoile"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), screen = "focus", widepupils = true, canOD = true }},
    ["eclipse_noir"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), screen = "focus", widepupils = true, canOD = true }},
    ["soleil_blanc"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), screen = "focus", widepupils = true, canOD = true }},
    ["rose_royale"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), screen = "focus", widepupils = true, canOD = true }},
    ["lunevista_reserve"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), screen = "focus", widepupils = true, canOD = true }},


    ["cinnamoroll_cup"] = 			{ emote = "sipshakel", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55, 65) }},
    ["melody_slush"] = 			{ emote = "sipshakel", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55, 65) }},
    ["luckycharms_slush"] = 			{ emote = "sipshakel", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55, 65) }},
    ["kittyslush_cup"] = 			{ emote = "sipshakel", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55, 65) }},
    ["crybaby_milk"] = 			{ emote = "sipshakel", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55, 65) }},

    ["bluumoon_cone"] = 			{ emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["mintycream_cone"] = 			{ emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["baboonbooty_pint"] = 			{ emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["kanyewest_pint"] = 			{ emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["prettygirl_cone"] = 			{ emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["bubblegum_cone"] = 			{ emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["bratmilk_pint"] = 			{ emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["edcream_pint"] = 			{ emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["skididdy_pint"] = 			{ emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["bikini_cone"] = 			{ emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},

    ["netflixnchill_pint"] = 			{ emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["schweddybawls_pint"] = 			{ emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["hotbuns_pint"] = 			{ emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},

    
    ["chateubriand_steak"] = { emote = "uwu9", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["lobster_thermidor"] = { emote = "uwu9", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["brie_de_meaux"] = { emote = "sandwich", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["parmigino_reggiano"] = { emote = "sandwich", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},

    ["taco_pork_chode"] = { emote = "taco", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["taco_chalupa_supreme"] = { emote = "taco", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["taco_carne_asada"] = { emote = "taco", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["taco_pollo_asado"] = { emote = "taco", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["burrito_chicken_chode"] = { emote = "taco", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["burrito_pork_chode"] = { emote = "taco", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["burrito_beef_chode"] = { emote = "taco", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["chips_hot_cheetos"] = { emote = "crisps", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    ["beverage_horchata"] = { emote = "coffee", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65), }},
    --["beverage_watermelon_mojito"] = { emote = "mojito", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "rampage", time = 60000, widepupils = true, canOD = true } },
   -- ["ditecoke"] = { emote = "soda", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65), }},
    ["corona"] = { emote = "beer", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), screen = "rampage", time = 60000, widepupils = true, canOD = true } },

    ---- lilpadcafe   
    
    ["lilypadcafe_strawberryiceream"] = { emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["lilypadcafe_turkeybowl"] = { emote = "cheesecake_a", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 40), }},
    ["lilypadcafe_strawberryfrosteddonut"] = { emote = "coffee_bagel_b", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},
    ["lilypadcafe_oreocupcake"] = { emote = "coffee_muffin_a", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},
    ["lilypadcafe_nutellafrosteddonut"] = { emote = "coffee_donut_b", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},
    ["lilypadcafe_hellokittybiscuit"] = { emote = "coffee_cake", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},
    ["lilypadcafe_glazeddonut"] = { emote = "coffee_bagel_c", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},
    ["lilypadcafe_eggandcheese"] = { emote = "coffee_bagel_a", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65)}},
    ["lilypadcafe_creamcheesebagel"] = { emote = "coffee_bagel_c", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},
    ["lilypadcafe_blueberrycupcake"] = { emote = "coffee_muffin_b", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["lilypadcafe_blueberrybagel"] = { emote = "coffee_bagel_b", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},
    ["lilypadcafe_cheesecake"] = { emote = "cheesecake_a", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    

    ["lilypadcafe_mochacrunchfrappe"] = { emote = "coffee_frappe_b", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["lilypadcafe_icedcoffee"] = { emote = "coffee_iced_a", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["lilypadcafe_hotchocolate"] = { emote = "coffee_latte", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["lilypadcafe_cottoncandyfrappe"] = { emote = "coffee_fruit", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["lilypadcafe_cappuccino"] = { emote = "coffee_cappuccino", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65), }},
    ["lilypadcafe_brownsugarfrappe"] = { emote = "coffee_frappe_a", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},





  -- rollinstonelanes
  ["alley_rings"] = { emote = "sandwich", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  ["rolling_pins"] = { emote = "bscake", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  ["gutter_sundae"] = { emote = "icecream1", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },

  ["pin_punch"] = { emote = "drink", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55, 65) } },
  ["bowl_aid_blast"] = { emote = "bscoffee", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55, 65) } },
  ["lane_lemonade"] = { emote = "uwu12", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55, 65) } },




  ---- beanmachine
  -- Drinks
  ["bm_chillchai"] = { emote = "bscoffee", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55, 65) } },
  ["bm_nutbuster"] = { emote = "drink", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55, 65) } },
  ["bm_ballerina"] = { emote = "bscoffee", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55, 65) } },
  ["bm_ppunch"] = { emote = "uwu12", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55, 65) } },

  -- Food
  ["bm_bobsicle"] = { emote = "icecream1", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  ["bm_xdcookie"] = { emote = "sandwich", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  --["bm_gummy"] = { emote = "bscake2", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  ["bm_muffin"] = { emote = "bscake", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  ["bm_bburrito"] = { emote = "sandwich", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  ["bm_pillpastry"] = { emote = "bscake", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  ["bm_bcrayon"] = { emote = "uwu9", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  --["bm_cheery"] = { emote = "bscake2", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  ["bm_popring"] = { emote = "uwu12", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  ["bm_toastymallow"] = { emote = "icecream1", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
    
  ---- catcafe   
    
    ["catcafe_strawberryiceream"] = { emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["catcafe_turkeybowl"] = { emote = "cheesecake_a", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 40), }},
    ["catcafe_strawberryfrosteddonut"] = { emote = "coffee_bagel_b", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},
    ["catcafe_oreocupcake"] = { emote = "coffee_muffin_a", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},
    ["catcafe_nutellafrosteddonut"] = { emote = "coffee_donut_b", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},
    ["catcafe_hellokittybiscuit"] = { emote = "coffee_cake", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},
    ["catcafe_glazeddonut"] = { emote = "coffee_bagel_c", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},
    ["catcafe_eggandcheese"] = { emote = "coffee_bagel_a", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65)}},
    ["catcafe_creamcheesebagel"] = { emote = "coffee_bagel_c", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},
    ["catcafe_blueberrycupcake"] = { emote = "coffee_muffin_b", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["catcafe_blueberrybagel"] = { emote = "coffee_bagel_b", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},
    ["catcafe_cheesecake"] = { emote = "cheesecake_a", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},
    

    ["catcafe_mochacrunchfrappe"] = { emote = "coffee_frappe_b", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["catcafe_icedcoffee"] = { emote = "coffee_iced_a", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["catcafe_hotchocolate"] = { emote = "coffee_latte", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["catcafe_cottoncandyfrappe"] = { emote = "coffee_fruit", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["catcafe_cappuccino"] = { emote = "coffee_cappuccino", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65), }},
    ["catcafe_brownsugarfrappe"] = { emote = "coffee_frappe_a", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},

   ---- club77   
    
   ["club77_raveroll"] = { emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
   ["club77_docksidedelights"] = { emote = "uwu9", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65), }},
   ["club77_portsantosporterhouse"] = { emote = "sandwich", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65), }},
 

   ["club77_sunsetmartini"] = { emote = "bscoffee", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
   ["club77_docksidebreeze"] = { emote = "drink", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
   ["club77_77sour"] = { emote = "uwu12", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65), }},
 
  ---- vanillaunicorn   
    
   ["vanillaunicorn_raveroll"] = { emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
   ["vanillaunicorn_docksidedelights"] = { emote = "uwu9", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65), }},
   ["vanillaunicorn_portsantosporterhouse"] = { emote = "sandwich", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65), }},
 

  ["vanillaunicorn_sunsetmartini"] = { emote = "bscoffee", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), screen = "focus", widepupils = true, canOD = true }},
  ["vanillaunicorn_docksidebreeze"] = { emote = "drink", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), screen = "focus", widepupils = true, canOD = true }},
  ["vanillaunicorn_77sour"] = { emote = "uwu12", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), screen = "focus", widepupils = true, canOD = true }},


   --- pyrohex
   ["pyrohex_byte_burger"] = { emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
   ["pyrohex_neon_noodles"] = { emote = "uwu9", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65), }},
   ["pyrohex_chromed_chips"] = { emote = "sandwich", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65), }},
 

   ["pyrohex_neuroshock"] = { emote = "bscoffee", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
   ["pyrohex_synthwave_sour"] = { emote = "drink", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
   ["pyrohex_glitchtonic"] = { emote = "uwu12", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65), screen = "focus",  time = 60000, widepupils = false, canOD = false }},

    ---- hookies   
    ["hookies_daleburger"] = { emote = "burger", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["hookies_notyomamasclamchowder"] = { emote = "uwu9", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 40), }},
    ["hookies_hoosiershushpuppies"] = { emote = "coffee_bagel_b", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},


    ["hookies_unleaded"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["hookies_skylinemilkshake"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["hookies_101octane"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["hookies_coolant"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["hookies_koronawlime"] = { emote = "vodkab", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65), }},
    ["hookies_twistedtwea"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["hookies_crucialbrew"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55,65), }},
    ["hookies_bluebullvodka"] = { emote = "vodkab", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65), }},
    ["hookies_whiskey"] = { emote = "vodkab", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65), }},
    ["hookies_ginandtonic"] = { emote = "wine", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65), }},
    ["hookies_shrimpcocktail"] = { emote = "wine", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(55, 65) }},
 







    -- thetownbarandgrill

    ["thetownbarandgrill_chocolate_ice_cream"] = { emote = "icecream1", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["thetownbarandgrill_vanilla_ice_cream"] = { emote = "icecream1", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 40), }},
    ["snr_buns_strawberry_ice_creams"] = { emote = "icecream1", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["thetownbarandgrill_cookie_dough"] = { emote = "uwu6", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},
    --["thetownbarandgrill_mashed_potatoes"] = { emote = "cheesecake", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65), }},
    ["thetownbarandgrill_baked_beans"] = { emote = "uwu5", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},
    ["thetownbarandgrill_lobster"] = { emote = "uwu9", canRun = false, disableWalk = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55,65)}},
    ["thetownbarandgrill_steak"] = { emote = "snrkebabsteak", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},
    ["thetownbarandgrill_brisket"] = { emote = "snrkebabsteak", canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) }},
    ["thetownbarandgrill_ribs"] = { emote = "uwu9", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(30, 45), }},
    ["thetownbarandgrill_billy_burg"] = { emote = "burger", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), }},


    ["thetownbarandgrill_donny_julio_shot"] = { emote = "bscoffee", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), screen = "focus", widepupils = true, canOD = true }},
    ["thetownbarandgrill_fruit_punch"] = { emote = "coffee_fruit", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { thirst = math.random(20, 40), }},
    ["thetownbarandgrill_billy_club"] = { emote = "bscoke", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), screen = "focus", widepupils = true, canOD = true }},
    ["thetownbarandgrill_beer"] = { emote = "beer2", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), screen = "focus", widepupils = true, canOD = true }},


    -- Cosmic Weed Shop

    ["cosmic_pineappleexpressgummy"] = { emote = "oxy", canRun = true, time = math.random(5000,6000), stress = math.random(2, 4), heal = 0, armor = 20, type = "drug", stats = { hunger = 0, }},
    ["cosmic_thejupitercookie"] = { emote = "oxy", canRun = true, time = math.random(5000,6000), stress = math.random(2, 4), heal = 0, armor = 20, type = "drug", stats = { hunger = 0, }},
    ["cosmic_afterlifecakepop"] = { emote = "oxy", canRun = true, time = math.random(5000,6000), stress = math.random(2, 4), heal = 0, armor = 20, type = "drug", stats = { hunger = 0, }},
    ["cosmic_fossilfuelgummy"] = { emote = "oxy", canRun = true, time = math.random(5000,6000), stress = math.random(2, 4), heal = 0, armor = 20, type = "drug", stats = { hunger = 0, }},
    ["cosmic_ogcosmiccakepop"] = { emote = "oxy", canRun = true, time = math.random(5000,6000), stress = math.random(2, 4), heal = 0, armor = 20, type = "drug", stats = { hunger = 0, }},
    ["cosmic_greengodbrownie"] = { emote = "oxy", canRun = true, time = math.random(5000,6000), stress = math.random(2, 4), heal = 0, armor = 20, type = "drug", stats = { hunger = 0, }},
    ["cosmic_lockheartlovecookie"] = { emote = "oxy", canRun = true, time = math.random(5000,6000), stress = math.random(2, 4), heal = 0, armor = 20, type = "drug", stats = { hunger = 0, }},
    ["cosmic_nattypinkdelightgummy"] = { emote = "oxy", canRun = true, time = math.random(5000,6000), stress = math.random(2, 4), heal = 0, armor = 20, type = "drug", stats = { hunger = 0, }},

    -- ["cosmic_nattypinkdelightjoint"] = { emote = "joint", canRun = true, time = math.random(10000,15000), stress = math.random(12, 24), heal = 0, armor = 50, type = "drug", stats = { hunger = 0, }},
    -- ["cosmic_lockheartlovejoint"] = { emote = "joint", canRun = true, time = math.random(10000,15000), stress = math.random(12, 24), heal = 0, armor = 50, type = "drug", stats = { hunger = 0, }},
    -- ["cosmic_greengodjoint"] = { emote = "joint", canRun = true, time = math.random(10000,15000), stress = math.random(12, 24), heal = 0, armor = 50, type = "drug", stats = { hunger = 0, }},
    -- ["cosmic_ogcosmicjoint"] = { emote = "joint", canRun = true, time = math.random(10000,15000), stress = math.random(12, 24), heal = 0, armor = 50, type = "drug", stats = { hunger = 0, }},
    -- ["cosmic_fossilfueljoint"] = { emote = "joint", canRun = true, time = math.random(10000,15000), stress = math.random(12, 24), heal = 0, armor = 50, type = "drug", stats = { hunger = 0, }},
    -- ["cosmic_afterlifejoint"] = { emote = "joint", canRun = true, time = math.random(10000,15000), stress = math.random(12, 24), heal = 0, armor = 50, type = "drug", stats = { hunger = 0, }},
    -- ["cosmic_thejupiterjoint"] = { emote = "joint", canRun = true, time = math.random(10000,15000), stress = math.random(12, 24), heal = 0, armor = 50, type = "drug", stats = { hunger = 0, }},
    -- ["cosmic_pineappleexpressjoint"] = { emote = "joint", canRun = true, time = math.random(10000,15000), stress = math.random(12, 24), heal = 0, armor = 50, type = "drug", stats = { hunger = 0, }},

    
    -- High Times

    ["smoking_pineappleexpressgummy"] = { emote = "oxy", canRun = true, time = math.random(5000,6000), stress = math.random(2, 4), heal = 0, armor = 20, type = "drug", stats = { hunger = 0, }},
    ["smoking_thejupitercookie"] = { emote = "oxy", canRun = true, time = math.random(5000,6000), stress = math.random(2, 4), heal = 0, armor = 20, type = "drug", stats = { hunger = 0, }},
    ["smoking_afterlifecakepop"] = { emote = "oxy", canRun = true, time = math.random(5000,6000), stress = math.random(2, 4), heal = 0, armor = 20, type = "drug", stats = { hunger = 0, }},
    ["smoking_fossilfuelgummy"] = { emote = "oxy", canRun = true, time = math.random(5000,6000), stress = math.random(2, 4), heal = 0, armor = 20, type = "drug", stats = { hunger = 0, }},
    ["smoking_ogsmokingcakepop"] = { emote = "oxy", canRun = true, time = math.random(5000,6000), stress = math.random(2, 4), heal = 0, armor = 20, type = "drug", stats = { hunger = 0, }},
    ["smoking_greengodbrownie"] = { emote = "oxy", canRun = true, time = math.random(5000,6000), stress = math.random(2, 4), heal = 0, armor = 20, type = "drug", stats = { hunger = 0, }},
    ["smoking_lockheartlovecookie"] = { emote = "oxy", canRun = true, time = math.random(5000,6000), stress = math.random(2, 4), heal = 0, armor = 20, type = "drug", stats = { hunger = 0, }},
    ["smoking_nattypinkdelightgummy"] = { emote = "oxy", canRun = true, time = math.random(5000,6000), stress = math.random(2, 4), heal = 0, armor = 20, type = "drug", stats = { hunger = 0, }},

    -- ["smoking_nattypinkdelightjoint"] = { emote = "joint", canRun = true, time = math.random(10000,15000), stress = math.random(12, 24), heal = 0, armor = 50, type = "drug", stats = { hunger = 0, }},
    -- ["smoking_lockheartlovejoint"] = { emote = "joint", canRun = true, time = math.random(10000,15000), stress = math.random(12, 24), heal = 0, armor = 50, type = "drug", stats = { hunger = 0, }},
    -- ["smoking_greengodjoint"] = { emote = "joint", canRun = true, time = math.random(10000,15000), stress = math.random(12, 24), heal = 0, armor = 50, type = "drug", stats = { hunger = 0, }},
    -- ["smoking_ogsmokingjoint"] = { emote = "joint", canRun = true, time = math.random(10000,15000), stress = math.random(12, 24), heal = 0, armor = 50, type = "drug", stats = { hunger = 0, }},
    -- ["smoking_fossilfueljoint"] = { emote = "joint", canRun = true, time = math.random(10000,15000), stress = math.random(12, 24), heal = 0, armor = 50, type = "drug", stats = { hunger = 0, }},
    -- ["smoking_afterlifejoint"] = { emote = "joint", canRun = true, time = math.random(10000,15000), stress = math.random(12, 24), heal = 0, armor = 50, type = "drug", stats = { hunger = 0, }},
    -- ["smoking_thejupiterjoint"] = { emote = "joint", canRun = true, time = math.random(10000,15000), stress = math.random(12, 24), heal = 0, armor = 50, type = "drug", stats = { hunger = 0, }},
    -- ["smoking_pineappleexpressjoint"] = { emote = "joint", canRun = true, time = math.random(10000,15000), stress = math.random(12, 24), heal = 0, armor = 50, type = "drug", stats = { hunger = 0, }},

  ---- cloud 9
  --- Joint & Food Items from mpw_edible_props for jim-consumables config.lua
  -- ["joint_pink"] = { emote = "joint_pink", canRun = true, disableWalk = false, time = math.random(10000, 15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo", time = 60000, widepupils = false, canOD = false } },
  -- ["joint_black"] = { emote = "joint_black", canRun = true, disableWalk = false, time = math.random(10000, 15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo", time = 60000, widepupils = false, canOD = false } },
  -- ["joint_lblue"] = { emote = "joint_lblue", canRun = true, disableWalk = false, time = math.random(10000, 15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo", time = 60000, widepupils = false, canOD = false } },
  -- ["joint_red"] = { emote = "joint_red", canRun = true, disableWalk = false, time = math.random(10000, 15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo", time = 60000, widepupils = false, canOD = false } },
  -- ["joint_purple"] = { emote = "joint_purple", canRun = true, disableWalk = false, time = math.random(10000, 15000), stress = math.random(5, 10), heal = 0, armor = 50, type = "drug", stats = { screen = "turbo", time = 60000, widepupils = false, canOD = false } },
  
  ["glowy_shroom_pink"] = { emote = "glowy_shroom_pink", canRun = true, time = math.random(5000, 6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus", time = 60000, widepupils = false, canOD = false } },
  ["glowy_shroom_white"] = { emote = "glowy_shroom_white", canRun = true, time = math.random(5000, 6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus", time = 60000, widepupils = false, canOD = false } },
  ["weed_cookie9"] = { emote = "weed_cookie9", canRun = true, time = math.random(5000, 6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus", time = 60000, widepupils = false, canOD = false } },
  ["glowy_shroom_red"] = { emote = "glowy_shroom_red", canRun = true, time = math.random(5000, 6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus", time = 60000, widepupils = false, canOD = false } },
  ["glowy_shroom_purple"] = { emote = "glowy_shroom_purple", canRun = true, time = math.random(5000, 6000), stress = math.random(5, 10), heal = 0, armor = math.random(20, 20), type = "drug", stats = { screen = "focus", time = 60000, widepupils = false, canOD = false } },



--- Vespucci Beach Bar


  ["vbb_swrecked"] = { emote = "vodkab", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(20,40), screen = "focus", widepupils = true, canOD = true }},
  ["vbb_gsunset"] = { emote = "beer", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), screen = "focus", widepupils = true, canOD = true } },
  ["vbb_mhawaiian"] = { emote = "whiskey", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10, 20), screen = "focus", widepupils = true, canOD = true } },
  ["vbb_cbreeze"] = { emote = "vodkab", canRun = true, time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { effect = "stress", time = 5000, amount = 2, thirst = math.random(10, 20), canOD = true } },

-- Food
  ["vbb_odelight"] = { emote = "icecream1", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  ["vbb_mfeast"] = { emote = "sandwich", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  --["vbb_abites"] = { emote = "bscake2", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  ["vbb_wwave"] = { emote = "bscake", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  ["vbb_poysters"] = { emote = "sandwich", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  ["vbb_ttreasures"] = { emote = "bscake", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  ["vbb_ccrew"] = { emote = "uwu9", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  --["vbb_ccravings"] = { emote = "bscake2", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
  ["vbb_ssnacks"] = { emote = "uwu12", canRun = true, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(55, 65) } },
   


  -- START CRUMBL CAFE
  ["crumbl_cookie"]               = { emote = "uwu6", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), } },
  ["crumbl_choc_muffin"]          = { emote = "coffee_muffin_a", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), } },
  ["crumbl_icecream_chocolate"]   = { emote = "icecream1", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), } },
  ["crumbl_icecream_vanilla"]     = { emote = "icecream1", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), } },
  ["crumbl_icecream_strawberry"]  = { emote = "icecream1", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), } },
  ["crumbl_icecream_mint"]        = { emote = "icecream1", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), } },
  ["crumbl_panini"]               = { emote = "uwu6", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), } },
  ["crumbl_milkshake_chocolate"]  = { emote = "drink", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65), } },
  ["crumbl_milkshake_strawberry"] = { emote = "drink", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(50, 65), } },
  ["crumbl_milkshake_vanilla"]    = { emote = "drink", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { amount = 2, thirst = math.random(50, 65), } },
  ["crumbl_warpchicken"]          = { emote = "uwu6", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), } },
  ["crumbl_warpsalmon"]           = { emote = "uwu6", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(50, 65), } },
  --Drinks
  ["crumbl_bubble_milk"]          = { emote = "sipshakel", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { thirst = math.random(50, 65), } },
  ["crumbl_bubble_orange"]        = { emote = "sipshakel", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { thirst = math.random(50, 65), } },
  ["crumbl_bubble_purple"]        = { emote = "sipshakel", canRun = false, time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { thirst = math.random(50, 65), } },
  

  
    --[[----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- Items that effect status changes, like bleeding can cause problems as they are all handled in their own scripts
    -- Testing these but they may be best left handled by default scripts
    ["ifaks"] = { 			emote = "oxy", 		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 10, armor = 0, type = "drug", stats = { effect = "heal", amount = 6, widepupils = false, canOD = false } },
    ["bandage"] = { 		emote = "oxy", 		time = math.random(5000, 6000), stress = 0, heal = 10, armor = 0, type = "drug", stats = { effect = "heal", amount = 3, widepupils = false, canOD = false } }, },
    ]]

    --Testing effects & armor with small functionality to drugs - This may be another one left to default scripts
    ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --[[ --Testing effects & armor with small functionality to drugs - This may be another one left to default scripts
    joint = { 			emote = "smoke3",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },

    cokebaggy = { 		emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { screen = "focus", effect = "stamina", widepupils = false, canOD = true } },
    --crackbaggy = { 		emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { effect = "heal", widepupils = false, canOD = true } },
    xtcbaggy = { 		emote = "oxy",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 10, type = "drug", stats = { effect = "strength", widepupils = true, canOD = true } },
    oxy = { 			emote = "oxy",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { effect = "heal", widepupils = false, canOD = false } },
    meth = { 			emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 10, type = "drug", stats = { effect = "stamina", widepupils = false, canOD = true } },
    ]]		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --Example item
--    heartstopper = {
--        emote = "burger", 							-- Select an emote from below, it has to be in here
--        time = math.random(5000, 6000),				-- Amount of time it takes to consume the item
--        stress = math.random(1,2),					-- Amount of stress relief, can be 0
--        heal = 0, 									-- Set amount to heal by after consuming
--        armor = 5,									-- Amount of armor to add
--        type = "food",								-- Type: "alcohol" / "drink" / "food"
--        canRun = true,                                -- If true player can run while using the item, if not it will cancel the event
--
--        stats = {
--            screen = "thermal",						-- The screen effect to be played when after consuming the item "rampage" "turbo" "focus" "weed" "trevor" "nightvision" "thermal"
--            effect = "heal", 						    -- The status effect given by the item, "heal" / "stamina"
--                                                      -- This supports ps-buffs effects "armor" "stress" "swimming" "hacking" "intelligence" "luck" "strength"
--            time = 10000,							    -- How long the effect should last (if not added it will default to 10000)
--            amount = 6,								-- How much the value is changed by per second
--            hunger = math.random(10, 20),			    -- The hunger/thirst stats of the item, if not found in the items.lua
--            thirst = math.random(10, 20),			    -- The hunger/thirst stats of the item, if not found in the items.lua
--            canOD = true,                             -- This cruwu6es an OD Effect, killing the user if they have too much
--        },
--        --Reward Items Variables
--                                                      -- These can be the only thing in a consumable table and the item will still work
--        amounttogive = 3,							    -- Used for "RewardItems", tells the script how many to give
--        rewards = {
--            [1] = {
--                item = "plastic", 					-- prize item name
--                max = 10,							    -- max amount to give (this is put into math.random(1, max) )
--                rarity = 1,							-- the rarity system, 1 being rarest, 4 being most common
--            },
--        },
--    },

    -- Example Box Item
--    ["9_box"] = {                                     -- Name of the box item in the shared
--        emote = "uncuff",                             -- The emote than should run when "unboxing"
--        canRun = true,                                -- If true player can run while using the item, if not it will cancel the event
--        time = 3500,                                  -- How long it takes to use the item
--        type = "pack",                                -- Designate it as a "pack" to the script knows what to do
--        pack = {
--            item = "9_ammo",                          -- The item to give from the box when complete
--            amount = 20                               -- How many of the item to give
--        },
--    },

    -- Example Cigar Item wiht requirements
--    ["cigar"] = {                                     -- Name of the item in your shared items
--        emote = "smokecigar",                         -- The emote than should run when "smoking"
--        canRun = true,                                -- If true player can run while using the item, if not it will cancel the event
--        time = math.random(5000, 6000),               -- How long it takes to use the item
--        type = "smoke",                               -- Designate it as a "smoke" to the script knows what to do
--        requiredItem = "lighter",                     -- Set a required item making it unsable if they don't have it
--        stats = {
--            effect = "stress",
--            time = 5000,
--            amount = math.random(10, 15),
--            canOD = false
--        }
--    },
}