accessing
addComponent: aComponent

	self halt.
	self entityManager addComponent: aComponent to: self entityId. 