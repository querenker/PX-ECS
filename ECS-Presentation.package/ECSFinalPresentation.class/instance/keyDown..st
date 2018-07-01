initialize-release
keyDown: anEvent

	(self keyMapping at: (Smalltalk os platformName)) == anEvent keyValue ifTrue: [self spacePressed: true]