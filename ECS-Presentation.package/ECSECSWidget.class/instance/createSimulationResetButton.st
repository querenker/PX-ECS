UI Building
createSimulationResetButton

	^ (PHButton icon: #iconUndo) when: #clicked send: #shouldReset: to: self with: true