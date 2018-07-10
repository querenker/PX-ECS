as yet unclassified
initializeECS

	| player enemy |
	
	self
		entityManager: ECSEntityManager new;
		systems: (OrderedCollection new
			add: (ECSRenderingSystem withEntityManager: self entityManager drawSurface: self playground);
			add: (ECSMovementSystem with: self entityManager);
			add: (ECSInputSystem withEntityManager: self entityManager inputSubject: self);
			add: (ECSCollisionSystem with: self entityManager);
			yourself).
	
	player := self  addEntityNamed: 'Player'.
	player
		addComponent: (ECSPositionComponent withStandardValues position: 0@0);
		addComponent: (ECSPictureComponent withStandardValues picturePath: 'wizard');
		addComponent: (ECSInputComponent withStandardValues);
		addComponent: (ECSMotionComponent withStandardValues).
		
	enemy := self addEntityNamed: 'Enemy'.
	enemy
		addComponent: (ECSPositionComponent withStandardValues position: 200@200);
		addComponent: (ECSPictureComponent withStandardValues picturePath: 'monster').