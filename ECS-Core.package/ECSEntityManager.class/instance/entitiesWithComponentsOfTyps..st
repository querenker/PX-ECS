as yet unclassified
entitiesWithComponentsOfTyps: aCollectionOfTypes

	| entities |
	entities := aCollectionOfTypes collect: [:typ | self entitiesWithComponentOfTyp: typ].
	^ entities inject: entities first into: [:set :entitiesOfOneTyp | set intersection: entitiesOfOneTyp]
	