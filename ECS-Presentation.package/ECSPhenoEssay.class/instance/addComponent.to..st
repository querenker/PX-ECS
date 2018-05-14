accessing
addComponent: aComponentClass to: anEntity

	| component |
	component := aComponentClass withStandardValues.
	self entityManager addComponent: component to: anEntity.
	self componentSidebar add: (ECSComponentWidget with: component)