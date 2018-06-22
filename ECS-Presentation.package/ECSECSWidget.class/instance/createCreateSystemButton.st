UI Building
createCreateSystemButton

	^ (PHButton icon: #iconPlus) when: #clicked send: #openAddSystemDialog to: self