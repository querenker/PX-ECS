ECS Logic
removeComponentAndItsWidget: aComponentWidget from: anEntity

	| component |
	component := aComponentWidget component.
	self componentSidebar remove: aComponentWidget.
	self entityManager scheduleComponentForDeletion: component from: anEntity