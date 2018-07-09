as yet unclassified
update

	| entities |
	entities := self entityManager entitiesWithComponentsOfTypes: #(follow position motion).
	entities do: [:entity |
		| followPosition |
		(self entityManager componentOfType: #position for: entity followComponent followId) ifNotNilDo:
			[ :followedEntityPositionComponent |
			followPosition := followedEntityPositionComponent position.
			entity motionComponent velocity: ((followPosition - (entity positionComponent position)) normalized)]]