UI
step

	self shouldUpdate ifTrue: [
		self update.
		self shouldUpdate: false] 