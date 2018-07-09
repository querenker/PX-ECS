as yet unclassified
update

	(self entityManager eventManager eventsOfTyp: #collision) do: [:event |
		| entity otherEntity |
		entity := event at: #entity1.
		otherEntity := event at: #entity2.
		((entity collisionComponent collisionTag == #fire) and: [otherEntity hasComponentOfType: #burn]) ifTrue: [
				otherEntity burnComponent isBurning: true]]