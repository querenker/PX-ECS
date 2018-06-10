as yet unclassified
update

	| entities |
	entities := self entityManager entitiesWithComponentsOfTyps: #(#collision #position).
	entities do: [:entity |
		| translatedCollisionBoundary otherTranslatedCollisionBoundary |
		translatedCollisionBoundary := entity collisionComponent collisionBoundary translateBy: entity positionComponent position.
		entities do: [:otherEntity |
			otherTranslatedCollisionBoundary := otherEntity collisionComponent collisionBoundary translateBy: otherEntity positionComponent position.
			self solveCollisionOf: (Set with: entity with: otherEntity) withIntersection: (translatedCollisionBoundary intersect: otherTranslatedCollisionBoundary)]]