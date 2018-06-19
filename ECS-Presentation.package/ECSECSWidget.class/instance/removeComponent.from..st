ECS Logic
removeComponent: aComponentClass from: anEntity

	| component |
	component := aComponentClass withStandardValues.
	self entityManager addComponent: component to: anEntity.
	self componentSidebar add: (ECSComponentWidget with: component).
	^ component