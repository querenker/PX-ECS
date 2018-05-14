accessing
createEntitySidebar

	| button |
	button := (PHButton label: 'Entities' iconSuffix: #iconCaret_down).
	self entityDropdown: (PHDropdown new attachTo: button).

	^ PHPage row
		withLayout;
		add: button;
		add: ((PHButton icon: #iconPlus)
			when: #clicked
			send: #addEntity
			to: self)