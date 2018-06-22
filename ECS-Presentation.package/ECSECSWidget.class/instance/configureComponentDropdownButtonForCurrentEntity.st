UI Building
configureComponentDropdownButtonForCurrentEntity

	self addComponentToEntityButton clearDropdownItems.
	self currentEntity ifNotNil: [
		self componentClasses do: [ :componentClass |
			(self component: componentClass canBeAddedTo: self currentEntity)
				ifTrue: [self addComponentToEntityButton
					addDropdownItem: (self dropdownItemFor: componentClass
						withEntity:  self currentEntity)]]].
	self addComponentToEntityButton shouldBeUpdated: false