as yet unclassified
toggle

	self isStepping
		ifTrue: [self enterStopState]
		ifFalse: [self enterStartState]