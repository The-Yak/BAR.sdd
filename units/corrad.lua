return {
	corrad = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 16384,
		buildcostenergy = 600,
		buildcostmetal = 54,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 4,
		buildinggrounddecalsizey = 4,
		buildinggrounddecaltype = "corrad_aoplane.dds",
		buildpic = "CORRAD.DDS",
		buildtime = 1137,
		canattack = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 -12 0",
		collisionvolumescales = "32 99 32",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Early Warning System",
		energymake = 4,
		energyuse = 4,
		explodeas = "SMALL_BUILDINGEX",
		footprintx = 2,
		footprintz = 2,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 72,
		maxdamage = 81,
		maxslope = 10,
		maxwaterdepth = 0,
		name = "Radar Tower",
		objectname = "CORRAD.s3o",
		onoffable = true,
		radardistance = 2100,
		radaremitheight = 72,
		seismicsignature = 0,
		selfdestructas = "SMALL_BUILDING",
		sightdistance = 680,
		usebuildinggrounddecal = true,
		yardmap = "oooo",
		customparams = {
			normalmaps = "yes",
			normaltex = "unittextures/Core_normal.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.353988647461 -0.0323567626953 1.37395477295",
				collisionvolumescales = "34.8413696289 57.1648864746 30.8629608154",
				collisionvolumetype = "Box",
				damage = 49,
				description = "Radar Tower Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 36,
				object = "CORRAD_DEAD.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 25,
				description = "Radar Tower Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 14,
				object = "cor2x2d.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sounds = {
			activate = "radar1",
			canceldestruct = "cancel2",
			deactivate = "radarde1",
			underattack = "warning1",
			working = "radar2",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "radar2",
			},
		},
	},
}
