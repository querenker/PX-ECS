as yet unclassified
update

	| entities |
	entities := self entityManager entitiesWithComponentsOfTyps: #(#gravity #position).
	entities do: [:entity |
		entity position position: entity position position + (0@(entity gravity gravity))]