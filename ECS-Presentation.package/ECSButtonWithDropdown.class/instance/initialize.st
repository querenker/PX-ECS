initialize-release
initialize

	super initialize.
	
	self
		shouldBeUpdated: false;
		dropdown: (PHDropdown new
			attachTo: self)