as yet unclassified
update

	| entities |
	entities := self entityManager entitiesWithComponentOfTyp: #collision.
	entities keysAndValuesDo: [:entity :collisionComponent |
		| translatedCollisionComponent positionComponent |
		positionComponent := self entityManager componentOfType: #position for: entity. 
		translatedCollisionComponent := collisionComponent collisionBoundary translateBy: positionComponent position.
		]