as yet unclassified
update	
	
	| entities |
	entities := (entityManager entitiesWithComponentOfTyp: #motion).
	entities do: [:entity |
		entity position position: entity position position + entity motion velocity.
		entity motion velocity: entity motion velocity + entity motion acceleration]