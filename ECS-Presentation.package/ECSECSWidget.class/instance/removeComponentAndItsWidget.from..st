ECS Logic
removeComponentAndItsWidget: aComponentWidget from: anEntity

	| component |
	component := aComponentWidget component.
	self componentsForEntityWidget remove: aComponentWidget.
	self entityManager scheduleComponentForDeletion: component from: anEntity.
	self addComponentToEntityButton shouldBeUpdated: true