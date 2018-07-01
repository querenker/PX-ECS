initialize-release
keyUp: anEvent

	((self keyMapping at: (Smalltalk os platformName)) == anEvent keyValue and: [self spacePressed == true]) ifTrue: [
		self showNextSlide]