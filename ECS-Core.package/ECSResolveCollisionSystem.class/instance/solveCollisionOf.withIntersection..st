as yet unclassified
solveCollisionOf: aSetOfEntities withIntersection: anIntersection

	| movableEntities |
	((aSetOfEntities size < 2) or: [anIntersection area = 0]) ifTrue: [^ self].
	movableEntities := aSetOfEntities select: [:entity | (entity hasComponentOfType: #motion) and: [entity motionComponent velocity ~= (0@0)]].
	movableEntities do: [:entity |
		| resolvingDirection movementDelta resolvingSign |
		resolvingDirection := (anIntersection height < anIntersection width) ifTrue: #y ifFalse: #x.
		movementDelta := (resolvingDirection == #x) ifTrue: [anIntersection width @ 0] ifFalse: [0 @ (anIntersection height)].
		resolvingSign := (entity motionComponent velocity perform: resolvingDirection) > 0 ifTrue: [-1] ifFalse: [1].
		entity positionComponent position: entity positionComponent position + (resolvingSign * movementDelta).
		entity motionComponent velocity: 0@0]