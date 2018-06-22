UI Building
showComponentsFor: anEntity

	self currentEntity: anEntity.
	self resetComponentSidebar.
	self configureComponentDropdownButtonForCurrentEntity.
	
	self componentSidebar
		add: (PHPage row
			add: self createComponentsForEntityLabel
			oppositeTo: self createRenameCurrentEntityButton);
		add: self addComponentToEntityButton;
		add: (PHScrollArea new
			policy: #(show scroll);
			content: self componentsForEntityWidget).
	
	anEntity components do: [:aComponent |
		self displayComponent: aComponent]