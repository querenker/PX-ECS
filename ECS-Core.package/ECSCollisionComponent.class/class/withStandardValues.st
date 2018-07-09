as yet unclassified
withStandardValues

	| instance |
	instance := self new.
	instance collisionBoundary: (Rectangle origin: 0@0 corner: 50@50).
	instance collisionTags: OrderedCollection new.
	^ instance