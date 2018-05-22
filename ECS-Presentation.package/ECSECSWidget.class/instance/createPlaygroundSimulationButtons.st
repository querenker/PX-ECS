UI Building
createPlaygroundSimulationButtons

	^ PHButtonGroup new
		align: #(center center);
		add: ((PHButton icon: #iconPlay) when: #clicked send: #startEssay to: self);
		add: ((PHButton icon: #iconPause) when: #clicked send: #pauseEssay to: self);
		add: ((PHButton icon: #iconStop) when: #clicked send: #stopEssay to: self)