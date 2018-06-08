ECS Logic
addEntityNamed: aString

	self currentEntity: (self entityManager createEntityNamed: aString).
	self addCurrentEntity