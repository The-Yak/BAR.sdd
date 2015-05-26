return {
	commando = {
		acceleration = 0.35,
		activatewhenbuilt = true,
		autoheal = 9,
		brakerate = 1.5,
		buildcostenergy = 14352,
		buildcostmetal = 1126,
		builddistance = 275,
		builder = true,
		buildpic = "COMMANDO.DDS",
		buildtime = 17131,
		canassist = true,
		canmove = true,
		canreclaim = true,
		canrepair = true,
		canrestore = false,
		category = "ALL MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0.0 7.0 0.0",
		collisionvolumescales = "36.0 45.0 30.0",
		collisionvolumetype = "box",
		description = "Stealthy Paratrooper K-bot",
		energymake = 10,
		energystorage = 20,
		explodeas = "MINE_LIGHT",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 9,
		idletime = 900,
		maxdamage = 1400,
		maxslope = 20,
		maxvelocity = 2.5,
		movementclass = "AKBOT2",
		name = "Commando",
		nochasecategory = "VTOL",
		objectname = "COMMANDO.s3o",
		radardistance = 900,
		radardistancejam = 150,
		seismicsignature = 4,
		selfdestructas = "MINE_MEDIUM",
		sightdistance = 600,
		turninplace = 0,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.65,
		turnrate = 1016,
		upright = true,
		workertime = 200,
		buildoptions = {
			[1] = "corvalk",
			[2] = "corfink",
			[3] = "cormine4",
			[4] = "cormaw",
			[5] = "cordrag",
			[6] = "coreyes",
			[7] = "corjamt",
		},
		customparams = {
			normalmaps = "yes",
			normaltex = "unittextures/Core_normal.dds",
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
			capture = "capture2",
			repair = "repair2",
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
				[1] = "kbcormov",
			},
			select = {
				[1] = "kbcorsel",
			},
		},
		weapondefs = {
			commando_blaster = {
				accuracy = 120,
				areaofeffect = 70,
				avoidfeature = false,
				craterareaofeffect = 70,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:CORE_FIRE_SMALL",
				firestarter = 100,
				gravityaffected = "true",
				impulseboost = 0,
				impulsefactor = 0,
				name = "CommandoBlaster",
				noselfdamage = true,
				predictboost = 0.5,
				proximitypriority = -10,
				range = 300,
				reloadtime = 0.5,
				rgbcolor = "0.85,0.3,0.2",
				soundhit = "xplosml3",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "canlite3",
				turret = true,
				weapontype = "LaserCannon",
				weaponvelocity = 310,
				damage = {
					default = 100,
				},
			},
			commando_minelayer = {
				areaofeffect = 40,
				avoidfeature = false,
				burnblow = true,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:NONE",
				firestarter = 0,
				gravityaffected = "true",
				impulseboost = 0,
				impulsefactor = 0,
				name = "CommandoMineLayer",
				noselfdamage = true,
				predictboost = 1,
				proximitypriority = -10,
				range = 310,
				reloadtime = 1.5,
				rgbcolor = "1 0 0",
				size = 0.0001,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 1200,
				damage = {
					default = 5,
				},
			},
		},
		weapons = {
			[1] = {
				def = "COMMANDO_BLASTER",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				def = "COMMANDO_MINELAYER",
				onlytargetcategory = "NOTAIR NOTSHIP NOTSUB NOTSUB",
			},
		},
	},
}
