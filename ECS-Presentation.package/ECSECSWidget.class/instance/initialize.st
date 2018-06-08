initialization
initialize

	super initialize.
	
	self
		initializeDefaultInstVars;
		initializeECS;
		initalizeSimulationProcess;
		initializeUI;
		play