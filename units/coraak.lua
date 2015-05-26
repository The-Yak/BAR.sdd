return {
	coraak = {
		acceleration = 0.12,
		airsightdistance = 925,
		brakerate = 0.564,
		buildcostenergy = 5814,
		buildcostmetal = 608,
		buildpic = "CORAAK.DDS",
		buildtime = 7581,
		canmove = true,
		category = "KBOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE",
		corpse = "DEAD",
		description = "Heavy Amphibious Anti-Air Kbot",
		explodeas = "BIG_UNITEX",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1280,
		maxvelocity = 1.15,
		movementclass = "AKBOT2",
		name = "Manticore",
		nochasecategory = "ALL",
		objectname = "CORAAK.s3o",
		script = "coraak.lua",
		seismicsignature = 1,
		selfdestructas = "BIG_UNIT",
		sightdistance = 390,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0.759,
		turnrate = 912,
		upright = true,
		customparams = {
			normalmaps = "yes",
			normaltex = "unittextures/Core_normal.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "1.21222686768 -2.24119818115 -5.60705566406",
				collisionvolumescales = "38.4586334229 17.0406036377 34.7582092285",
				collisionvolumetype = "Box",
				damage = 1548,
				description = "Manticore Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 15,
				hitdensity = 100,
				metal = 395,
				object = "CORAAK_DEAD.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 774,
				description = "Manticore Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 4,
				hitdensity = 100,
				metal = 158,
				object = "cor4X4A.s3o",
				reclaimable = true,
				resurrectable = 0,
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
				[1] = "kbcormov",
			},
			select = {
				[1] = "kbcorsel",
			},
		},
		weapondefs = {
			aakflak = {
				accuracy = 1000,
				areaofeffect = 128,
				avoidfeature = false,
				burnblow = true,
				canattackground = false,
				craterareaofeffect = 128,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				edgeeffectiveness = 0.85,
				gravityaffected = "true",
				impulseboost = 0,
				impulsefactor = 0,
				name = "FlakCannon",
				noselfdamage = true,
				range = 680,
				reloadtime = 5.5,
				rgbcolor = "1, 0.5, 0",
				size = 1.4,
				soundhit = "flakhit",
				soundhitvolume = 9,
				soundhitwet = "splsmed",
				soundhitwetvolume = 0.5,
				soundstart = "flakfire",
				soundstartvolume = 7,
				toairweapon = true,
				turret = true,
				weapontimer = 1,
				weapontype = "Cannon",
				weaponvelocity = 1500,
				damage = {
					bombers = 200,
					commanders = 10,
					crawlingbombs = 10,
					default = 1000,
					fighters = 200,
					heavyunits = 10,
					mines = 10,
					nanos = 10,
					subs = 5,
					vtol = 200,
				},
			},
			bogus_missile = {
				areaofeffect = 48,
				avoidfeature = false,
				canattackground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				name = "Missiles",
				range = 800,
				reloadtime = 0.5,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				startvelocity = 450,
				toairweapon = true,
				tolerance = 9000,
				turnrate = 33000,
				turret = true,
				weaponacceleration = 101,
				weapontimer = 0.1,
				weapontype = "Cannon",
				weaponvelocity = 650,
				damage = {
					default = 0,
				},
			},
			coraakbot_missile1 = {
				areaofeffect = 24,
				avoidfeature = false,
				canattackground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH2",
				firestarter = 70,
				flighttime = 3,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "cormissile.s3o",
				name = "Missiles",
				noselfdamage = true,
				range = 790,
				reloadtime = 1.3,
				smoketrail = true,
				soundhit = "xplosml2",
				soundhitvolume = 7.5,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "rocklit1",
				soundstartvolume = 7.5,
				startvelocity = 650,
				texture2 = "coresmoketrail",
				toairweapon = true,
				tolerance = 9000,
				tracks = true,
				turnrate = 36000,
				turret = true,
				weaponacceleration = 141,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 850,
				damage = {
					default = 30,
					subs = 5,
				},
			},
			coraakbot_missile2 = {
				areaofeffect = 24,
				avoidfeature = false,
				canattackground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH2",
				firestarter = 70,
				flighttime = 3,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "cormissile.s3o",
				name = "Missiles",
				noselfdamage = true,
				range = 780,
				reloadtime = 1.6,
				smoketrail = true,
				soundhit = "xplosml2",
				soundhitvolume = 7.5,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "rocklit1",
				soundstartvolume = 7.5,
				startvelocity = 650,
				texture2 = "coresmoketrail",
				toairweapon = true,
				tolerance = 9000,
				tracks = true,
				turnrate = 36000,
				turret = true,
				weaponacceleration = 141,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 850,
				damage = {
					default = 30,
					subs = 5,
				},
			},
			coraakbot_missile3 = {
				areaofeffect = 24,
				avoidfeature = false,
				canattackground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH2",
				firestarter = 70,
				flighttime = 3,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "cormissile.s3o",
				name = "Missiles",
				noselfdamage = true,
				range = 770,
				reloadtime = 1.9,
				smoketrail = true,
				soundhit = "xplosml2",
				soundhitvolume = 7.5,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "rocklit1",
				soundstartvolume = 7.5,
				startvelocity = 650,
				texture2 = "coresmoketrail",
				toairweapon = true,
				tolerance = 9000,
				tracks = true,
				turnrate = 36000,
				turret = true,
				weaponacceleration = 141,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 850,
				damage = {
					default = 30,
					subs = 5,
				},
			},
			coraakbot_missile4 = {
				areaofeffect = 64,
				avoidfeature = false,
				canattackground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH2",
				firestarter = 70,
				flighttime = 3,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "cormissile.s3o",
				name = "Missiles",
				noselfdamage = true,
				range = 850,
				reloadtime = 3.25,
				smoketrail = true,
				soundhit = "xplosml2",
				soundhitvolume = 7.5,
				soundhitwet = "splssml",
				soundhitwetvolume = 0.5,
				soundstart = "rocklit1",
				soundstartvolume = 7.5,
				startvelocity = 500,
				texture2 = "coresmoketrail",
				toairweapon = true,
				tolerance = 9000,
				tracks = true,
				turnrate = 99000,
				turret = true,
				weaponacceleration = 150,
				weapontimer = 6,
				weapontype = "MissileLauncher",
				weaponvelocity = 1100,
				damage = {
					default = 75,
					subs = 5,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "LIGHTAIRSCOUT",
				def = "BOGUS_MISSILE",
				onlytargetcategory = "VTOL",
			},
			[2] = {
				badtargetcategory = "LIGHTAIRSCOUT",
				def = "CORAAKBOT_MISSILE3",
				onlytargetcategory = "VTOL",
				slaveto = 1,
			},
			[3] = {
				badtargetcategory = "LIGHTAIRSCOUT",
				def = "CORAAKBOT_MISSILE1",
				onlytargetcategory = "VTOL",
				slaveto = 1,
			},
			[4] = {
				badtargetcategory = "LIGHTAIRSCOUT",
				def = "CORAAKBOT_MISSILE2",
				onlytargetcategory = "VTOL",
				slaveto = 1,
			},
			[5] = {
				badtargetcategory = "LIGHTAIRSCOUT",
				def = "CORAAKBOT_MISSILE1",
				onlytargetcategory = "VTOL",
				slaveto = 1,
			},
			[6] = {
				badtargetcategory = "LIGHTAIRSCOUT",
				def = "CORAAKBOT_MISSILE2",
				onlytargetcategory = "VTOL",
				slaveto = 1,
			},
			[7] = {
				badtargetcategory = "LIGHTAIRSCOUT",
				def = "CORAAKBOT_MISSILE3",
				onlytargetcategory = "VTOL",
				slaveto = 1,
			},
			[8] = {
				badtargetcategory = "LIGHTAIRSCOUT",
				def = "CORAAKBOT_MISSILE4",
				onlytargetcategory = "VTOL",
				slaveto = 1,
			},
			[9] = {
				badtargetcategory = "LIGHTAIRSCOUT",
				def = "CORAAKBOT_MISSILE4",
				onlytargetcategory = "VTOL",
				slaveto = 1,
			},
			[10] = {
				badtargetcategory = "LIGHTAIRSCOUT",
				def = "AAKFLAK",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
