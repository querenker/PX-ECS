accessing
play

	self simulationIndicator color: Color green.
	self simulationProcess resume.
	self isSimulating: true.
	self simulationButton
		removeAllMorphs;
		add: (PHIcon perform: #iconPause)