return {
	armmex = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 8192,
		buildcostenergy = 521,
		buildcostmetal = 50,



		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "48 80 48",
		collisionvolumetest = 1,
		collisionvolumetype = "CylY",
		buildpic = "ARMMEX.DDS",
		buildtime = 1800,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE",
		corpse = "DEAD",
		description = "Extracts Metal",
		explodeas = "TINY_BUILDINGEX",
		extractsmetal = 0.001,
		footprintx = 3,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 170,
		maxslope = 20,
		maxwaterdepth = 20,
		metalstorage = 50,
		name = "Metal Extractor",
		objectname = "ARMMEX.s3o",
		onoffable = true,
		seismicsignature = 0,
		selfdestructas = "TINY_BUILDINGEX",
		selfdestructcountdown = 1,
		sightdistance = 273,

		yardmap = "ooooooooo",
		customparams = {
			normalmaps = "yes",
			normaltex = "unittextures/Arm_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.510162353516 -0.044793737793 0.21223449707",
				collisionvolumescales = "52.280090332 25.2522125244 52.9224243164",
				collisionvolumetype = "Box",
				damage = 102,
				description = "Metal Extractor Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 33,
				object = "armmex_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 51,
				description = "Metal Extractor Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 13,
				object = "arm3x3b.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sounds = {
			activate = "mexrun1",
			canceldestruct = "cancel2",
			deactivate = "mexoff1",
			underattack = "warning1",
			working = "mexrun1",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "servmed2",
			},
			select = {
				[1] = "mexon1",
			},
		},
		buildingGroundDecalDecaySpeed=30,
	buildingGroundDecalSizeX=5,
	buildingGroundDecalSizeY=5,
	useBuildingGroundDecal = true,
	buildingGroundDecalType=[[armmex_aoplane.dds]],},
}
