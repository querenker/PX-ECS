accessing
getEntities

	^ self entityProvider entities select: [:each |
		each hasComponentOfType: self class type]