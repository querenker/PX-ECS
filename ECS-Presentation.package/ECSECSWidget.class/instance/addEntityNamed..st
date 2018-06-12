ECS Logic
addEntityNamed: aString

	^ self addEntity: (self entityManager createEntityNamed: aString)
	