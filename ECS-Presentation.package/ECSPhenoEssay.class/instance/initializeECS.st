initialization
initializeECS

	self
		isRunning: false;
		entityManager: ECSEntityManager new;
		systems: (OrderedCollection new
			add: (ECSRenderingSystem withEntityManager: self entityManager drawSurface: self playground);
			add: (ECSGravitySystem with: self entityManager);
			yourself)