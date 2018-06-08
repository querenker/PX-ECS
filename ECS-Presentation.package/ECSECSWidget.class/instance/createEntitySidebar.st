UI Building
createEntitySidebar

	| button |
	button := (PHButton label: 'Entities' iconSuffix: #iconCaret_down).
	self entityDropdown: (PHDropdown new attachTo: button).

	^ PHPage row
		withLayout;
		align: #(center center);
		add: button;
		add: ((PHButton icon: #iconPlus)
			when: #clicked
			send: #openAddEntityDialog
			to: self)