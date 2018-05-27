UI Building
showComponentsFor: anEntity

	| button componentDropdown |
	self resetComponentSidebar.
	
	button := (PHButton label: 'Add Component' iconSuffix: #iconPlus).
	componentDropdown := (PHDropdown new
		attachTo: button;
		add: ((PHDropdownItem label: 'ColoredRectangle')
			when: #clicked
			send: #addComponent:to:
			to: self
			withArguments: {ECSColoredRectangleComponent . anEntity});
		add: ((PHDropdownItem label: 'Gravity')
			when: #clicked
			send: #addComponent:to:
			to: self
			withArguments: {ECSGravityComponent . anEntity});
		add: ((PHDropdownItem label: 'Position')
			when: #clicked
			send: #addComponent:to:
			to: self
			withArguments: {ECSPositionComponent . anEntity});
		add:((PHDropdownItem label: 'Picture')
			when: #clicked
			send: #addComponent:to:
			to: self
			withArguments: {ECSPictureComponent . anEntity})).
	
	self componentSidebar
		add: self createComponentsForEntityLabel;
		add: button.
	
	(self entityManager allComponentsOf: anEntity) do: [:aComponent |
		self displayComponent: aComponent]