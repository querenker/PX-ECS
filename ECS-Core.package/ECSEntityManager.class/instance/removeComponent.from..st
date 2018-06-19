as yet unclassified
removeComponent: aComponent from: anEntity

	| emptyFlag |
	emptyFlag := false.
	self componentStore at: (aComponent class type) ifPresent: [ :store |
		store keysAndValuesRemove: [:entity :component | entity == anEntity entityId and: component == aComponent].
		store ifEmpty: [emptyFlag := true]].
	emptyFlag ifTrue: [self componentStore removeKey: (aComponent class type)].
	self inspect