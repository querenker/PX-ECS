as yet unclassified
getFormFor: aFilePath

	^ self pictureCache
		at: aFilePath
		ifAbsentPut: [Form fromFileNamed: aFilePath]