as yet unclassified
update

	(self entityManager eventManager eventsOfTyp: #collision) do: [:event |
		| entity otherEntity intersection |
		entity := event at: #entity1.
		otherEntity := event at: #entity2.
		intersection := event at: #intersection.
		(entity collisionComponent collisionTag == #solid and: [otherEntity collisionComponent collisionTag == #solid]) ifTrue: [
				self solveCollisionOf: (Set with: entity with: otherEntity) withIntersection: intersection].
		]