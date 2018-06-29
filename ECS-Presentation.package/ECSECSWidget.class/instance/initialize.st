initialization
initialize

	super initialize.
	
	self
		minSize: (1200@700) withScalingFactor;
		initializeDefaultInstVars;
		initializeECS;
		initalizeSimulationProcess;
		initializeUI;
		play