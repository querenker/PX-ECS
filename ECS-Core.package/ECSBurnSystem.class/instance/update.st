as yet unclassified
update

	| entities |
	entities := self entityManager entitiesWithComponentsOfTypes: #(#burn #picture).
	entities do: [:entity |
		(entity burnComponent isBurning) ifTrue: [
			entity burnComponent fuel: entity burnComponent fuel - 1.
			entity pictureComponent picturePath: entity burnComponent burnImage].
		(entity burnComponent fuel < 1) ifTrue: [entity remove]]