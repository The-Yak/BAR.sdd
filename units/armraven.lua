return {
	armraven = {
		acceleration = 0.10800000280142,
		brakerate = 0.1879999935627,
		buildcostenergy = 75625,
		buildcostmetal = 4551,
		buildpic = "ARMRAVEN.DDS",
		buildtime = 126522,
		canmove = true,
		category = "WEAPON NOTSUB NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 0 2",
		collisionvolumescales = "60 53 30",
		collisionvolumetest = 1,
		collisionvolumetype = "box",
		corpse = "DEAD",
		description = "Heavy Rocket Kbot",
		explodeas = "MECH_BLAST",
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		mass = 200000,
		maxdamage = 5500,
		maxslope = 20,
		maxvelocity = 1.6000000238419,
		maxwaterdepth = 12,
		movementclass = "HKBOT4",
		name = "Catapult",
		nochasecategory = "VTOL",
		objectname = "ARMRAVEN.s3o",
		seismicsignature = 0,
		selfdestructas = "MECH_BLAST",
		sightdistance = 700,
		smoothanim = true,
		turnrate = 979,
		upright = true,
		customparams = {
			normalmaps = "yes",
			normaltex = "unittextures/Core_normal.tga",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "3.19359588623 0.0 1.04564666748",
				collisionvolumescales = "66.3871917725 26.0 41.4744720459",
				collisionvolumetype = "Box",
				damage = 3300,
				description = "Catapult Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 40,
				hitdensity = 100,
				metal = 2958,
				object = "ARMRAVEN_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 1650,
				description = "Catapult Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 1183,
				object = "3X3C",
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
				[1] = "mavbok1",
			},
			select = {
				[1] = "mavbsel1",
			},
		},
		weapondefs = {
			exp_heavyrocket = {
				areaofeffect = 96,
				avoidfeature = false,
				burst = 20,
				burstrate = 0.11999999731779,
				craterboost = 0,
				cratermult = 0,
				dance = 30,
				edgeeffectiveness = 0.5,
				explosiongenerator = "custom:MEDMISSILE_EXPLOSION",
				firestarter = 70,
				flighttime = 3,
				impulseboost = 0.12300000339746,
				impulsefactor = 0.12300000339746,
				metalpershot = 0,
				model = "catapultmissile.s3o",
				movingaccuracy = 600,
				name = "RavenCatapultRockets",
				noselfdamage = true,
				proximitypriority = -1,
				range = 1350,
				reloadtime = 15,
				smoketrail = true,
				soundhit = "rockhit",
				soundstart = "rapidrocket3",
				startvelocity = 200,
				texture2 = "coresmoketrail",
				trajectoryheight = 1,
				turnrate = 0,
				turret = true,
				weaponacceleration = 120,
				weapontimer = 6,
				weapontype = "MissileLauncher",
				weaponvelocity = 510,
				wobble = 2000,
				damage = {
					default = 450,
					subs = 5,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "EXP_HEAVYROCKET",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
