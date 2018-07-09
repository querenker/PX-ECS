as yet unclassified
update
	
	| entities |
	entities := self entityManager entitiesWithComponentsOfTypes: #(shoot).
	entities do: [:entity |
		entity shootComponent cooldown: (0 max: (entity shootComponent cooldown) - 1)]