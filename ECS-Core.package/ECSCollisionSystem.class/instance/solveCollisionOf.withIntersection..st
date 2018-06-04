as yet unclassified
solveCollisionOf: aSetOfEntities withIntersection: anIntersection

	| movableEntities |
	((aSetOfEntities size < 2) or: [anIntersection area = 0]) ifTrue: [^ self].
	movableEntities := aSetOfEntities select: [:entity | entity hasComponentOfType: #motion].
	movableEntities do: [:entity |
		| movementDelta |
		movementDelta := (anIntersection height < anIntersection width) ifTrue: [0 @ (anIntersection height)] ifFalse: [(anIntersection height) @ 0].
		entity position position: entity position position - movementDelta]