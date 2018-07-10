as yet unclassified
initializeECS

	| player spawn1 spawn2 bush block1 |
	super initializeECS.
	
	player := self addEntityNamed: 'Player'.
	player addComponent: ECSPositionComponent withStandardValues.
	player addComponent: ECSPictureComponent withStandardValues.
	player addComponent: ECSHealthComponent withStandardValues.
	player addComponent: (ECSCollisionComponent withStandardValues collisionTags: #(solid)).
	player addComponent: ECSMotionComponent withStandardValues.
	player addComponent: ECSInputComponent withStandardValues.
	player addComponent: ECSShootComponent withStandardValues.
	player addComponent: ECSTeleportComponent withStandardValues.
	player pictureComponent picturePath: (FileDirectory default pathName,  '/wizard.png').
	player positionComponent position: 200@200.
	player teleportComponent teleportArea: 750@400.
	
	block1 := self addEntityNamed: 'Block1'.
	block1 addComponent: ECSPositionComponent withStandardValues.
	block1 addComponent: ECSPictureComponent withStandardValues.
	block1 addComponent: (ECSCollisionComponent withStandardValues collisionTags: #(solid)).
	block1 pictureComponent picturePath: (FileDirectory default pathName,  '/stonewall.png').
	block1 positionComponent position: 50@200.
	
	spawn1 := self addEntityNamed: 'Spawn1'.
	spawn1 addComponent: ECSPositionComponent withStandardValues.
	spawn1 addComponent: ECSSpawnComponent withStandardValues.
	spawn1 spawnComponent followId: player entityId.
	spawn1 positionComponent position: (-100)@(-100).
	
	spawn2 := self addEntityNamed: 'Spawn2'.
	spawn2 addComponent: ECSPositionComponent withStandardValues.
	spawn2 addComponent: ECSSpawnComponent withStandardValues.
	spawn2 spawnComponent followId: player entityId.
	spawn2 positionComponent position: (850)@(500).
	
	bush := self addEntityNamed: 'Bush'.
	bush addComponent: ECSPositionComponent withStandardValues.
	bush addComponent: ECSCollisionComponent withStandardValues.
	bush addComponent: ECSPictureComponent withStandardValues.
	bush addComponent: ECSBurnComponent withStandardValues.
	bush positionComponent position: 400@400.
	bush pictureComponent picturePath: (FileDirectory default pathName,  '/bush.png').
	bush burnComponent burnImage: (FileDirectory default pathName, '/burning.png').
	
	