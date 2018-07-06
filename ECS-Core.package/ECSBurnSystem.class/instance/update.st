as yet unclassified
update

	| entities |
	entities := self entityManager entitiesWithComponentsOfTypes: #(#burn).
	entities do: [:entity |
		(entity burnComponent isBurning) ifTrue: [entity burnComponent fuel: entity burnComponent fuel - 1].
		(entity burnComponent fuel < 1) ifTrue: [entity remove]]