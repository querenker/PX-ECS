ECS Logic
removeComponentAndItsWidget: aComponentWidget from: anEntity

	| component |
	component := aComponentWidget component.
	self componentSidebar remove: aComponentWidget.
	self entityManager removeComponent: component from: anEntity.
	self renderingSystem resetDrawCommands.
	aComponentWidget delete