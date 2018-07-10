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
			add: (ECSDamageSystem with: self entityManager);
			add: (ECSHealthSystem with: self entityManager);
			yourself).
	
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