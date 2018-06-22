UI Building
dropdownItemFor: aComponentClass labeled: aLabel withEntity: anEntity

	^ ((PHDropdownItem label: aLabel)
			when: #clicked
			send: #addComponent:to:
			to: self
			withArguments: {aComponentClass . anEntity entityId })