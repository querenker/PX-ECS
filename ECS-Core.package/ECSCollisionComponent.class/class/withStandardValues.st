as yet unclassified
withStandardValues

	| instance |
	instance := self new.
	instance collisionBoundary: (Rectangle origin: 0@0 corner: 42@42).
	^ instance