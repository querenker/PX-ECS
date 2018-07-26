as yet unclassified
update

	| entities |
	self lastEvent isNil ifTrue: [^ self].
	
	entities := self entityManager entitiesWithComponentsOfTypes: #(input).
	entities do: [:entity | | action |
		action := entity inputComponent keyActionMapping at:  (self getCharacterForKey: self lastEvent keyValue) ifAbsent: [^ #nothing].
		self perform: (action, ':') asSymbol with: entity].
	
	self lastEvent: nil