accessing
addEntity

	self currentEntity: self entityManager createEntity.
	self entities add: self currentEntity.
	self entityDropdown
		add: ((PHDropdownItem label: 'Entity', currentEntity asString)
			when: #clicked
			send: #showComponentsFor:
			to: self
			with: currentEntity)