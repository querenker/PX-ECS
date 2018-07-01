accessing
initialize

	self entities: OrderedCollection new.
	self attributes: OrderedCollection new.
	self connections: OrderedCollection new.
	self drawnLines: OrderedCollection new.
	self startStepping.
	self stepProcess: [[true] whileTrue: [
		self drawConnections.
		(Delay forMilliseconds: 10) wait]] newProcess.
	self startStepping.