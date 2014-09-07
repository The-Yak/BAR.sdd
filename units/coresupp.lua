return {
	coresupp = {
		acceleration = 0.071999996900558,
		activatewhenbuilt = true,
		brakerate = 0.018999999389052,
		buildangle = 16384,
		buildcostenergy = 2294,
		buildcostmetal = 294,
		buildpic = "CORESUPP.DDS",
		buildtime = 6660,
		canmove = true,
		category = "ALL WEAPON SHIP NOTSUB NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 5 -1",
		collisionvolumescales = "31 31 75",
		collisionvolumetest = 1,
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Corvette",
		energymake = 3,
		explodeas = "BIG_UNITEX",
		floater = true,
		footprintx = 3,
		footprintz = 3,
		icontype = "sea",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1700,
		maxvelocity = 3.2000000476837,
		minwaterdepth = 12,
		movementclass = "BOAT4",
		name = "Supporter",
		nochasecategory = "UNDERWATER VTOL",
		objectname = "CORESUPP.s3o",
		seismicsignature = 0,
		selfdestructas = "BIG_UNIT",
		sightdistance = 429,
		turninplace = 0,
		turnrate = 528,
		waterline = 3,
		windgenerator = 0.0010000000474975,
		customparams = {
			normalmaps = "yes",
			normaltex = "unittextures/Core_normal.dds",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "2.05702972412 -6.65740128174 -1.55792999268",
				collisionvolumescales = "37.2419281006 12.2129974365 67.4956207275",
				collisionvolumetype = "Box",
				damage = 150,
				description = "Supporter Wreckage",
				energy = 0,
				featurereclamate = "SMUDGE01",
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 191,
				object = "CORESUPP_DEAD.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 250,
				description = "Supporter Heap",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 91,
				object = "cor4x4b.s3o",
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
				[1] = "shcormov",
			},
			select = {
				[1] = "shcorsel",
			},
		},
		weapondefs = {
			corvette_lightlaser_front = {
				areaofeffect = 12,
				beamtime = 0.16,
				corethickness = 0.175,
				craterboost = 0,
				cratermult = 0,
				energypershot = 5,
				explosiongenerator = "custom:SMALL_RED_BURN",
				firestarter = 30,
				impactonly = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				laserflaresize = 8,
				name = "LightLaser",
				noselfdamage = true,
				range = 320,
				reloadtime = 0.7,
				rgbcolor = "1 0 0",
				soundstart = "lasrfir3",
				soundtrigger = true,
				targetmoveerror = 0.1,
				thickness = 2.2,
				tolerance = 10000,
				turret = true,
				minintensity=0.7;
				weapontype = "BeamLaser",
				weaponvelocity = 2250,
				damage = {
					bombers = 5,
					commanders = 70,
					default = 52,
					fighters = 5,
					subs = 3,
					vtol = 5,
				},
			},
			corvette_lightlaser_rear = {
				areaofeffect = 12,
				beamtime = 0.16,
				corethickness = 0.175,
				craterboost = 0,
				cratermult = 0,
				energypershot = 5,
				explosiongenerator = "custom:SMALL_RED_BURN",
				firestarter = 30,
				impactonly = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				laserflaresize = 8,
				name = "LightLaser",
				noselfdamage = true,
				range = 320,
				reloadtime = 0.73,
				rgbcolor = "1 0 0",
				soundstart = "lasrfir3",
				soundtrigger = true,
				targetmoveerror = 0.1,
				thickness = 2.2,
				tolerance = 10000,
				turret = true,
				minintensity=0.6;
				weapontype = "BeamLaser",
				weaponvelocity = 2250,
				damage = {
					bombers = 5,
					commanders = 70,
					default = 52,
					fighters = 5,
					subs = 3,
					vtol = 5,
				},
			},
		},
		weapons = {
			[1] = {
				def = "CORVETTE_LIGHTLASER_FRONT",
				onlytargetcategory = "NOTSUB",
			},
			[2] = {
				def = "CORVETTE_LIGHTLASER_REAR",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
