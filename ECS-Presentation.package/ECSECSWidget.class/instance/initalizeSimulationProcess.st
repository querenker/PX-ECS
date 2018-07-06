initialization
initalizeSimulationProcess

	self simulationProcess: [[true] whileTrue:[
			self entityManager eventManager clearEvents.
			self entityManager deleteAllScheduledComponentsFromEntities.
			self configureUIElementsIfNeeded.
			self systems do: [:each | each updateIfEnabled].
			(Delay forMilliseconds: 10) wait]] newProcess
