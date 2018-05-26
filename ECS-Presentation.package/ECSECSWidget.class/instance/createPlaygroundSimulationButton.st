UI Building
createPlaygroundSimulationButton

	^ (PHButton icon: #iconPlay) when: #clicked send: #toggleSimulation to: self