ECS Logic
toggleSimulation

	self isSimulating
		ifTrue: [self pause]
		ifFalse: [self play]