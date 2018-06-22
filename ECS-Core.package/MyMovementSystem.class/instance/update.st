as yet unclassified
update
	
	| entities |
	entities := self entityManager entitiesWithComponentsOfTypes: #(#position #motion).
	entities do: [:entity |
		entity positionComponent position: entity positionComponent position + entity motionComponent velocity]