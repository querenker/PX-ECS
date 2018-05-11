as yet unclassified
withPosition: aPosition color: aColor extent: aExtent

	| instance |
	instance := self new.
	instance
		position: aPosition;
		color: aColor;
		extent: aExtent.
	^ instance