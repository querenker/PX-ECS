as yet unclassified
update
	
	| drawCommands entitiesWithColoredRectangles entitiesWithPictures |
	entitiesWithColoredRectangles := entityManager entitiesWithComponentsOfTyps: #(#coloredRectangle #position).
	entitiesWithPictures := entityManager entitiesWithComponentsOfTyps: #(#picture #position).
	
	drawCommands := OrderedCollection new.
	
	entitiesWithColoredRectangles do: [:entity |
		drawCommands add: [:surface |
			surface fillRectangle: (entity positionComponent position extent: entity coloredRectangleComponent extent) color: entity coloredRectangleComponent color]].
	
	self drawSurface drawBlock: [:surface |
		drawCommands do: [:command |
			command value: surface]]