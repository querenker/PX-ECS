UI Building
createCreateComponentButton

	^ (PHButton icon: #iconPlus) when: #clicked send: #openAddComponentDialog to: self