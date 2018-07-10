accessing
createEntity

	| entity |
	entity := super createEntity.
	self widget addEntity: entity.
	^ entity.