Loc = {}

--[[	LIST OF POSSIBLE VEHICLE MODIFIERS   ]] --
-- Using these will change how each vehicle spawns
-- This can be used for making sure the vehicles comes out exactly how you want it to

-- CustomName = "Police Car", this will show a custom override name for your vehicles so you don't need to add them to your vehicles.lua
-- rank = { 2, 4 }, -- This specifes which grades can see it, and only these grades
-- --grade = 4, -- This specifies the lowest grade and above that can see the vehicle
-- colors = { 136, 137 }, -- This is the colour index id of the vehicle, Primary and Secondary in that order
-- bulletproof = true, -- This determines if the tyres are bullet proof (don't ask me why, I was asked to add this)
-- livery = 1, -- This sets the livery id of the vehicle, (most mod menus would number them or have them in number order) 0 = stock
-- extras = { 1, 5 }, -- This enables the selected extras on the vehicle
-- performance = "max", this sets the stats to max if available
-- performance = { 2, 3, 3, 2, 4, true }, -- This allows more specific settings for each upgrade level, in order: engine, brakes, suspension, transmission, armour, turbo
-- trunkItems = { }, -- Use this to add items to the trunk of the vehicle when it is spawned

-- ANY VEHICLE, BOATS, POLICE CARS, EMS VEHICLES OR EVEN PLANES CAN BE ADDED.

Config = {
	Debug = false, -- Enable to use debug features
	Lan = "en",

	Core = "qb-core",
	Menu = "ox",
	Notify = "ox",

	Fuel = "ox_fuel", -- Set this to your fuel script folder

	CarDespawn = false, -- Sends the vehicle to hell (removal animation)

	DistCheck = false, -- Require the vehicle to be near by to remove it

	Locations = {

		{
			zoneEnable = true,
			job = "police",
			garage = {
				spawn = vector4(462.51, -980.2, 23.94, 93.22),
				out = vector4(462.51, -980.2, 23.94, 93.22),
				list = {

					["polbmwm3"] = {
						CustomName = "BMW M3 Police",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},

					["polbmwm5"] = {
						CustomName = "BMW M5 Police",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},

					["polbmwm7"] = {
						CustomName = "BMW M7 Police",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},

					["polcoach"] = {
						CustomName = "Police Coach",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},

					["poldurango"] = {
						CustomName = "Dodge Durango Police",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},

					["polgt63"] = {
						CustomName = "AMG GT63 Police",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},



					["polmustang"] = {
						CustomName = "Mustang Police",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},

					["polrs6"] = {
						CustomName = "Audi RS6 Police",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},

					["polsilverado19"] = {
						CustomName = "Silverado Police",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},

					-- Sheriff / RB
					["gurkharb"] = {
						CustomName = "Gurkha Sheriff",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},

					["prisonvan2rb"] = {
						CustomName = "Prison Van",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},

					["speeddemonrb"] = {
						CustomName = "Speed Demon RB",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},

					["valorharley"] = {
						CustomName = "Sheriff Harley",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},



					["policeboat"] = {
						CustomName = "Police Boat",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},

					-- SWAT
					["sw_bearcat"] = {
						CustomName = "SWAT Bearcat",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},

					["sw_charg"] = {
						CustomName = "SWAT Charger",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},

					["sw_durango"] = {
						CustomName = "SWAT Durango",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},

					["sw_sprinter"] = {
						CustomName = "SWAT Sprinter",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},

					["sw_subrb"] = {
						CustomName = "SWAT Suburban",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},

					-- Unmarked
					["dlrs6um"] = {
						CustomName = "Unmarked RS6",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},

					["dlr34um"] = {
						CustomName = "Unmarked R34",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},













				},
			},
		},
		
		{
			zoneEnable = true, -- disable if you want to hide this temporarily
			job = "police", -- set this to required job grade
			garage = {
				spawn = vector4(440.47, -989.48, 44.95, 91.31),
				out = vector4(444.73, -981.74, 44.95, 182.84), -- Where you select the vehicles from
				list = {                           -- The list of cars that will spawn
					["polheli"] = {
						CustomName = "PD Heli",
						livery = 2,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["eheli"] = {
						CustomName = "Sheriff Helicopter",
						livery = 1,
						extras = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
						performance = "max",
					},
					["polmav"] = {
						CustomName = "PD Heli",
						livery = 2,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					}
				},
			},
		},
		{
			zoneEnable = true,                        -- disable if you want to hide this temporarily
			job = "ambulance",                        -- set this to required job grade
			garage = {
				spawn = vector4(-492.03, -336.22, 34.37, 170.88), -- Where the vehicle will spawn
				out = vector4(-487.71, -337.34, 34.5, 81.57), -- Where you select the vehicles from
				list = {                              -- The list of cars that will spawn

					["emsnspeedo"] = {
						CustomName = "EMT",
						livery = 0,
						--	----grade = 0,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["emscar2"] = {
						CustomName = "EMT Advance",
						livery = 4,
						----grade = 1,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["npolchar"] = {
						CustomName = "EMS Sargent",
						livery = 8,
						--grade = 2,
						colors = { 74, 74 },
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["poltorencep"] = {
						CustomName = "EMS Lead-Paramedic",
						livery = 1,
						--grade = 3,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["polscoutp"] = {
						CustomName = "EMS Specialist",
						livery = 1,
						--grade = 4,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["polgauntletp"] = {
						CustomName = "EMS Lieutenant",
						livery = 1,
						--grade = 5,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["polvigerop"] = {
						CustomName = "EMS Captain",
						livery = 1,
						--grade = 6,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["mbu3bb"] = {
						CustomName = "EMS bike",
						livery = 1,
						--grade = 6,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},

					["npolexp"] = {
						CustomName = "Deputy Chief",
						livery = 1,
						--grade = 8,
						colors = { 255, 255 },
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["npolexp"] = {
						CustomName = "Chief of EMS",
						livery = 1,
						--grade = 9,
						colors = { 0, 0 },
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["18srt"] = {
						CustomName = "EMS New 1",
						livery = 1,
						--grade = 7,
						colors = { 74, 74 },
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["fbi"] = {
						CustomName = "EMS New 2",
						livery = 1,
						--grade = 7,
						colors = { 74, 74 },
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["police2"] = {
						CustomName = "EMS New 3",
						livery = 1,
						--grade = 7,
						colors = { 74, 74 },
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["police3"] = {
						CustomName = "EMS New 4",
						livery = 1,
						--grade = 7,
						colors = { 74, 74 },
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["polvstr"] = {
						CustomName = "EMS New 5",
						livery = 1,
						--grade = 7,
						colors = { 74, 74 },
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["sheriff"] = {
						CustomName = "EMS New 6",
						livery = 1,
						--grade = 7,
						colors = { 74, 74 },
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},

				},
			},
		},












		{
			zoneEnable = true,                      -- disable if you want to hide this temporarily
			job = "ambulance",                      -- set this to required job grade
			garage = {
				spawn = vector4(-448.8, -310.65, 78.17, 22.24), -- Where the vehicle will spawn
				out = vector4(-438.69, -316.21, 78.17, 112.6), -- Where you select the vehicles from
				list = {                            -- The list of cars that will spawn
					["emsaw139"] = {
						CustomName = "emsaw139 Super",
						livery = 1,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["polmav"] = {
						CustomName = "Heli",
						livery = 2,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					}

				},
			},
		},
		{
			zoneEnable = true,                       -- disable if you want to hide this temporarily
			job = "beanmachine",                     -- set this to required job grade
			garage = {
				spawn = vector4(129.36, -1036.4, 29.43, 338.77), -- Where the vehicle will spawn
				out = vector4(125.95, -1040.69, 29.22, 262.46), -- Where you select the vehicles from
				list = {                             -- The list of cars that will spawn
					["starbucksvan"] = {
						CustomName = "Van",
						livery = 27,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["foodbike"] = {
						CustomName = "Bike",
						livery = 27,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["foodcar3"] = {
						CustomName = "Van 2",
						livery = 27,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
				},
			},
		},
		{
			zoneEnable = true,                     -- disable if you want to hide this temporarily
			job = "atoms",                         -- set this to required job grade
			garage = {
				spawn = vector4(89.43, 304.86, 110.01, 67.02), -- Where the vehicle will spawn
				out = vector4(90.66, 312.64, 110.03, 159.33), -- Where you select the vehicles from
				list = {                           -- The list of cars that will spawn
					["foodcar"] = {
						CustomName = "speed Van",
						livery = 20,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					}
				},
			},
		},
		{
			zoneEnable = true,                         -- disable if you want to hide this temporarily
			job = "catcafe",                           -- set this to required job grade
			garage = {
				spawn = vector4(-594.47, -1087.68, 22.18, 225.31), -- Where the vehicle will spawn
				out = vector4(-590.59, -1087.36, 22.33, 190.21), -- Where you select the vehicles from
				list = {                               -- The list of cars that will spawn
					["panto"] = {
						CustomName = "speed",
						livery = 20,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["burrito3"] = {
						CustomName = "store Van",
						livery = 20,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					}
				},
			},
		},
		{
			zoneEnable = true,                        -- disable if you want to hide this temporarily
			job = "burgershot",                       -- set this to required job grade
			garage = {
				spawn = vector4(-1179.77, -903.0, 13.54, 295.23), -- Where the vehicle will spawn
				out = vector4(-1175.04, -903.23, 13.66, 33.76), -- Where you select the vehicles from
				list = {                              -- The list of cars that will spawn
					["stalion2"] = {
						CustomName = "speed",
						livery = 20,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					},
					["burrito3"] = {
						CustomName = "store Van",
						livery = 20,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					}
				},
			},
		},
		{
			zoneEnable = true,                       -- disable if you want to hide this temporarily
			job = "koi",                             -- set this to required job grade
			garage = {
				spawn = vector4(-1019.72, -1464.0, 5.05, 26.37), -- Where the vehicle will spawn
				out = vector4(-1023.08, -1465.58, 5.05, 302.14), -- Where you select the vehicles from
				list = {                             -- The list of cars that will spawn
					["foodcar2"] = {
						CustomName = "speed Van",
						livery = 15,
						extras = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
						performance = "max",
					}
				},
			},
		},
	},
}
