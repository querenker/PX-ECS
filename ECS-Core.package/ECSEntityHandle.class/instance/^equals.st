accessing
= other

	self class = other class ifFalse: [^ false].
	^ self entityId = other entityId and: self entityManager = other entityManager