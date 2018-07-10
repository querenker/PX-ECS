ECS Logic
resetSimulation

	self systems do: [:system | system disable].
	
	self chooseEntityButton clearDropdownItems.
	self entities: OrderedCollection new.
	self entityManager reset.
	self chooseEntityButton shouldBeUpdated: true.
	self initializePresetEntities.
	
	self systems do: [:system | system enable].
	
	self updateSystemToggleSidebar