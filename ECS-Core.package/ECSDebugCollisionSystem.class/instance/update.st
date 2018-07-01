as yet unclassified
update
	
	| defaultCollisionColor entitiesWithPositionAndCollision |
	entitiesWithPositionAndCollision := entityManager entitiesWithComponentsOfTypes: #(#position collision).
	defaultCollisionColor := Color orange.
	
	self resetDrawCommands.
	
	entitiesWithPositionAndCollision do: [:entity |
		self drawCommands add: [:surface |
			surface fillRectangle: (entity positionComponent position extent: entity collisionComponent collisionBoundary extent) color: defaultCollisionColor]].
	
	self drawSurface drawBlock: [:surface |
		self drawCommands do: [:command |
			command value: surface]]