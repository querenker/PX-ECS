ECS Logic
systemUpdateMethodTemplate

	^ 'update
	
	| entities |
	entities := self entityManager entitiesWithComponentsOfTypes: {1}.
	entities do: [:entity |
		{2}]'