UI Building
showComponentsFor: anEntity

	| button componentDropdown |
	self resetComponentSidebar.
	
	button := (PHButton label: 'Add Component' iconSuffix: #iconPlus).
	componentDropdown := (PHDropdown new
		attachTo: button;
		add: ((PHDropdownItem label: 'Representation')
			when: #clicked
			send: #addComponent:to:
			to: self
			withArguments: {ECSRepresentationComponent . anEntity});
		add: ((PHDropdownItem label: 'Gravity')
			when: #clicked
			send: #addComponent:to:
			to: self
			withArguments: {ECSGravityComponent . anEntity});
		add: ((PHDropdownItem label: 'Position')
			when: #clicked
			send: #addComponent:to:
			to: self
			withArguments: {ECSPositionComponent . anEntity})).
	
	self componentSidebar
		add: self createComponentsForEntityLabel;
		add: button.
	
	(self entityManager allComponentsOf: anEntity) do: [:aComponent |
		self displayComponent: aComponent]