--? For support, join our Discord server: https://discord.gg/jAnEnyGBef

return {
	Framework = "qbox", -- Options: "esx", "qbox", "qbcore", "custom", or "auto" (auto-detects avaible options)
	Locale = "en", -- Options: "en", "de"
	DebugMode = "false", -- Options: "prod" (minimal logs), "dev" (detailed logs), false (disable logs)

	EnableSounds = true, -- Plays sounds when interacting with the shop interface
	ImagePath = "nui://ox_inventory/web/images/", -- Path to the item images --? Local folder: "item_images/"
	WeaponAsItem = true, -- Treat weapons as items

	Shops = {
		["shop"] = {
			PointRadius = 25.0, -- The radius within which markers, peds, and other game elements related to the shop are displayed

			Locations = {
				vector4(372.8008, 328.1116, 103.5665, 262.1354), -- Clinton Ave
				vector4(2555.5110, 380.7313, 108.6229, 0.9597), -- Palomino Ave
				vector4(-3040.5376, 583.9359, 7.9089, 17.7445), -- Inseno Road
				vector4(-3243.9229, 1000.0519, 12.8307, 0.7583), -- Barbareno Rd
				vector4(-2193.4412, 4290.1064, 49.1743, 63.6331), -- Great Ocean Hwy
				vector4(1959.1536, 3741.4165, 32.3437, 298.7749), -- Niland Ave
				vector4(2676.5083, 3280.1863, 55.2411, 335.5104), -- Senora Fwy
				vector4(1728.5699, 6416.7671, 35.0372, 243.3380), -- Senora Fwy 2
				vector4(1134.2589, -983.0569, 46.4158, 278.9547), -- El Rancho Blvd
				vector4(-1221.4543, -908.0496, 12.3263, 36.5340), -- San Andreas Ave
				vector4(-1486.7350, -377.5593, 40.1634, 132.9464), -- Prosperity St
				vector4(-2966.3162, 391.5883, 15.0433, 86.4455), -- Great Ocean Hwy
				vector4(24.5062, -1345.5989, 29.4970, 263.3659), -- Inoccence Blvd
				vector4(-561.7218, 286.8480, 82.1765, 266.4413), -- Milton Rd
				vector4(-47.2886, -1758.5280, 29.4210, 45.3676), -- Davis Ave
				vector4(1165.0068, -323.6485, 69.2051, 101.2836), -- West Mirrow Drive
				vector4(-706.0665, -914.6005, 19.2156, 82.3892), -- Palomino Ave
				vector4(-1819.4907, 793.5951, 138.0846, 132.5959), -- Banham Canyon Dr
				vector4(549.2471, 2669.6699, 42.1565, 96.9846), -- Route 68
				vector4(1392.0671, 3606.1155, 34.9809, 203.5101), -- Algonquin Blvd
				vector4(1984.2482, 3054.3589, 47.2151, 240.0611), -- Panorama Dr
				vector4(307.54, -602.01, 43.26, 342.93), -- Panorama Dr
			},

			--? For icons, use Iconify: https://icon-sets.iconify.design
			Categories = {
				{ name = "All Products", type = "all", icon = "ic:round-clear-all" }, --! Required for all shops
				{ name = "Food", type = "food", icon = "mdi:food-drumstick" },
				{ name = "Drinks", type = "drinks", icon = "ion:water-sharp" },
			},

			Items = {
    -- Food
    { name = "fries",           label = "Fries",            category = "food",       price = 30 },
    { name = "burger",          label = "Burger",           category = "food",       price = 40 },

    -- Drinks (non-alcoholic)
    { name = "water",           label = "Water Bottle",     category = "drinks",     price = 25 },
    { name = "sprunk",          label = "Sprunk Can",       category = "drinks",     price = 35 },
    { name = "mustard",         label = "Petrol Can",       category = "drinks",     price = 35 },

    -- Energy Drinks (JUNK)
    { name = "junk_blue",       label = "Junk Blue",        category = "drinks",     price = 80 },
    { name = "junk_green",      label = "Junk Green",       category = "drinks",     price = 80 },
    { name = "junk_orange",     label = "Junk Orange",      category = "drinks",     price = 80 },
    { name = "junk_purple",     label = "Junk Purple",      category = "drinks",     price = 80 },
    { name = "junk_red",        label = "Junk Red",         category = "drinks",     price = 80 },

    -- Alcoholic Drinks
    { name = "beer",            label = "Beer",             category = "drinks",     price = 120 },
    { name = "vodka",           label = "Vodka",            category = "drinks",     price = 350 },
    { name = "vodka_shot",      label = "Vodka Shot",       category = "drinks",     price = 90  },
    { name = "whiskey",         label = "Whiskey",          category = "drinks",     price = 400 },
    { name = "whiskey_glass",   label = "Whiskey Glass",    category = "drinks",     price = 130 },
    { name = "tequila",         label = "Tequila",          category = "drinks",     price = 350 },
    { name = "tequila_shot",    label = "Tequila Shot",     category = "drinks",     price = 90  },
    { name = "wine",            label = "Wine",             category = "drinks",     price = 300 },
    { name = "wine_glass",      label = "Wine Glass",       category = "drinks",     price = 120 },
    { name = "rum",             label = "Rum",              category = "drinks",     price = 350 },
    { name = "rum_glass",       label = "Rum Glass",        category = "drinks",     price = 130 },
    { name = "champagne_glass", label = "Champagne Glass",  category = "drinks",     price = 150 },

    -- Cocktails
    { name = "mojito",          label = "Mojito",           category = "drinks",     price = 240 },
    { name = "martini",         label = "Martini",          category = "drinks",     price = 260 },
    { name = "bloody_mary",     label = "Bloody Mary",      category = "drinks",     price = 250 },
    { name = "sex_on_the_beach",label = "Sex on the Beach", category = "drinks",     price = 260 },
    { name = "pina_colada",     label = "Piña Colada",      category = "drinks",     price = 250 },

	    -- DevKit Drinks
    { name = "devkit_bluecrush", label = "Blue Crush", category = "drinks", price = 3 },
    { name = "devkit_cherrycoke", label = "Cherry Coke", category = "drinks", price = 4 },
    { name = "devkit_coke", label = "Coke", category = "drinks", price = 3 },
    { name = "devkit_dietdew", label = "Diet Mountain Dew", category = "drinks", price = 4 },
    { name = "devkit_rootbeer", label = "Root Beer", category = "drinks", price = 4 },
    { name = "devkit_grapekoolaid", label = "Grape Kool-Aid", category = "drinks", price = 3 },
    { name = "devkit_jarrito_grapefruit", label = "Jarritos Grapefruit", category = "drinks", price = 3 },
    { name = "devkit_jarrito_lime", label = "Jarritos Lime", category = "drinks", price = 3 },
    { name = "devkit_jarrito_mandarin", label = "Jarritos Mandarin", category = "drinks", price = 3 },
    { name = "devkit_jarrito_strawberry", label = "Jarritos Strawberry", category = "drinks", price = 3 },
    { name = "devkit_jarritos_mango", label = "Jarritos Mango", category = "drinks", price = 3 },
    { name = "devkit_mmbluer", label = "MM Blue Raspberry", category = "drinks", price = 3 },
    { name = "devkit_mmkiwis", label = "MM Kiwi Strawberry", category = "drinks", price = 3 },
    { name = "devkit_mmwatermelon", label = "MM Watermelon", category = "drinks", price = 3 },
    { name = "devkit_bluegatorade", label = "Blue Gatorade", category = "drinks", price = 3 },
    { name = "devkit_orangegatorade", label = "Orange Gatorade", category = "drinks", price = 3 },
    { name = "devkit_redgatorade", label = "Red Gatorade", category = "drinks", price = 4 },
    { name = "devkit_prime_blueraspberry", label = "Prime Blue Raspberry", category = "drinks", price = 3 },
    { name = "devkit_prime_grape", label = "Prime Grape", category = "drinks", price = 4 },
    { name = "devkit_prime_icepop", label = "Prime Ice Pop", category = "drinks", price = 4 },
    { name = "devkit_prime_lemonlime", label = "Prime Lemon Lime", category = "drinks", price = 4 },
    { name = "devkit_prime_metamoon", label = "Prime Metamoon", category = "drinks", price = 4 },
    { name = "devkit_prime_orange", label = "Prime Orange", category = "drinks", price = 4 },
    { name = "devkit_prime_tropicalpunch", label = "Prime Tropical Punch", category = "drinks", price = 4 },
    { name = "devkit_redbull", label = "RedBull", category = "drinks", price = 4 },
    { name = "devkit_redbullsf", label = "RedBull Sugar Free", category = "drinks", price = 4 },

    -- DevKit Snacks
    { name = "devkit_chilicheesecheetos", label = "Chili Cheese Cheetos", category = "food", price = 3 },
    { name = "devkit_cjcheetos", label = "CJ Cheetos", category = "food", price = 3 },
    { name = "devkit_coolranch", label = "Cool Ranch Doritos", category = "food", price = 4 },
    { name = "devkit_fhbobcheetos", label = "Flamin' Hot Bob Cheetos", category = "food", price = 3 },
    { name = "devkit_fhccheetos", label = "Flamin' Hot Crunchy Cheetos", category = "food", price = 4 },
    { name = "devkit_fhcheetos", label = "Flamin' Hot Cheetos", category = "food", price = 3 },
    { name = "devkit_fhfcheetos", label = "Flamin' Hot Fries", category = "food", price = 3 },
    { name = "devkit_fritos", label = "Fritos", category = "food", price = 3 },
    { name = "devkit_fritos_twist", label = "Fritos Twist", category = "food", price = 3 },
    { name = "devkit_lays", label = "Lays Classic", category = "food", price = 3 },
    { name = "devkit_lays_bbq", label = "Lays BBQ", category = "food", price = 3 },
    { name = "devkit_lays_sc", label = "Lays Sour Cream", category = "food", price = 3 },
    { name = "devkit_prignles", label = "Pringles", category = "food", price = 3 },
    { name = "devkit_sun_cheddar", label = "Sun Chips Cheddar", category = "food", price = 3 },
    { name = "devkit_sunchip", label = "Sun Chips", category = "food", price = 3 },
    { name = "devkit_takis", label = "Takis", category = "food", price = 3 },
    { name = "devkit_dots", label = "Dots", category = "food", price = 4 },
    { name = "devkit_gobstopper", label = "Gobstopper", category = "food", price = 4 },
    { name = "devkit_hersheys", label = "Hershey's", category = "food", price = 4 },
    { name = "devkit_hottamales", label = "Hot Tamales", category = "food", price = 4 },
    { name = "devkit_milkduds", label = "Milk Duds", category = "food", price = 4 },
    { name = "devkit_nerdsgummy", label = "Nerds Gummy", category = "food", price = 4 },
    { name = "devkit_sweedishfish", label = "Swedish Fish", category = "food", price = 4 },
    { name = "devkit_sweettarts", label = "Sweet Tarts", category = "food", price = 4 },
    { name = "devkit_trolli", label = "Trolli", category = "food", price = 4 },
    { name = "devkit_whoppers", label = "Whoppers", category = "food", price = 4 },
			},

			Requirement = {
				Job = {
					required = false, -- Whether a job is required to access the shop
					jobs = {
						{
							label = "Police", -- The display name of the required job
							name = "police", -- The name of the required job
							grade = 0, -- Minimum job grade required to access the shop
						},
					},
				},
				License = {
					required = false, -- Whether a license is required to access the shop
					buyDialog = true, -- Displays a dialog prompting the player to purchase the required license
					label = "Weapon License", -- The display name of the required license
					type = "weapon", -- The type of the required license (e.g., "weapon")
					price = 10000, -- The cost of the license
				},
			},

			Locales = { --? More locales including the currency symbol, button text and more can be found in "locales/"
				MainHeader = {
					title = "Shop",
					tag = "24/7",
					description = "Welcome to your local market, where we're always here for you, day or night!\nExplore a curated selection of premium goods, tailored to meet your every need.",
				},
				CartHeader = {
					title = "Shopping",
					tag = "Cart",
					description = "Review your chosen items and proceed to secure, easy\ncheckout with multiple payment options.",
				},
			},

			Blip = {
				enabled = true, -- If true, displays a map blip for the shop locations
				name = "Shop [24/7]", -- Name displayed on the map
				sprite = 59, -- Blip icon type --? Reference: https://docs.fivem.net/docs/game-references/blips
				color = 2, -- Blip color --? Reference: https://docs.fivem.net/docs/game-references/blips/#blip-colors
				scale = 0.55, -- Size of the blip
			},

			Indicator = {
				Ped = {
					enabled = true, -- If true, spawns a ped (NPC) at the locations
					model = `mp_m_shopkeep_01`, -- Ped model type --? Reference: https://docs.fivem.net/docs/game-references/ped-models
					scenario = "WORLD_HUMAN_AA_SMOKE", -- Animation scenario for the ped --? Reference: https://github.com/DioneB/gtav-scenarios
				},
				Marker = {
					enabled = false, -- If true, displays a marker at the shop locations
					type = 20, -- Marker type --? Reference: https://docs.fivem.net/docs/game-references/markers
					size = vec3(0.7, 0.7, 0.7), -- Size of the marker
					color = { 65, 133, 235, 120 }, -- RGBA color of the marker
					bobUpAndDown = false, -- If true, marker moves up and down
					faceCamera = false, -- If true, marker faces the player's camera
					rotate = true, -- If true, marker rotates
				},
			},

			Interaction = {
				OpenKey = 38, -- Default: 38 (E key) --? Reference: https://docs.fivem.net/docs/game-references/controls

				HelpText = {
					enabled = false, -- If true, displays floating help text near the interaction point
					distance = 2.5, -- Distance within which help text appears and is interactable
				},
				FloatingText = {
					enabled = false, -- If true, displays floating text above the shop NPC
					distance = 2.5, -- Distance within which floating text is visible and interactable
				},
				Target = { -- Uses ox_target by default --? (modifiable in config/functions.lua)
					enabled = true, -- If true, enables targeting system
					boxZoneSize = vec3(4, 4, 4), -- Size of the target zone
					drawSprite = true, -- If true, displays a sprite for the target zone
					distance = 2.5, -- Interaction distance
				},
			},
		},

		["weapon_shop"] = {
			PointRadius = 25.0,

			Locations = {
				vector4(15.18, -1104.21, 29.78, 246.15), -- Elgin Ave -- Premium MLO
				vector4(-662.2554, -933.3735, 21.8292, 183.0097), -- Palomino Ave
				vector4(842.3751, -1035.5238, 28.1948, 356.2464), -- Olympic Fwy
				vector4(254.0491, -50.7247, 69.9410, 76.7617), -- Spanish Ave
				vector4(2567.8792, 292.3385, 108.7348, 3.7121), -- Palomino Fwy
				vector4(1692.0569, 3761.0879, 34.7053, 227.8851), -- Algonquin Blvd
				vector4(-331.7583, 6085.2231, 31.4548, 220.9601), -- Great Ocean Hwy
				vector4(-1119.0983, 2699.9138, 18.5541, 223.6154), -- Route 68
				vector4(-1303.8849, -394.7360, 36.6958, 76.3115), -- Morningwood Blvd
				vector4(817.7, -2157.64, 29.59, 89.73), -- Popular St -- Premium MLO
				vector4(-3173.7952, 1088.4893, 20.8387, 250.4138), -- Barbareno Rd
			},

Categories = {
	{ name = "All Products", type = "all", icon = "ic:round-clear-all" },
	{ name = "Weapons", type = "weapons", icon = "mdi:pistol" },
	{ name = "Ammo", type = "ammo", icon = "mdi:ammunition" },
	{ name = "Attachments", type = "attachments", icon = "game-icons:machine-gun-magazine" },
	{ name = "Armour", type = "armour", icon = "game-icons:kevlar-vest" },
	{ name = "Custom", type = "custom", icon = "mdi:star" }, -- NEW custom category
},

Items = {
	-- Pistols
	{ name = "WEAPON_GADGETPISTOL", label = "Gadgetpistol", category = "weapons", price = 250 },
	{ name = "WEAPON_SNSPISTOL", label = "SNS Pistol", category = "weapons", price = 350 },
	{ name = "WEAPON_CERAMICPISTOL", label = "Ceramicpistol", category = "weapons", price = 450 },
	{ name = "WEAPON_PISTOL", label = "Pistol", category = "weapons", price = 550 },
	{ name = "WEAPON_PISTOLXM3", label = "WM 29 Pistol", category = "weapons", price = 750 },

	-- Melee
	{ name = "WEAPON_KNUCKLE", label = "Knuckle", category = "weapons", price = 150 },
	{ name = "WEAPON_KNIFE", label = "Knife", category = "weapons", price = 200 },
	{ name = "WEAPON_SWITCHBLADE", label = "Switchblade", category = "weapons", price = 250 },
	{ name = "WEAPON_DAGGER", label = "Dagger", category = "weapons", price = 300 },
	{ name = "WEAPON_MACHETE", label = "Machete", category = "weapons", price = 350 },
	{ name = "WEAPON_HATCHET", label = "Hatchet", category = "weapons", price = 400 },
	{ name = "WEAPON_BATTLEAXE", label = "Battleaxe", category = "weapons", price = 450 },
	{ name = "WEAPON_STONE_HATCHET", label = "Stone Hatchet", category = "weapons", price = 500 },
	{ name = "WEAPON_BOTTLE", label = "Broken Bottle", category = "weapons", price = 100 },
	{ name = "WEAPON_BAT", label = "Bat", category = "weapons", price = 200 },
	{ name = "WEAPON_CROWBAR", label = "Crowbar", category = "weapons", price = 250 },
	{ name = "WEAPON_GOLFCLUB", label = "Golfclub", category = "weapons", price = 300 },
	{ name = "WEAPON_HAMMER", label = "Hammer", category = "weapons", price = 250 },
	{ name = "WEAPON_POOLCUE", label = "Poolcue", category = "weapons", price = 150 },
	{ name = "WEAPON_WRENCH", label = "Wrench", category = "weapons", price = 200 },

	-- Ammo
	{ name = "ammo-9", label = "9mm Ammo", category = "ammo", price = 100 },
	{ name = "ammo-22", label = ".22 LR Ammo", category = "ammo", price = 120 },
	{ name = "ammo-38", label = ".38 LC Ammo", category = "ammo", price = 140 },
	{ name = "ammo-44", label = ".44 Magnum Ammo", category = "ammo", price = 160 },
	{ name = "ammo-45", label = ".45 ACP Ammo", category = "ammo", price = 180 },
	{ name = "ammo-rifle", label = "5.56x45 Ammo", category = "ammo", price = 200 },
	{ name = "ammo-rifle2", label = "7.62x39 Ammo", category = "ammo", price = 220 },
	{ name = "ammo-shotgun", label = "12 Gauge Ammo", category = "ammo", price = 150 },
	{ name = "ammo-sniper", label = "7.62x51 Ammo", category = "ammo", price = 250 },
	{ name = "ammo-heavysniper", label = ".50 BMG Ammo", category = "ammo", price = 300 },
	{ name = "ammo-musket", label = ".50 Ball Ammo", category = "ammo", price = 350 },
	{ name = "ammo-flare", label = "Flare Ammo", category = "ammo", price = 120 },

	-- Armor
	{ name = "armour", label = "Armour", category = "armour", price = 150 },

	-- Attachments
	{ name = "at_suppressor", label = "Suppressor", category = "attachments", price = 200 },
	{ name = "at_grip", label = "Grip", category = "attachments", price = 150 },
	{ name = "at_flashlight", label = "Flashlight", category = "attachments", price = 180 },
	{ name = "at_barrel", label = "Barrel", category = "attachments", price = 220 },

	-- Magazines
	{ name = "at_clip_extended", label = "Extended Light Magazine", category = "attachments", price = 200 },
	{ name = "at_clip_extended2", label = "Extended Heavy Magazine", category = "attachments", price = 225 },
	{ name = "at_clip_drum", label = "Drum Magazine", category = "attachments", price = 250 },

	-- Scopes
	{ name = "at_scope_macro", label = "Macro Scope", category = "attachments", price = 300 },
	{ name = "at_scope_small", label = "Small Scope", category = "attachments", price = 250 },
	{ name = "at_scope_medium", label = "Medium Scope", category = "attachments", price = 270 },
	{ name = "at_scope_large", label = "Large Scope", category = "attachments", price = 300 },
	{ name = "at_scope_advanced", label = "Advanced Scope", category = "attachments", price = 350 },
	{ name = "at_scope_nv", label = "NV-Scope", category = "attachments", price = 400 },
	{ name = "at_scope_thermal", label = "Thermal Scope", category = "attachments", price = 450 },
	{ name = "at_scope_holo", label = "Holo Scope", category = "attachments", price = 500 },

	-- Muzzles
	{ name = "at_muzzle_flat", label = "Flat Muzzle", category = "attachments", price = 150 },
	{ name = "at_muzzle_tactical", label = "Tactical Muzzle", category = "attachments", price = 180 },
	{ name = "at_muzzle_fat", label = "Fat Muzzle", category = "attachments", price = 200 },
	{ name = "at_muzzle_heavy", label = "Heavy Muzzle", category = "attachments", price = 250 },
	{ name = "at_muzzle_slanted", label = "Slanted Muzzle", category = "attachments", price = 180 },
	{ name = "at_muzzle_split", label = "Split Muzzle", category = "attachments", price = 200 },
	{ name = "at_muzzle_squared", label = "Squared Muzzle", category = "attachments", price = 220 },
	{ name = "at_muzzle_bell", label = "Bell Muzzle", category = "attachments", price = 250 },

	-- Custom Weapons (ADDED)
	{ name = "WEAPON_FFNG32", label = "FFN G-32", category = "custom", price = 900 },
	{ name = "WEAPON_G19XWING", label = "G19 X-WING", category = "custom", price = 950 },
	{ name = "WEAPON_GLOCK45B", label = "GLOCK 45", category = "custom", price = 950 },
	{ name = "WEAPON_CAMOG19", label = "CAMO G-19", category = "custom", price = 900 },
	{ name = "WEAPON_G29", label = "G29 SWITCH", category = "custom", price = 1000 },
	{ name = "WEAPON_GLOCK44", label = "GLOCK 44", category = "custom", price = 850 },
	{ name = "WEAPON_MGLOCK", label = "MG GLOCK", category = "custom", price = 900 },
	{ name = "WEAPON_G26S", label = "G26 SWITCH", category = "custom", price = 880 },
	{ name = "WEAPON_G20SWITCH", label = "G20 X-SWITCH", category = "custom", price = 1000 },
	{ name = "WEAPON_HELLPUP", label = "HELLPUP", category = "custom", price = 2300 }, -- rifle (7.62)
	{ name = "WEAPON_ARPB", label = "ARP-B", category = "custom", price = 2400 },
	{ name = "WEAPON_NOSTOCKARP", label = "NO-STOCK ARP", category = "custom", price = 2300 },
	{ name = "WEAPON_SBR", label = "SBR RIFLE", category = "custom", price = 2100 },
	{ name = "WEAPON_ARPTAN", label = "TAN ARP", category = "custom", price = 2400 },
	{ name = "WEAPON_BBARP", label = "BB-ARP", category = "custom", price = 2400 },
	{ name = "WEAPON_LWCRARP", label = "LWCR ARP", category = "custom", price = 2350 },
	{ name = "WEAPON_HELLCAT", label = "HELLCAT", category = "custom", price = 1000 },
	{ name = "WEAPON_SR30", label = "SR-30", category = "custom", price = 2600 },
	{ name = "WEAPON_DESERTMDR", label = "DESERT MDR", category = "custom", price = 3500 }, -- precision/sniper
	{ name = "WEAPON_ACWR", label = "ACWR", category = "custom", price = 2400 },
	{ name = "WEAPON_GHOSTXGLOCK", label = "GHOST-X GLOCK", category = "custom", price = 980 },
	{ name = "WEAPON_TANG19", label = "TAN G19", category = "custom", price = 900 },
	{ name = "WEAPON_TIRACG19", label = "TIRAC G19", category = "custom", price = 900 },
	{ name = "WEAPON_CAMOG17S", label = "CAMO G17-S", category = "custom", price = 920 },
	{ name = "WEAPON_GLOCK19XL", label = "GLOCK 19-XL", category = "custom", price = 1000 },
},


			Requirement = {
				Job = {
					required = false,
					jobs = {
						{
							label = "Police",
							name = "police",
							grade = 0,
						},
						{
							label = "Sheriff",
							name = "sheriff",
							grade = 0,
						},
					},
				},
				License = {
					required = true,
					buyDialog = true,
					label = "Weapon License",
					type = "weapon",
					price = 1000,
				},
			},

			Locales = {
				MainHeader = {
					title = "Weapon Shop",
					tag = "24/7",
					description = "Welcome to your local weapon shop, where we're always here for you, day or night!\nExplore a curated selection of premium goods, tailored to meet your every need.",
				},
				CartHeader = {
					title = "Shopping",
					tag = "Cart",
					description = "Review your chosen items and proceed to secure, easy\ncheckout with multiple payment options.",
				},
			},

			Blip = {
				enabled = true,
				name = "Weapon Shop [24/7]",
				sprite = 110,
				color = 0,
				scale = 0.7,
			},

			Indicator = {
				Ped = {
					enabled = true,
					model = `mp_m_weapexp_01`,
					scenario = "WORLD_HUMAN_GUARD_STAND",
				},
				Marker = {
					enabled = false,
					type = 20,
					size = vec3(0.7, 0.7, 0.7),
					color = { 65, 133, 235, 120 },
					bobUpAndDown = false,
					faceCamera = false,
					rotate = true,
				},
			},

			Interaction = {
				OpenKey = 38,

				HelpText = {
					enabled = false,
					distance = 2.5,
				},
				FloatingText = {
					enabled = true,
					distance = 2.5,
				},
				Target = {
					enabled = false,
					boxZoneSize = vec3(4, 4, 4),
					drawSprite = true,
					distance = 2.5,
				},
			},
		},
	},
}
