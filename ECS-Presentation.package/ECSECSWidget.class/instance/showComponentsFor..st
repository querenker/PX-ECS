UI Building
showComponentsFor: anEntity

	| button |
	self currentEntity: anEntity.
	self resetComponentSidebar.
	
	button := self createComponentsDropdownButtonFor: anEntity.
	
	self componentSidebar
		add: self createComponentsForEntityLabel;
		add: button.
	
	anEntity components do: [:aComponent |
		self displayComponent: aComponent]