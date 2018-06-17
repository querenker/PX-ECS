initialization
initializeDefaultInstVars

	self entities: OrderedCollection new.
	self playground: ECSCanvasMorph new.
	self entitySidebar: self createEntitySidebar.
	self componentSidebar: self createComponentSidebar.
	self simulationIndicator: self createSimulationIndicator.
	self simulationButton: self createPlaygroundSimulationButton.
	self createSystemButton: self createCreateSystemButton.
	self isSimulating: false.
	self keyboardObserver: OrderedCollection new.