as yet unclassified
update

	(self entityManager eventManager eventsOfTyp: #collision) do: [:event |
		| entity otherEntity intersection |
		entity := event at: #entity1.
		otherEntity := event at: #entity2.
		intersection := event at: #intersection.
		((entity collisionComponent collisionTags contains: [:x | x == #solid]) and: [otherEntity collisionComponent collisionTags contains: [:x | x == #solid]]) ifTrue: [
				self solveCollisionOf: (Set with: entity with: otherEntity) withIntersection: intersection].
		]