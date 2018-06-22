UI Building
createEntitySidebar

	self chooseEntityButton: (ECSButtonWithDropdown label: 'Entities' iconSuffix: #iconCaret_down).

	^ PHPage row
		withLayout;
		align: #(center center);
		add: self chooseEntityButton;
		add: ((PHButton icon: #iconPlus)
			when: #clicked
			send: #openAddEntityDialog
			to: self)