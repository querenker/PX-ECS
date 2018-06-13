as yet unclassified
update
	
	| drawCommands entitiesWithColoredRectangles entitiesWithPictures |
	entitiesWithColoredRectangles := entityManager entitiesWithComponentsOfTypes: #(#coloredRectangle #position).
	entitiesWithPictures := entityManager entitiesWithComponentsOfTypes: #(#picture #position).
	
	drawCommands := OrderedCollection new.
	
	entitiesWithColoredRectangles do: [:entity |
		drawCommands add: [:surface |
			surface fillRectangle: (entity positionComponent position extent: entity coloredRectangleComponent extent) color: entity coloredRectangleComponent color]].
	
	entitiesWithPictures do: [:entity |
		drawCommands add: [:surface | | form |
			entity pictureComponent picturePath ifNotNilDo:  [ :filePath | 
				form := Form fromFileNamed: filePath. 
				surface drawImage: form at: entity positionComponent position]]].
	
	self drawSurface drawBlock: [:surface |
		drawCommands do: [:command |
			command value: surface]]