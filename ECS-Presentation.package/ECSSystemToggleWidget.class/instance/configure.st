accessing
configure

	self checkboxWithLabel:  (PHCheckboxWithLabel label: self system class asString) toggleChecked.
	self checkboxWithLabel checkbox when: #enabled send: #enableSystem to: self.
	self checkboxWithLabel checkbox when: #disabled send: #disableSystem to: self.
	self add: self checkboxWithLabel