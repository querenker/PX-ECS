as yet unclassified
update
	
	| entities |
	entities := self entityManager entitiesWithComponentsOfTypes: #(#position).
	entities do: [:entity |
		entity positionComponent position: 0@0]