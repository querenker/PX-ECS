as yet unclassified
update
	
	| entities drawCommands |
	entities := entityManager entitiesWithComponentsOfTyps: #(#representation #position).
	
	drawCommands := OrderedCollection new.
	
	entities do: [:entity |
		drawCommands add: [:surface |
			surface fillRectangle: (entity position position extent: entity representation extent) color: entity representation color]].
	
	self drawSurface drawBlock: [:surface |
		drawCommands do: [:command |
			command value: surface]]