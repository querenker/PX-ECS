initialization
initalizeSimulationProcess

	self simulationProcess: [[true] whileTrue:[
			self systems do: [:each | each update].
			(Delay forMilliseconds: 10) wait]] newProcess
