as yet unclassified
allComponentsOf: anEntity

	| store |
	store := self componentStore collect: [:entityComponentMap |
		entityComponentMap at: anEntity ifAbsent: nil].
	^ store select: [:potentialComponent | potentialComponent notNil]

	