as yet unclassified
update

	| entities |
	entities := self entityManager entitiesWithComponentsOfTypes: #(#collision #position).
	entities do: [:entity |
		| translatedCollisionBoundary otherTranslatedCollisionBoundary |
		translatedCollisionBoundary := entity collisionComponent collisionBoundary translateBy: entity positionComponent position.
		entities do: [:otherEntity |
			otherTranslatedCollisionBoundary := otherEntity collisionComponent collisionBoundary translateBy: otherEntity positionComponent position.
			(entity collisionComponent collisionTag == #solid and: [otherEntity collisionComponent collisionTag == #solid]) ifTrue: [
				self solveCollisionOf: (Set with: entity with: otherEntity) withIntersection: (translatedCollisionBoundary intersect: otherTranslatedCollisionBoundary)].
			((entity collisionComponent collisionTag == #deadly) and: [otherEntity hasComponentOfType: #health] and: [(translatedCollisionBoundary intersect: otherTranslatedCollisionBoundary) area > 0]) ifTrue: [
				otherEntity healthComponent health: otherEntity healthComponent health - 1]]]