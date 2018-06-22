UI Building
configureChooseEntityButton

	self chooseEntityButton clearDropdownItems.
	self entities ifNotNil: [
		self entities do: [ :entity |
			self chooseEntityButton
				addDropdownItem: ((PHDropdownItem label: entity name)
					when: #clicked
					send: #showComponentsFor:
					to: self
					with: entity)]].
	self chooseEntityButton shouldBeUpdated: false