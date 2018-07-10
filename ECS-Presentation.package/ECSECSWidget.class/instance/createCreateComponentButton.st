UI Building
createCreateComponentButton

	^ (PHButton label: 'Create Component' iconSuffix: #iconPlus) when: #clicked send: #openAddComponentDialog to: self