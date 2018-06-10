as yet unclassified
update
	
	| entities drawCommands |
	entities := entityManager entitiesWithComponentsOfTyps: #(#representation #position).
	
	drawCommands := OrderedCollection new.
	
	entities do: [:entity |
		drawCommands add: [:surface |
			surface fillRectangle: (entity positionComponent position extent: entity representationComponent extent) color: entity representationComponent color]].
	
	self drawSurface drawBlock: [:surface |
		drawCommands do: [:command |
			command value: surface]]