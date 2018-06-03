as yet unclassified
solveCollisionOf: aSetOfEntities withIntersection: anIntersection

	| movableEntities |
	((aSetOfEntities size < 2) or: [anIntersection area = 0]) ifTrue: [^ self].
	self halt.
	movableEntities := aSetOfEntities select: [:entity | entity hasComponentOfType: #motion].
	movableEntities do: [:entity |
		entity collision collisionBoundary 
		]