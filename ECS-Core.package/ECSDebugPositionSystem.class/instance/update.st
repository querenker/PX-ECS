as yet unclassified
update
	
	| defaultPositionColor entitiesWithPosition |
	entitiesWithPosition := entityManager entitiesWithComponentsOfTypes: #(#position).
	defaultPositionColor := Color red.
	
	self resetDrawCommands.
	
	entitiesWithPosition do: [:entity |
		self drawCommands add: [:surface |
			surface fillRectangle: (entity positionComponent position extent: 1@1) color: defaultPositionColor]].
	
	self drawSurface drawBlock: [:surface |
		self drawCommands do: [:command |
			command value: surface]]