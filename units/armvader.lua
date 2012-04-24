return {
	armvader = {
		acceleration = 0.13199999928474,
		activatewhenbuilt = true,
		brakerate = 0.16200000047684,
		buildcostenergy = 5473,
		buildcostmetal = 61,
		buildpic = "ARMVADER.DDS",
		buildtime = 7901,
		canmove = true,
		category = "KBOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER",
		corpse = "CORPSE",
		description = "Amphibious Crawling Bomb",
		energymake = 0.10000000149012,
		energyuse = 0.10000000149012,
		explodeas = "CRAWL_BLASTSML",
		firestate = 2,
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5 ,
		idletime = 1800 ,
		mass = 1500,
		maxdamage = 400,
		maxslope = 32,
		maxvelocity = 2.7999999523163,
		maxwaterdepth = 112,
		movementclass = "AKBOT2",
		name = "Invader",
		nochasecategory = "VTOL",
		objectname = "ARMVADER",
		seismicsignature = 0,
		selfdestructas = "CRAWL_BLAST",
		selfdestructcountdown = 0,
		sightdistance = 273,
		smoothanim = true,
		turninplace = 0,
		turnrate = 1540,
		featuredefs = {
			corpse = {
				blocking = true,
				category = "corpses",
				damage = 148,
				description = "Invader Wreckage",
				featuredead = "HEAP",
				footprintx = 1,
				footprintz = 1,
				height = 20,
				hitdensity = 100,
				metal = 49,
				object = "ARMVADER_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 148,
				description = "Invader Heap",
				footprintx = 1,
				footprintz = 1,
				height = 4,
				hitdensity = 100,
				metal = 12,
				object = "1X1B",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
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
				[1] = "servsml5",
			},
			select = {
				[1] = "servsml5",
			},
		},
		weapondefs = {
			crawl_detonator = {
				areaofeffect = 5,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0,
				explosiongenerator = "",
				firesubmersed = true,
				gravityaffected = "true",
				impulseboost = 0,
				impulsefactor = 0,
				name = "Mine Detonator",
				range = 1,
				reloadtime = 0.10000000149012,
				weapontype = "Cannon",
				weaponvelocity = 1000,
				damage = {
					crawlingbombs = 1000,
					default = 0,
				},
			},
			crawl_dummy = {
				areaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0,
				explosiongenerator = "",
				firesubmersed = true,
				impulseboost = 0,
				impulsefactor = 0,
				name = "Crawlingbomb Dummy Weapon",
				range = 80,
				reloadtime = 0.10000000149012,
				tolerance = 100000,
				weapontype = "Melee",
				weaponvelocity = 100000,
				damage = {
					default = 0,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "CRAWL_DUMMY",
				onlytargetcategory = "NOTAIR",
			},
			[2] = {
				def = "CRAWL_DETONATOR",
			},
		},
	},
}
