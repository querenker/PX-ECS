as yet unclassified
update

	| entities |
	entities := (entityManager entitiesWithComponentOfTyp: #gravity).
	entities do: [:entity |
		entity position position: entity position position + (0@(entity gravity gravity))]