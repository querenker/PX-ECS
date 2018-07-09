as yet unclassified
update

	| entities |
	entities := self entityManager entitiesWithComponentsOfTypes: #(spawn position).
	entities do: [:entity |
		((Random new nextInt: 1000) < entity spawnComponent spawnFrequency) ifTrue: [
			self createEnemy positionComponent position: entity positionComponent position]]