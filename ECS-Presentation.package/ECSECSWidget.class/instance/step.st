stepping
step

	isRunning ifTrue: [self systems do: [:system | system update]]