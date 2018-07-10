initialization
initializeDefaultInstVars

	self entities: OrderedCollection new.
	self playground: ECSCanvasMorph new.
	self entitySidebar: self createEntitySidebar.
	self addComponentToEntityButton: (ECSButtonWithDropdown
		label: 'Add Component'
		iconSuffix: #iconPlus).
	self componentsForEntityWidget: (PHWidget newWithVerticalLayout
		addStyleClass: #withPadding).
	self componentSidebar: self createComponentSidebar.
	self simulationIndicator: self createSimulationIndicator.
	self simulationButton: self createPlaygroundSimulationButton.
	self simulationResetButton: self createSimulationResetButton.
	self createSystemButton: self createCreateSystemButton.
	self isSimulating: false.
	self keyboardObserver: OrderedCollection new.