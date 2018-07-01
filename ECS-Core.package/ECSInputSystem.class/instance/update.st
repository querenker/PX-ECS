as yet unclassified
update

	| entities movementDirections |
	self lastEvent isNil ifTrue: [^ self].
	movementDirections := Dictionary newFrom: { Character arrowLeft -> ((-1)@0) . Character arrowRight -> (1@0) . Character arrowDown -> (0@1) . Character arrowUp -> (0@(-1)). $w -> (0@0) }. 
	entities := self entityManager entitiesWithComponentsOfTypes: #(#motion #input).
	entities do: [:entity |
		entity motionComponent velocity: (movementDirections
			at: (self getCharacterForKey: self lastEvent keyValue)
			ifAbsent: entity motionComponent velocity) ]