as yet unclassified
update

	| entities |
	entities := self entityManager entitiesWithComponentsOfTypes: #(#health).
	entities do: [:entity |
		(entity healthComponent health < 1) ifTrue: [entity remove]]