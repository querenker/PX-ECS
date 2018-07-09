as yet unclassified
openFor: aWidget

	self parentTopLevel: aWidget topLevel.
	acceptPromise := PHPromise new.

	self
		fullBounds;
		center: DisplayScreen boundingBox center;
		openInWorld;
		shown.
	
	^ acceptPromise