as yet unclassified
update

	(self entityManager eventManager eventsOfTyp: #collision) do: [:event |
		| entity otherEntity intersection |
		entity := event at: #entity1.
		otherEntity := event at: #entity2.
		intersection := event at: #intersection.
		
		((entity collisionComponent collisionTag == #deadly) and: [otherEntity hasComponentOfType: #health]) ifTrue: [
				otherEntity healthComponent health: otherEntity healthComponent health - 1]]