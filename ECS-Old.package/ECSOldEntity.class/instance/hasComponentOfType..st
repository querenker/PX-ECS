accessing
hasComponentOfType: aSymbol

	^ (self components select: [:each | each isOfType: aSymbol]) isEmpty not