as yet unclassified
step

	self getEntities do: [:each | each color: (each getComponentOfType: self class type) color]