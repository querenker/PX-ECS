accessing
getComponentOfType: aSymbol

	^ (self components select: [:each | each isOfType: aSymbol]) first