as yet unclassified
update	
	
	| entities |
	entities := self entityManager entitiesWithComponentsOfTyps: #(#motion #position).
	entities do: [:entity |
		entity positionComponent position: entity positionComponent position + entity motionComponent velocity.
		entity motionComponent velocity: entity motionComponent velocity + entity motionComponent acceleration]