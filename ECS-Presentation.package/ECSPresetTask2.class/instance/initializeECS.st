as yet unclassified
initializeECS

	
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
	
	self initializePresetEntities
	
