as yet unclassified
update

	(self entityManager eventManager eventsOfTyp: #collision) do: [:event |
		| entity otherEntity |
		entity := event at: #entity1.
		otherEntity := event at: #entity2.
		((entity collisionComponent collisionTag == #deadly) and: [otherEntity hasComponentOfType: #health]) ifTrue: [
				otherEntity healthComponent health: otherEntity healthComponent health - 1]]