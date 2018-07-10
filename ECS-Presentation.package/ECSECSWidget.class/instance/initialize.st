initialization
initialize

	super initialize.
	
	self
		shouldReset: false;
		minSize: (1200@700) withScalingFactor;
		initializeDefaultInstVars;
		initializeECS;
		initalizeSimulationProcess;
		initializeUI;
		play