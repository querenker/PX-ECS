as yet unclassified
solveCollisionOf: aSetOfEntities withIntersection: anIntersection

	| movableEntities |
	((aSetOfEntities size < 2) or: [anIntersection area = 0]) ifTrue: [^ self].
	movableEntities := aSetOfEntities select: [:entity | entity hasComponentOfType: #motion].
	movableEntities do: [:entity |
		| resolvingDirection movementDelta resolvingSign |
		resolvingDirection := (anIntersection height < anIntersection width) ifTrue: #y ifFalse: #x.
		movementDelta := (resolvingDirection == #x) ifTrue: [anIntersection width @ 0] ifFalse: [0 @ (anIntersection height)].
		resolvingSign := (entity motion velocity perform: resolvingDirection) > 0 ifTrue: [-1] ifFalse: [1].
		entity position position: entity position position + (resolvingSign * movementDelta)]