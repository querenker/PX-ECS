as yet unclassified
update
	
	| entities drawCommands |
	entities := entityMgr entitiesWithComponentOfTyp: #representation.
	
	drawCommands := OrderedCollection new.
	
	entities keysAndValuesDo: [:entity :repComponent | 
		|posComponent|
		posComponent := (self entityMgr componentOfType: #position for: entity).
		
		drawCommands add: [:surface |
			surface fillRectangle: (posComponent position extent: repComponent extent) color: repComponent color]].
	
	self drawSurface drawBlock: [:surface |
		drawCommands do: [:command |
			command value: surface]]