accessing
doesNotUnderstand: aMessage
	
	^ self entityManager componentOfType: aMessage selector for: self entityId.  