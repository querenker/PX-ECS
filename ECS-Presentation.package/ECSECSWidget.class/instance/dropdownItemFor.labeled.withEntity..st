UI Building
dropdownItemFor: aComponent labeled: aLabel withEntity: anEntity

	^ ((PHDropdownItem label: aLabel)
			when: #clicked
			send: #addComponent:to:
			to: self
			withArguments: {aComponent . anEntity entityId })