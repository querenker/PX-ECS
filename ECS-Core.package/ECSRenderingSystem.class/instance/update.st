as yet unclassified
update
	
	| entitiesWithColoredRectangles entitiesWithPictures |
	entitiesWithColoredRectangles := entityManager entitiesWithComponentsOfTypes: #(#coloredRectangle #position).
	entitiesWithPictures := entityManager entitiesWithComponentsOfTypes: #(#picture #position).
	
	self resetDrawCommands.
	
	entitiesWithColoredRectangles do: [:entity |
		self drawCommands add: [:surface |
			surface fillRectangle: (entity positionComponent position extent: entity coloredRectangleComponent extent) color: entity coloredRectangleComponent color]].
	
	entitiesWithPictures do: [:entity |
		self drawCommands add: [:surface | | form |
			entity pictureComponent picturePath ifNotNilDo:  [ :filePath | 
				form := self getFormFor: filePath. 
				surface drawImage: form at: entity positionComponent position]]].
	
	self drawSurface drawBlock: [:surface |
		self drawCommands do: [:command |
			command value: surface]]