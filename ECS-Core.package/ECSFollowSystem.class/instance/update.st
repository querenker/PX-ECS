as yet unclassified
update

	| entities |
	entities := self entityManager entitiesWithComponentsOfTypes: #(follow position motion).
	entities do: [:entity |
		| followPosition |
		followPosition := (self entityManager componentOfType: #position for: entity followComponent followId) position.
		entity motionComponent velocity: ((followPosition - (entity positionComponent position)) normalized).]