initialization
initializeDefaultInstVars

	self entities: OrderedCollection new.
	self playground: ECSCanvasMorph new.
	self entitySidebar: self createEntitySidebar.
	self componentSidebar: self createComponentSidebar.
	self simulationIndicator: self createSimulationIndicator