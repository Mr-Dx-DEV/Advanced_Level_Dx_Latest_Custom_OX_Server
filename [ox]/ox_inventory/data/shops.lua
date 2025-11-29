return {
	General = {
		name = 'Shop',
		blip = {
			id = 59, colour = 69, scale = 0.5
		},
		inventory = {
			{ name = 'burger', price = 10 },
			{ name = 'water',  price = 10 },
			
			{ name = 'twerks_candy',  price = 10 },
			{ name = 'snikkel_candy',  price = 10 },
			{ name = 'coffee',  price = 10 },
			{ name = 'kurkakola',  price = 10 },
			{ name = 'tosti',  price = 10 },

			{ name = 'whiskey',  price = 10 },
			{ name = 'beer',  price = 10 },
			{ name = 'vodka',  price = 10 },
		},
		locations = {
			vec3(25.7, -1347.3, 29.49),
			vec3(-3038.71, 585.9, 7.9),
			vec3(-3241.47, 1001.14, 12.83),
			vec3(1728.66, 6414.16, 35.03),
			vec3(1697.99, 4924.4, 42.06),
			vec3(1961.48, 3739.96, 32.34),
			vec3(547.79, 2671.79, 42.15),
			vec3(2679.25, 3280.12, 55.24),
			vec3(2557.94, 382.05, 108.62),
			vec3(373.55, 325.56, 103.56),
		},
		targets = {
			{ loc = vec3(25.06, -1347.32, 29.5),   length = 0.7, width = 0.5, heading = 0.0,   minZ = 29.5,   maxZ = 29.9,   distance = 1.5 },
			{ loc = vec3(-3039.18, 585.13, 7.91),  length = 0.6, width = 0.5, heading = 15.0,  minZ = 7.91,   maxZ = 8.31,   distance = 1.5 },
			{ loc = vec3(-3242.2, 1000.58, 12.83), length = 0.6, width = 0.6, heading = 175.0, minZ = 12.83,  maxZ = 13.23,  distance = 1.5 },
			{ loc = vec3(1728.39, 6414.95, 35.04), length = 0.6, width = 0.6, heading = 65.0,  minZ = 35.04,  maxZ = 35.44,  distance = 1.5 },
			{ loc = vec3(1698.37, 4923.43, 42.06), length = 0.5, width = 0.5, heading = 235.0, minZ = 42.06,  maxZ = 42.46,  distance = 1.5 },
			{ loc = vec3(1960.54, 3740.28, 32.34), length = 0.6, width = 0.5, heading = 120.0, minZ = 32.34,  maxZ = 32.74,  distance = 1.5 },
			{ loc = vec3(548.5, 2671.25, 42.16),   length = 0.6, width = 0.5, heading = 10.0,  minZ = 42.16,  maxZ = 42.56,  distance = 1.5 },
			{ loc = vec3(2678.29, 3279.94, 55.24), length = 0.6, width = 0.5, heading = 330.0, minZ = 55.24,  maxZ = 55.64,  distance = 1.5 },
			{ loc = vec3(2557.19, 381.4, 108.62),  length = 0.6, width = 0.5, heading = 0.0,   minZ = 108.62, maxZ = 109.02, distance = 1.5 },
			{ loc = vec3(373.13, 326.29, 103.57),  length = 0.6, width = 0.5, heading = 345.0, minZ = 103.57, maxZ = 103.97, distance = 1.5 },
		}
	},

	Liquor = {
		name = 'Liquor Store',
		blip = {
			id = 93, colour = 69, scale = 0.5
		},
		inventory = {
			{ name = 'water',  price = 10 },
			
			--{ name = 'burger', price = 15 },
			{ name = 'whiskey',  price = 10 },
			{ name = 'beer',  price = 10 },
			{ name = 'vodka',  price = 10 },
		},
		locations = {
			vec3(1135.808, -982.281, 46.415),
			vec3(-1222.915, -906.983, 12.326),
			vec3(-1487.553, -379.107, 40.163),
			vec3(-2968.243, 390.910, 15.043),
			vec3(1166.024, 2708.930, 38.157),
			vec3(1392.562, 3604.684, 34.980),
			vec3(-1393.409, -606.624, 30.319)
		},
		targets = {
			{ loc = vec3(1134.9, -982.34, 46.41),   length = 0.5, width = 0.5, heading = 96.0,   minZ = 46.4, maxZ = 46.8, distance = 1.5 },
			{ loc = vec3(-1222.33, -907.82, 12.43), length = 0.6, width = 0.5, heading = 32.7,   minZ = 12.3, maxZ = 12.7, distance = 1.5 },
			{ loc = vec3(-1486.67, -378.46, 40.26), length = 0.6, width = 0.5, heading = 133.77, minZ = 40.1, maxZ = 40.5, distance = 1.5 },
			{ loc = vec3(-2967.0, 390.9, 15.14),    length = 0.7, width = 0.5, heading = 85.23,  minZ = 15.0, maxZ = 15.4, distance = 1.5 },
			{ loc = vec3(1165.95, 2710.20, 38.26),  length = 0.6, width = 0.5, heading = 178.84, minZ = 38.1, maxZ = 38.5, distance = 1.5 },
			{ loc = vec3(1393.0, 3605.95, 35.11),   length = 0.6, width = 0.6, heading = 200.0,  minZ = 35.0, maxZ = 35.4, distance = 1.5 }
		}
	},

	YouTool = {
		name = 'YouTool',
		blip = {
			id = 402, colour = 69, scale = 0.5
		},
		inventory = {
			{ name = 'lockpick', price = 10 },
			{ name = 'phone', price = 10 }
		},
		locations = {
			vec3(2748.0, 3473.0, 55.67),
			vec3(342.99, -1298.26, 32.51)
		},
		targets = {
			{ loc = vec3(2746.8, 3473.13, 55.67), length = 0.6, width = 3.0, heading = 65.0, minZ = 55.0, maxZ = 56.8, distance = 3.0 }
		}
	},

	Ammunation = {
		name = 'Ammunation',
		blip = {
			id = 110, colour = 69, scale = 0.5
		},
		inventory = {
			{ name = 'ammo-9',        price = 5, },
			{ name = 'WEAPON_KNIFE',  price = 200 },
			{ name = 'WEAPON_BAT',    price = 100 },
			{ name = 'WEAPON_PISTOL', price = 1000, metadata = { registered = true }, license = 'weapon' }
		},
		locations = {
			vec3(-662.180, -934.961, 21.829),
			vec3(810.25, -2157.60, 29.62),
			vec3(1693.44, 3760.16, 34.71),
			vec3(-330.24, 6083.88, 31.45),
			vec3(252.63, -50.00, 69.94),
			vec3(22.56, -1109.89, 29.80),
			vec3(2567.69, 294.38, 108.73),
			vec3(-1117.58, 2698.61, 18.55),
			vec3(842.44, -1033.42, 28.19)
		},
		targets = {
			{ loc = vec3(-660.92, -934.10, 21.94),  length = 0.6, width = 0.5, heading = 180.0,  minZ = 21.8,  maxZ = 22.2,  distance = 2.0 },
			{ loc = vec3(808.86, -2158.50, 29.73),  length = 0.6, width = 0.5, heading = 360.0,  minZ = 29.6,  maxZ = 30.0,  distance = 2.0 },
			{ loc = vec3(1693.57, 3761.60, 34.82),  length = 0.6, width = 0.5, heading = 227.39, minZ = 34.7,  maxZ = 35.1,  distance = 2.0 },
			{ loc = vec3(-330.29, 6085.54, 31.57),  length = 0.6, width = 0.5, heading = 225.0,  minZ = 31.4,  maxZ = 31.8,  distance = 2.0 },
			{ loc = vec3(252.85, -51.62, 70.0),     length = 0.6, width = 0.5, heading = 70.0,   minZ = 69.9,  maxZ = 70.3,  distance = 2.0 },
			{ loc = vec3(23.68, -1106.46, 29.91),   length = 0.6, width = 0.5, heading = 160.0,  minZ = 29.8,  maxZ = 30.2,  distance = 2.0 },
			{ loc = vec3(2566.59, 293.13, 108.85),  length = 0.6, width = 0.5, heading = 360.0,  minZ = 108.7, maxZ = 109.1, distance = 2.0 },
			{ loc = vec3(-1117.61, 2700.26, 18.67), length = 0.6, width = 0.5, heading = 221.82, minZ = 18.5,  maxZ = 18.9,  distance = 2.0 },
			{ loc = vec3(841.05, -1034.76, 28.31),  length = 0.6, width = 0.5, heading = 360.0,  minZ = 28.2,  maxZ = 28.6,  distance = 2.0 }
		}
	},

	PoliceArmoury = {
		name = 'Police Armoury',
		groups = shared.police,
		-- blip = {
		-- 	id = 110, colour = 84, scale = 0.5
		-- },
		inventory = {
			{ name = 'mdt',                 price = 5, },
			{ name = 'dispatch',            price = 5, },
			{ name = 'bodycam',             price = 5, },
			{ name = 'tracker',             price = 5, },




			{ name = 'ammo-9',              price = 5, },
			{ name = 'ammo-rifle',          price = 5, },
			{ name = 'WEAPON_FLASHLIGHT',   price = 200 },
			{ name = 'WEAPON_NIGHTSTICK',   price = 100 },
			{ name = 'WEAPON_PISTOL',       price = 500,  metadata = { registered = true, serial = 'POL' }, license = 'weapon' },
			{ name = 'WEAPON_CARBINERIFLE', price = 1000, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 3 },
			{ name = 'WEAPON_STUNGUN',      price = 500,  metadata = { registered = true, serial = 'POL' } }
		},
		locations = {
			vector3(-608.85, -411.8, 35.17), -- NTeam
			vector3(461.96, -1000.03, 21.51),
			vector3(607.97, -20.68, 76.63), -- Vinewood PD
			vector3(1821.086, 3667.164, 30.315), -- BCSO Sandy
			vector3(-446.8, 6016.74, 37.0), -- BCSO Paleto
			vector3(2807.29, 4729.82, 47.89), -- Highway Patrol
			vector3(386.97, 799.72, 187.46), -- Game Warden
			vector3(837.317, -1287.456, 28.245), -- Popular Secret Service
			vector3(78.69, -362.28, 41.33), -- HQ

			vector3(-1306.128, -565.326, 41.188),
			vector3(2523.732, -340.859, 101.893),
			---vector3(1551.286, 841.462, 77.656),
			vector3(-3053.903, 625.871, 7.493),
			vector3(-3161.31, 1375.33, 20.85),
			vector3(1820.796, 3666.704, 30.315),
			vector3(-448.473, 6004.804, 32.096),
			vector3(382.288, -1601.327, 25.362),
			vector3(-822.11, -716.69, 22.96),
			vector3(1843.0, 2574.532, 46.014),
			vector3(454.15, -980.105, 30.689),
			vector3(-1238.325, -2813.628, 14.3),
			vector3(-819.997, 5399.011, 35.865),
			vector3(1640.877, 4852.339, 42.613),
			vector3(1766.293, 2583.85, 46.001),
			vector3(-595.024, -100.184, 33.677),

			-- vector3(153.08, -757.41, 45.75), -- FBI
			-- vector3(-1070.35, -816.46, 15.64), -- Vesp
			-- vector3(-822.11, -717.56, 22.96), -- US Marshalls
			-- vector3(438.22, -1116.37, 30.06), -- Training Center
			-- vector3(-1238.59, -2813.7, 14.3), -- DHS Airport
			-- vector3(1696.53, 4876.39, 42.3), -- Game Warden Grapeseed
			-- vector3(479.25, -996.3, 30.69), -- MRPD DHS
			-- vector3(365.58, -1609.6, 29.29), -- Davis Street

			-- vector3(1841.63, 2573.82, 46.01), -- Prison
			-- vector3(-3053.903, 625.871, 7.493),    ---sahp

			-- vector3(1820.796, 3666.704, 30.315),
			-- vector3(-448.473, 6004.804, 32.096),
			-- vector3(382.288, -1601.327, 25.362),
			-- vector3(-822.11, -716.69, 22.96),
			-- vector3(1843.0, 2574.532, 46.014),
			-- vector3(454.15, -980.105, 30.689),
			-- vector3(-1238.325, -2813.628, 14.3),
			-- vector3(-819.997, 5399.011, 35.865),
			-- vector3(1640.877, 4852.339, 42.613),




		},
		targets = {
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(-608.85, -411.8, 35.01),
				heading = 270.84
			},
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(461.96, -1000.03, 21.51),
				heading = 357.03
			},
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(1640.877, 4852.339, 41.613),
				heading = 340.617
			},
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(-819.997, 5399.011, 34.865),
				heading = 278.491
			},
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(78.69, -362.28, 41.33),
				heading = 161.54
			},
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(2807.33, 4729.84, 47.89),
				heading = 198.9
			},
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(-1238.325, -2813.628, 13.3),
				heading = 215.241
			},
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(454.15, -980.105, 29.689),
				heading = 85.069
			},
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(1843.0, 2574.532, 45.014),
				heading = 182.37
			},
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(-822.11, -716.69, 21.96),
				heading = 115.127
			},
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(382.288, -1601.327, 26.362),
				heading = 141.871
			},
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(-448.473, 6004.804, 31.096),
				heading = 48.073
			},
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(1820.796, 3666.704, 29.315),
				heading = 305.112
			},
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(-3053.903, 625.871, 6.493),
				heading = 31.639
			},
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(1766.293, 2583.85, 46.001),
				heading = 183.561
			},
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(-595.024, -100.184, 33.677),
				heading = 208.163
			},









			--[[ {
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(1551.286, 841.462, 77.656),
				heading = 342.952
			}, ]]

			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(-1306.128, -565.326, 41.188),
				heading = 344.868
			},
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(2523.732, -340.859, 101.893),
				heading = 150.549
			},

			{
				loc = vec3(482.363, -995.165, 30.69 - 1),
				length = 0.5,
				width = 3.0,
				heading = 177.56,
				minZ = 30.45,
				maxZ = 32.50,
				distance = 6
			},
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(607.97, -20.68, 75.63),
				heading = 354.35
			},
			{
				ped = `u_m_m_doa_01`, -- Sandy Shores BCSO
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(1821.086, 3667.164, 30.315),
				heading = 115.213
			},
			{
				ped = `u_m_m_doa_01`, -- Paleto BCSO
				scenario = 'WORLD_HUMAN_CLIPBOARD',
				loc = vec3(-446.8, 6016.74, 36.0),
				heading = 150.0
			},
			{
				ped = `u_m_m_doa_01`, -- Game Warden
				scenario = 'WORLD_HUMAN_STAND_IMPATIENT',
				loc = vec3(1553.86, 839.99, 76.66),
				heading = 148.71
			},
			{
				ped = `u_m_m_doa_01`, -- Game Warden
				scenario = 'WORLD_HUMAN_STAND_IMPATIENT',
				loc = vec3(386.97, 799.72, 186.46),
				heading = 60.0
			},
			{
				ped = `u_m_m_doa_01`, -- Game Warden
				scenario = 'WORLD_HUMAN_STAND_IMPATIENT',
				loc = vec3(836.76, -1287.34, 27.24),
				heading = 278.12
			},
			-- Add more ped targets as needed for other locations
		}

	},

	Medicine = {
		name = 'Medicine Cabinet',
		groups = {
			['ambulance'] = 0
		},
		-- blip = {
		-- 	id = 403, colour = 69, scale = 0.5
		-- },
		inventory = {
			{ name = 'medikit', price = 26 },
			{ name = 'bandage', price = 5 }
		},
		locations = {
			vec3(306.3687, -601.5139, 43.28406)
		},
		targets = {

		}
	},

	BlackMarketArms = {
		name = 'Black Market (Arms)',
		inventory = {
			{ name = 'contracts_tablet',     price = 2600 },
			--{ name = 'contracts_tablet', price = 2000, metadata = { registered = false	}, currency = 'black_money' },
			{ name = 'WEAPON_DAGGER',        price = 5000,  metadata = { registered = false }, currency = 'black_money' },
			{ name = 'WEAPON_CERAMICPISTOL', price = 50000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'at_suppressor_light',  price = 50000, currency = 'black_money' },
			{ name = 'ammo-rifle',           price = 1000,  currency = 'black_money' },
			{ name = 'ammo-rifle2',          price = 1000,  currency = 'black_money' }
		},
		locations = {
			vec3(309.38, -913.91, 56.01),
			vec3(3310.69, 5176.52, 19.01)
		},
		targets = {
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(309.38, -913.91, 56.01),
				heading = 95.03
			},
			{
				ped = `u_m_m_doa_01`,
				scenario = 'WORLD_HUMAN_AA_COFFEE',
				loc = vec3(3310.69, 5176.52, 19.01),
				heading = 237.94
			}

		}
	},

	VendingMachineDrinks = {
		name = 'Vending Machine',
		inventory = {
			{ name = 'water', price = 10 },
			{ name = 'cola',  price = 10 },
		},
		model = {
			`prop_vend_soda_02`, `prop_vend_fridge01`, `prop_vend_water_01`, `prop_vend_soda_01`
		}
	}
}
