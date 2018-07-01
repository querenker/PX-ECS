as yet unclassified
initializeECS

	| entity |
	super initializeECS.
	
	entity := self entityManager createEntityNamed: 'Player'.
	entity addComponent: ECSPositionComponent withStandardValues.
	entity addComponent: ECSColoredRectangleComponent withStandardValues.	
	