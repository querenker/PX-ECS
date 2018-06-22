initialization
initializeECS

	self
		entityManager: ECSEntityManager new;
		systems: (OrderedCollection new
			add: (ECSRenderingSystem withEntityManager: self entityManager drawSurface: self playground);
			add: (ECSMovementSystem with: self entityManager);
			add: (ECSInputSystem withEntityManager: self entityManager inputSubject: self);
			add: (ECSCollisionSystem with: self entityManager);
			yourself).