initialization
initializeECS

	self
		entityManager: (ECSToolEntityManager withWidget: self);
		systems: (OrderedCollection new
			add: (ECSRenderingSystem withEntityManager: self entityManager drawSurface: self playground);
			add: (ECSMovementSystem with: self entityManager);
			add: (ECSInputSystem withEntityManager: self entityManager inputSubject: self);
			add: (ECSCollisionSystem with: self entityManager);
			add: (ECSResolveCollisionSystem with: self entityManager);
			add: (ECSDamageSystem with: self entityManager);
			add: (ECSHealthSystem with: self entityManager);
			add: (ECSShootSystem with: self entityManager);
			add: (ECSInflameSystem with: self entityManager);
			add: (ECSBurnSystem with: self entityManager);
			add: (ECSSpawnSystem with: self entityManager);
			add: (ECSFollowSystem with: self entityManager);
			add: (ECSCooldownSystem with: self entityManager);
			add: (ECSTeleportSystem with: self entityManager);
			add: (ECSDestroySystem with: self entityManager);
			yourself).