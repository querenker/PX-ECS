as yet unclassified
update

	| entities movementDirections |
	self lastEvent isNil ifTrue: [^ self].
	movementDirections := Dictionary newFrom: { 123 -> ((-1)@0) . 124 -> (1@0) . 125 -> (0@1) . 126 -> (0@(-1)) }. 
	entities := self entityManager entitiesWithComponentsOfTyps: #(#motion #input).
	entities do: [:entity |
		entity motionComponent velocity: (movementDirections at: self lastEvent keyValue ifAbsent: entity motionComponent velocity) ]