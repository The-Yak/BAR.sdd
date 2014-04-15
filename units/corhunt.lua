return {
	corhunt = {
		acceleration = 0.06,
		brakerate = 0.0375,
		buildcostenergy = 6421,
		buildcostmetal = 122,
		buildpic = "CORHUNT.DDS",
		buildtime = 9512,
		canfly = true,
		canmove = true,
		cansubmerge = true,
		category = "ALL ANTIEMG NOTLAND MOBILE NOTSUB ANTIFLAME ANTILASER VTOL NOWEAPON NOTSHIP NOTHOVER",
		collide = false,
		cruisealt = 190,
		description = "Advanced Radar/Sonar Plane",
		energymake = 15,
		energyuse = 15,
		explodeas = "BIG_UNITEX",
		footprintx = 3,
		footprintz = 3,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 660,
		maxslope = 10,
		maxvelocity = 10.810000419617,
		maxwaterdepth = 255,
		name = "Hunter",
		objectname = "CORHUNT.s3o",
		radardistance = 2200,
		seismicsignature = 0,
		selfdestructas = "BIG_UNIT_AIR",
		sightdistance = 1130,
		sonardistance = 900,
		turnrate = 450,
		customparams = {
			normalmaps = "yes",
			normaltex = "unittextures/Core_normal.dds",
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			repair = "repair1",
			underattack = "warning1",
			working = "reclaim1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "seasonr2",
			},
		},
	},
}
