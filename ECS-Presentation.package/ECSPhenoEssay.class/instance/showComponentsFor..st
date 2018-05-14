accessing
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
			withArguments: {ECSRepresentationComponent . anEntity})).
	
	self componentSidebar
		add: (PHLabel text: 'Entity: ', anEntity);
		add: button.
	
	(self entityManager allComponentsOf: anEntity) do: [:aComponent |
		self displayComponent: aComponent]