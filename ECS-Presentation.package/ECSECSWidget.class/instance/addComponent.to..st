ECS Logic
addComponent: aComponentClass to: anEntity

	| component |
	component := aComponentClass withStandardValues.
	self entityManager addComponent: component to: anEntity.
	self displayComponent: component.
	self addComponentToEntityButton shouldBeUpdated: true.
	^ component