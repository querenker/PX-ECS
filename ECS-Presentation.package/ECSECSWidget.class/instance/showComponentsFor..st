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
			withArguments: {ECSColoredRectangleComponent . anEntity entityId });
		add: ((PHDropdownItem label: 'Gravity')
			when: #clicked
			send: #addComponent:to:
			to: self
			withArguments: {ECSGravityComponent . anEntity entityId });
		add: ((PHDropdownItem label: 'Position')
			when: #clicked
			send: #addComponent:to:
			to: self
			withArguments: {ECSPositionComponent . anEntity entityId });
		add: ((PHDropdownItem label: 'Motion')
			when: #clicked
			send: #addComponent:to:
			to: self
			withArguments: {ECSMotionComponent . anEntity entityId });
		add:((PHDropdownItem label: 'Picture')
			when: #clicked
			send: #addComponent:to:
			to: self
			withArguments: {ECSPictureComponent . anEntity entityId })).
	
	self componentSidebar
		add: self createComponentsForEntityLabel;
		add: button.
	
	(self entityManager allComponentsOf: anEntity) do: [:aComponent |
		self displayComponent: aComponent]