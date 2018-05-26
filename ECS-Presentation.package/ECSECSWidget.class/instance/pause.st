accessing
pause

	self simulationIndicator color: Color gray.
	self simulationProcess suspend.
	self isSimulating: false.
	self simulationButton
		removeAllMorphs;
		add: (PHIcon perform: #iconPlay)