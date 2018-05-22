UI Building
createPlaygroundSimulationButtons

	^ PHButtonGroup new
		align: #(center center);
		add: ((PHButton icon: #iconPlay) when: #clicked send: #resume to: self simulationProcess);
		add: ((PHButton icon: #iconPause) when: #clicked send: #suspend to: self simulationProcess);
		add: ((PHButton icon: #iconStop) when: #clicked send: #terminate to: self simulationProcess)