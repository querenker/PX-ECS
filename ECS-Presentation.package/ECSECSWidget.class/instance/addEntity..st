ECS Logic
addEntity: anEntity

	self entities add: anEntity.
	self chooseEntityButton shouldBeUpdated: true.
	^ anEntity