as yet unclassified
update
	
	| entities drawCommands |
	entities := entityManager entitiesWithComponentOfTyp: #representation.
	
	drawCommands := OrderedCollection new.
	
	entities do: [:entity |
		drawCommands add: [:surface |
			surface fillRectangle: (entity position position extent: entity representation extent) color: entity representation color]].
	
	self drawSurface drawBlock: [:surface |
		drawCommands do: [:command |
			command value: surface]]