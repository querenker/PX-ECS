as yet unclassified
update

	(self entityManager eventManager eventsOfTyp: #collision) do: [:event |
		| entity otherEntity |
		entity := event at: #entity1.
		otherEntity := event at: #entity2.
		((entity collisionComponent collisionTags contains: [:x | x == #destroy]) and: [otherEntity collisionComponent collisionTags contains: [:x | x == #solid]]) ifTrue: [
			otherEntity remove]]