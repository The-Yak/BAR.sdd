return {
	corbats = {
		acceleration = 0.029999999329448,
		brakerate = 0.025000000372529,
		buildangle = 16384,
		buildcostenergy = 21941,
		buildcostmetal = 5404,
		buildpic = "CORBATS.DDS",
		buildtime = 60640,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON SHIP NOTSUB NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 -15 -2",
		collisionvolumescales = "75 75 139",
		collisionvolumetest = 1,
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Battleship",
		energymake = 46,
		energyuse = 44,
		explodeas = "BIG_UNITEX",
		floater = true,
		footprintx = 6,
		footprintz = 6,
		icontype = "sea",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 16685,
		maxvelocity = 2.6400001049042,
		minwaterdepth = 15,
		movementclass = "DBOAT6",
		name = "Warlord",
		nochasecategory = "VTOL",
		objectname = "CORBATS.s3o",
		seismicsignature = 0,
		selfdestructas = "BIG_UNIT",
		sightdistance = 455,
		turnrate = 306,
		waterline = 4,
		windgenerator = 0.0010000000474975,
		customparams = {
			normalmaps = "yes",
			normaltex = "unittextures/Core_normal.dds",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "23.5594024658 -0.0818865356445 0.388328552246",
				collisionvolumescales = "86.1555786133 65.6982269287 150.99382019",
				collisionvolumetype = "Box",
				damage = 6831,
				description = "Warlord Wreckage",
				energy = 0,
				featuredead = "HEAP",
				footprintx = 6,
				footprintz = 6,
				height = 4,
				hitdensity = 100,
				metal = 3513,
				object = "CORBATS_DEAD.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 2016,
				description = "Warlord Heap",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 1066,
				object = "cor6x6c.s3o",
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
			cor_bats = {
				accuracy = 400,
				areaofeffect = 96,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH96",
				gravityaffected = "true",
				impulseboost = 0.12300000339746,
				impulsefactor = 0.12300000339746,
				name = "BattleshipCannon",
				noselfdamage = true,
				range = 1320,
				reloadtime = 0.5,
				soundhit = "xplomed2",
				soundstart = "cannhvy1",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 422.1374206543,
				damage = {
					bombers = 65,
					default = 450,
					fighters = 65,
					subs = 5,
					vtol = 65,
				},
			},
			core_batslaser = {
				areaofeffect = 8,
				beamtime = 0.20000000298023,
				corethickness = 0.20000000298023,
				craterboost = 0,
				cratermult = 0,
				energypershot = 125,
				explosiongenerator = "custom:SMALL_GREEN_LASER_BURN",
				firestarter = 90,
				impactonly = 1,
				impulseboost = 0.12300000339746,
				impulsefactor = 0.12300000339746,
				laserflaresize = 15,
				name = "HighEnergyLaser",
				noselfdamage = true,
				range = 950,
				reloadtime = 1.1000000238419,
				rgbcolor = "0 1 0",
				soundstart = "Lasrmas2",
				targetmoveerror = 0.20000000298023,
				thickness = 3,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 700,
				damage = {
					bombers = 65,
					default = 300,
					fighters = 65,
					subs = 5,
					vtol = 65,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "COR_BATS",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				def = "CORE_BATSLASER",
				maindir = "0 0 1",
				maxangledif = 350,
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
