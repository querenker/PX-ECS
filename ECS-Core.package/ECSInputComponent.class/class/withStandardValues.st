as yet unclassified
withStandardValues

	| instance |
	instance := self new.
	instance keyActionMapping at: Character arrowUp put: #moveUp.
	instance keyActionMapping at: Character arrowDown put: #moveDown.
	instance keyActionMapping at: Character arrowLeft put: #moveLeft.
	instance keyActionMapping at: Character arrowRight put: #moveRight.
	instance keyActionMapping at: $m put: #shoot.
	instance keyActionMapping at: $n put: #teleport. 
	^ instance