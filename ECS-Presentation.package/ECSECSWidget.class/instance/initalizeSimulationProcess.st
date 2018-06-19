initialization
initalizeSimulationProcess

	self simulationProcess: [[true] whileTrue:[
			self systems do: [:each | each updateIfEnabled].
			(Delay forMilliseconds: 10) wait]] newProcess
