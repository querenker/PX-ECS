as yet unclassified
update
	
	| entities drawCommands |
	entities := entityMgr entitiesWithComponentOfTyp: #representation.
	drawCommands := entities values collect: [ :component |
		[:surface |
			surface fillRectangle: (component position extent: component extent) color: component color]].
	self drawSurface drawBlock: [:surface |
		drawCommands do: [:command |
			command value: surface]]