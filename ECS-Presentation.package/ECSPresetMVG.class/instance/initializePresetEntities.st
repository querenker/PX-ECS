as yet unclassified
initializePresetEntities

	| player dwarf spawn1 spawn2 bush block1 block2 block3 block4 block5 bush2 bush3 |
	super initializePresetEntities.
	
	player := self addEntityNamed: 'Mage'.
	player addComponent: ECSPositionComponent withStandardValues.
	player addComponent: ECSPictureComponent withStandardValues.
	player addComponent: ECSHealthComponent withStandardValues.
	player addComponent: (ECSCollisionComponent withStandardValues collisionTags: #(solid)).
	player addComponent: ECSMotionComponent withStandardValues.
	player addComponent: ECSInputComponent withStandardValues.
	player addComponent: ECSShootComponent withStandardValues.
	player addComponent: ECSTeleportComponent withStandardValues.
	player pictureComponent picturePath: 'wizard'.
	player positionComponent position: 200@200.
	player teleportComponent teleportArea: 750@400.
	
	dwarf := self addEntityNamed: 'Dwarf'.
	dwarf addComponent: ECSPositionComponent withStandardValues.
	dwarf addComponent: ECSPictureComponent withStandardValues.
	dwarf addComponent: ECSHealthComponent withStandardValues.
	dwarf addComponent: (ECSCollisionComponent withStandardValues collisionTags: #(destroy)).
	dwarf pictureComponent picturePath: 'dwarf'.
	dwarf positionComponent position: 0@400.
	
	block1 := self addEntityNamed: 'Block1'.
	block1 addComponent: ECSPositionComponent withStandardValues.
	block1 addComponent: ECSPictureComponent withStandardValues.
	block1 addComponent: (ECSCollisionComponent withStandardValues collisionTags: #(solid)).
	block1 pictureComponent picturePath: 'stonewall'.
	block1 positionComponent position: 0@300.
	
	block2 := self addEntityNamed: 'Block2'.
	block2 addComponent: ECSPositionComponent withStandardValues.
	block2 addComponent: ECSPictureComponent withStandardValues.
	block2 addComponent: (ECSCollisionComponent withStandardValues collisionTags: #(solid)).
	block2 pictureComponent picturePath: 'stonewall'.
	block2 positionComponent position: 50@300.
	
	block3 := self addEntityNamed: 'Block3'.
	block3 addComponent: ECSPositionComponent withStandardValues.
	block3 addComponent: ECSPictureComponent withStandardValues.
	block3 addComponent: (ECSCollisionComponent withStandardValues collisionTags: #(solid)).
	block3 pictureComponent picturePath: 'stonewall'.
	block3 positionComponent position: 100@300.
	
	block4 := self addEntityNamed: 'Block4'.
	block4 addComponent: ECSPositionComponent withStandardValues.
	block4 addComponent: ECSPictureComponent withStandardValues.
	block4 addComponent: (ECSCollisionComponent withStandardValues collisionTags: #(solid)).
	block4 pictureComponent picturePath: 'stonewall'.
	block4 positionComponent position: 100@350.
	
	block5 := self addEntityNamed: 'Block5'.
	block5 addComponent: ECSPositionComponent withStandardValues.
	block5 addComponent: ECSPictureComponent withStandardValues.
	block5 addComponent: (ECSCollisionComponent withStandardValues collisionTags: #(solid)).
	block5 pictureComponent picturePath: 'stonewall'.
	block5 positionComponent position: 100@400.
	
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
	bush pictureComponent picturePath: 'bush'.
	bush burnComponent burnImage: (FileDirectory default pathName, '/burning.png').
	
	bush2 := self addEntityNamed: 'Bush2'.
	bush2 addComponent: ECSPositionComponent withStandardValues.
	bush2 addComponent: ECSCollisionComponent withStandardValues.
	bush2 addComponent: ECSPictureComponent withStandardValues.
	bush2 addComponent: ECSBurnComponent withStandardValues.
	bush2 positionComponent position: 500@350.
	bush2 pictureComponent picturePath: 'bush'.
	bush2 burnComponent burnImage: (FileDirectory default pathName, '/burning.png').
	
	bush3 := self addEntityNamed: 'Bush3'.
	bush3 addComponent: ECSPositionComponent withStandardValues.
	bush3 addComponent: ECSCollisionComponent withStandardValues.
	bush3 addComponent: ECSPictureComponent withStandardValues.
	bush3 addComponent: ECSBurnComponent withStandardValues.
	bush3 positionComponent position: 700@200.
	bush3 pictureComponent picturePath: 'bush'.
	bush3 burnComponent burnImage: (FileDirectory default pathName, '/burning.png').
	