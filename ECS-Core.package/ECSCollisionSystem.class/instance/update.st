as yet unclassified
update

	| entities |
	entities := self entityManager entitiesWithComponentsOfTypes: #(#collision #position).
	entities do: [:entity |
		| translatedCollisionBoundary otherTranslatedCollisionBoundary |
		translatedCollisionBoundary := entity collisionComponent collisionBoundary translateBy: entity positionComponent position.
		entities do: [:otherEntity |
			| intersection |
			otherTranslatedCollisionBoundary := otherEntity collisionComponent collisionBoundary translateBy: otherEntity positionComponent position.
			intersection := (translatedCollisionBoundary intersect: otherTranslatedCollisionBoundary).
			(intersection area > 0) ifTrue: [
				self entityManager eventManager addEvent: (Dictionary newFrom: {#entity1 -> entity . #entity2 -> otherEntity . #intersection -> intersection}) ofTyp: #collision]]]