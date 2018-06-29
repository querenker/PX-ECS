initialization
initialize

	super initialize.
	
	self
		minSize: 1700@800;
		initializeDefaultInstVars;
		initializeECS;
		initalizeSimulationProcess;
		initializeUI;
		play