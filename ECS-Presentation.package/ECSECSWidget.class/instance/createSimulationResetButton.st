UI Building
createSimulationResetButton

	^ (PHButton icon: #iconUndo) when: #clicked send: #resetSimulation to: self