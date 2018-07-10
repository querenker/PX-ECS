as yet unclassified
initializePresetEntities

	| enemy player wrongCollision |
	super initializePresetEntities.
	
	wrongCollision := (ECSCollisionComponent withStandardValues).
	wrongCollision collisionBoundary: (Rectangle origin: 0@0 corner: 123@123).
	
	player := self  addEntityNamed: 'Player'.
	player
		addComponent: (ECSPositionComponent withStandardValues position: 0@0);
		addComponent: (ECSPictureComponent withStandardValues picturePath: 'wizard');
		addComponent: (ECSInputComponent withStandardValues);
		addComponent: wrongCollision;
		addComponent: (ECSMotionComponent withStandardValues);
		addComponent: (ECSHealthComponent withStandardValues).
		
	enemy := self addEntityNamed: 'Enemy'.
	enemy
		addComponent: (ECSPositionComponent withStandardValues position: 200@200);
		addComponent: (ECSPictureComponent withStandardValues picturePath: 'monster');
		addComponent: (ECSCollisionComponent withStandardValues collisionTags: #(deadly))