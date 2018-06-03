as yet unclassified
update	
	
	| entities |
	entities := self entityManager entitiesWithComponentsOfTyps: #(#motion #position).
	entities do: [:entity |
		entity position position: entity position position + entity motion velocity.
		entity motion velocity: entity motion velocity + entity motion acceleration]