ECS Logic
addCurrentEntity

	self entities add: self currentEntity.
	self entityDropdown
		add: ((PHDropdownItem label: currentEntity name)
			when: #clicked
			send: #showComponentsFor:
			to: self
			with: currentEntity)