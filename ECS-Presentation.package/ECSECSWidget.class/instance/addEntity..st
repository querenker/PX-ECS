ECS Logic
addEntity: anEntity

	self entities add: anEntity.
	self entityDropdown
		add: ((PHDropdownItem label: anEntity name)
			when: #clicked
			send: #showComponentsFor:
			to: self
			with: anEntity).
	^ anEntity