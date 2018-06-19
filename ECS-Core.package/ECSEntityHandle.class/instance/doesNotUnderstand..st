accessing
doesNotUnderstand: aMessage

	| componentSuffix componentTag |
	componentSuffix := 'Component'.
	(aMessage selector endsWith: componentSuffix) ifFalse: [super doesNotUnderstand: aMessage].
	componentTag := (aMessage selector readStream upToAll: componentSuffix) asSymbol.
	(self hasComponentOfType: componentTag)
		ifTrue: [^ self entityManager componentOfType: componentTag for: self entityId]
		ifFalse: [^ nil]
	