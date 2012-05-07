return {
	gorg = {
		acceleration = 0.048000000417233,
		brakerate = 0.125,
		buildcostenergy = 481165,
		buildcostmetal = 18705,
		buildpic = "GORG.DDS",
		buildtime = 629630,
		canmove = true,
		category = "KBOT WEAPON ALL NOTSUB NOTAIR",
		collisionvolumeoffsets = "0 -12 5",
		collisionvolumescales = "98 96 97",
		collisionvolumetest = 1,
		collisionvolumetype = "Ell",
		corpse = "DEAD",
		description = "(barely) Mobile Heavy Turret",
		energymake = 35,
		energystorage = 350,
		explodeas = "CRAWL_BLASTSML",
		footprintx = 5,
		footprintz = 5,
		idleautoheal = 40,
		idletime = 1800,
		mass = 2000000,
		maxdamage = 300000,
		maxslope = 14,
		maxvelocity = 0.55000001192093,
		maxwaterdepth = 12,
		movementclass = "HKBOT5",
		name = "Juggernaut",
		nochasecategory = "VTOL",
		objectname = "gorg.s3o",
		script = "gorg_script7.lua",
		seismicsignature = 0,
		selfdestructas = "CRAWL_BLAST",
		sightdistance = 720,
		smoothanim = true,
		turnrate = 109,
		customparams = {
			normaltex = "unittextures/Core_normal.tga",
			normalmaps = "yes",
			paralyzemultiplier = 0,
		},
		featuredefs = {
			dead = {
				blocking = true,
				collisionvolumetype = "Box",
				collisionvolumescales = "105.219192505 63.5703582764 119.881469727",
				collisionvolumeoffsets = "-0.35619354248 -4.26102086182 -1.35372924805",
				category = "corpses",
				damage = 27000,
				description = "Juggernaut Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 8,
				hitdensity = 100,
				metal = 13959,
				object = "GORG_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 13500,
				description = "Juggernaut Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 2,
				hitdensity = 100,
				metal = 2793,
				object = "4X4A",
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
				[1] = "doom",
			},
			select = {
				[1] = "doom",
			},
		},
		weapondefs = {
			gorg_bottom = {
				areaofeffect = 12,
				beamtime = 0.08,
				corethickness = 0.17499999701977,
				craterboost = 0,
				cratermult = 0,
				energypershot = 10,
				explosiongenerator = "custom:SMALL_RED_BURN",
				firestarter = 30,
				impactonly = 1,
				impulseboost = 0.12300000339746,
				impulsefactor = 0.12300000339746,
				laserflaresize = 10,
				name = "LightLaser",
				noselfdamage = true,
				proximitypriority = 1.5,
				range = 435,
				reloadtime = 0.3,
				rgbcolor = "1 0 0",
				soundhit = "lasrhit2",
				soundstart = "lasrfir3",
				soundtrigger = true,
				targetmoveerror = 0.10000000149012,
				thickness = 2.5,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 2250,
				damage = {
					default = 75,
					subs = 3,
				},
			},
			gorg_top = {
				areaofeffect = 12,
				beamtime = 0.15,
				corethickness = 0.20000000298023,
				craterboost = 0,
				cratermult = 0,
				energypershot = 15,
				explosiongenerator = "custom:SMALL_RED_BURN",
				firestarter = 70,
				impactonly = 1,
				impulseboost = 0.12300000339746,
				impulsefactor = 0.12300000339746,
				laserflaresize = 11,
				name = "LightLaser",
				noselfdamage = true,
				proximitypriority = -1.5,
				range = 550,
				reloadtime = 0.47999998927116,
				rgbcolor = "1 0 0",
				soundhit = "lasrhit2",
				soundstart = "lasrfir3",
				soundtrigger = true,
				targetmoveerror = 0.10000000149012,
				thickness = 3,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 2250,
				damage = {
					default = 150,
					subs = 3,
				},
			},
			juggernaut_fire = {
				areaofeffect = 48,
				avoidfeature = false,
				color = 2,
				craterboost = 0,
				cratermult = 0,
				impulseboost = 0.12300000339746,
				impulsefactor = 0.12300000339746,
				name = "GaussCannon",
				noexplode = true,
				noselfdamage = true,
				range = 590,
				reloadtime = 1,
				soundhit = "xplomed2",
				soundstart = "Krogun1",
				turret = true,
				weapontype = "EmgCannon",
				weaponvelocity = 530,
				damage = {
					default = 300,
					subs = 5,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "JUGGERNAUT_FIRE",
				onlytargetcategory = "NOTAIR",
			},
			[2] = {
				def = "GORG_TOP",
				maindir = "0 1 0",
				maxangledif = 270,
				badtargetcategory = "VTOL",
			},
			[3] = {
				def = "GORG_BOTTOM",
				maindir = "-1 0 4",
				maxangledif = 90,
				onlytargetcategory = "NOTAIR",
			},
			[4] = {
				def = "GORG_BOTTOM",
				maindir = "1 0 4",
				maxangledif = 90,
				onlytargetcategory = "NOTAIR",
			},
			
		},
	},
}
