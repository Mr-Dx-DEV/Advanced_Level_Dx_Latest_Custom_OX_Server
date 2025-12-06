return {
	{     ------ NTeam PD
		coords = vec3(452.36, -998.57, 30.83),
		target = {
			loc = vec3(452.36, -998.57, 30.83),
			length = 2.2,
			width = 2.2,
			heading = 358.93,
			minZ = 29.01,
			maxZ = 31.90,
			label = 'Open personal locker'
		},
		name = 'policelocker',
		label = 'Personal locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = shared.police
	},
	

	{
		coords = vec3(301.3, -600.23, 43.28),
		target = {
			loc = vec3(301.82, -600.99, 43.29),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Open personal locker'
		},
		name = 'emslocker',
		label = 'Personal Locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['ambulance'] = 0}
	},
}
