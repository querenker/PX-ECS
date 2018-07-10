as yet unclassified
update
	
	| entitiesWithColoredRectangles entitiesWithPictures entitiesWithPreloadedPictures |
	entitiesWithColoredRectangles := entityManager entitiesWithComponentsOfTypes: #(#coloredRectangle #position).
	entitiesWithPictures := entityManager entitiesWithComponentsOfTypes: #(#picture #position).
	entitiesWithPreloadedPictures := entityManager entitiesWithComponentsOfTypes: #(#preloadedpicture #position).
	
	self resetDrawCommands.
	
	entitiesWithColoredRectangles do: [:entity |
		self drawCommands add: [:surface |
			surface fillRectangle: (entity positionComponent position extent: entity coloredRectangleComponent extent) color: entity coloredRectangleComponent color]].
	
	entitiesWithPictures do: [:entity |
		entity pictureComponent picturePath ifNotNilDo:  [ :filePath |
			(filePath asLowercase includesSubstring: 'png')
				ifTrue: [ self drawCommands
					add: [:surface | | form |
						form := self getFormFor: filePath. 
						surface drawImage: form at: entity positionComponent position]]
				ifFalse: [(ECSPictures preloadedPictureIdentifiers includes: filePath asSymbol)
					ifTrue:[ self drawCommands
						add: [:surface | | form |
							form := ECSPictures perform: filePath asSymbol. 
							surface drawImage: form at: entity positionComponent position]]]]].
	
	entitiesWithPreloadedPictures do: [:entity |
		(ECSPictures preloadedPictureIdentifiers includes: entity preloadedpictureComponent pictureIdentifier) ifTrue:[
			self drawCommands add: [:surface | | form |
				form := ECSPictures perform: entity preloadedpictureComponent pictureIdentifier asSymbol. 
				surface drawImage: form at: entity positionComponent position]]].
	
	self drawSurface drawBlock: [:surface |
		self drawCommands do: [:command |
			command value: surface]]