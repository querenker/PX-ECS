as yet unclassified
update

	| entities |
	entities := self entityManager entitiesWithComponentsOfTyps: #(#gravity #position).
	entities do: [:entity |
		entity positionComponent position: entity positionComponent position + (0@(entity gravityComponent gravity))]