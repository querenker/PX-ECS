as yet unclassified
entitiesWithComponentsOfTypes: aCollectionOfTypes

	| entities |
	entities := aCollectionOfTypes collect: [:type | self entitiesWithComponentOfType: type].
	^ entities inject: entities first into: [:set :entitiesOfOneType | set intersection: entitiesOfOneType]
	