as yet unclassified
update

	| entities |
	entities := self entityManager entitiesWithComponentsOfTyps: #(#collision #position).
	entities do: [:entity |
		| translatedCollisionBoundary otherTranslatedCollisionBoundary |
		translatedCollisionBoundary := entity collision collisionBoundary translateBy: entity position position.
		entities do: [:otherEntity |
			otherTranslatedCollisionBoundary := otherEntity collision collisionBoundary translateBy: otherEntity position position.
			self solveCollisionOf: (Set with: entity with: otherEntity) withIntersection: (translatedCollisionBoundary intersect: otherTranslatedCollisionBoundary)]]