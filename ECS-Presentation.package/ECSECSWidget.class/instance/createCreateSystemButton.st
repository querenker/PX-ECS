UI Building
createCreateSystemButton

	^ (PHButton icon: #iconCogs) when: #clicked send: #openAddSystemDialog to: self