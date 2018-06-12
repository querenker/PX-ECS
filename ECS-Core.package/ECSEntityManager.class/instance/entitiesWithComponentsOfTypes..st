as yet unclassified
entitiesWithComponentsOfTypes: aCollectionOfTypes

	| entities |
	entities := aCollectionOfTypes collect: [:typ | self entitiesWithComponentOfType: typ].
	^ entities inject: entities first into: [:set :entitiesOfOneType | set intersection: entitiesOfOneType]
	