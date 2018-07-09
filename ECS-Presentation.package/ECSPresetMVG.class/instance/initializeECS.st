as yet unclassified
initializeECS

	| player spawn bush |
	super initializeECS.
	
	player := self addEntityNamed: 'Player'.
	player addComponent: ECSPositionComponent withStandardValues.
	player addComponent: ECSPictureComponent withStandardValues.
	player addComponent: ECSHealthComponent withStandardValues.
	player addComponent: ECSCollisionComponent withStandardValues.
	player addComponent: ECSMotionComponent withStandardValues.
	player addComponent: ECSInputComponent withStandardValues.
	player addComponent: ECSShootComponent withStandardValues.
	player pictureComponent picturePath: (FileDirectory default pathName,  '/wizard.png').
	player positionComponent position: 200@200.
	
	spawn := self addEntityNamed: 'Spawn'.
	spawn addComponent: ECSPositionComponent withStandardValues.
	spawn addComponent: ECSSpawnComponent withStandardValues.
	spawn spawnComponent followId: player entityId.
	
	bush := self addEntityNamed: 'Bush'.
	bush addComponent: ECSPositionComponent withStandardValues.
	bush addComponent: ECSCollisionComponent withStandardValues.
	bush addComponent: ECSPictureComponent withStandardValues.
	bush addComponent: ECSBurnComponent withStandardValues.
	bush positionComponent position: 400@400.
	bush pictureComponent picturePath: (FileDirectory default pathName,  '/bush.png').
	bush burnComponent burnImage: (FileDirectory default pathName, '/burning.png').
	
	