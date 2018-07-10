initialization
initalizeSimulationProcess

	self simulationProcess: [[true] whileTrue:[
			self shouldReset ifTrue: [self resetSimulation. self shouldReset: false].
			self entityManager eventManager clearEvents.
			self entityManager deleteAllScheduledComponentsFromEntities.
			self configureUIElementsIfNeeded.
			self systems do: [:each | each updateIfEnabled].
			(Delay forMilliseconds: 10) wait]] newProcess
