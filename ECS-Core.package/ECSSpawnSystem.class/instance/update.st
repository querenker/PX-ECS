as yet unclassified
update

	| entities |
	entities := self entityManager entitiesWithComponentsOfTypes: #(spawn position).
	entities do: [:entity |
		| enemy |
		((Random new nextInt: 1000) < entity spawnComponent spawnFrequency) ifTrue: [
			enemy := self createEnemy.
			enemy positionComponent position: entity positionComponent position.
			enemy followComponent followId: entity spawnComponent followId]]