as yet unclassified
initializePresetEntities

	| enemy player |
	super initializePresetEntities.
	
	player := self  addEntityNamed: 'Player'.
	player
		addComponent: (ECSPositionComponent withStandardValues position: 0@0);
		addComponent: (ECSPictureComponent withStandardValues picturePath: 'wizard');
		addComponent: (ECSInputComponent withStandardValues);
		addComponent: (ECSCollisionComponent withStandardValues);
		addComponent: (ECSMotionComponent withStandardValues);
		addComponent: (ECSHealthComponent withStandardValues).
		
	enemy := self addEntityNamed: 'Enemy'.
	enemy
		addComponent: (ECSPositionComponent withStandardValues position: 200@200);
		addComponent: (ECSPictureComponent withStandardValues picturePath: 'monster');
		addComponent: (ECSCollisionComponent withStandardValues collisionTags: #(deadly))