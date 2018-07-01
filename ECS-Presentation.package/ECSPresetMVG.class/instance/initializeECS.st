as yet unclassified
initializeECS

	| entity |
	super initializeECS.
	
	entity := self addEntityNamed: 'Player'.
	entity addComponent: ECSPositionComponent withStandardValues.
	entity addComponent: ECSColoredRectangleComponent withStandardValues.	
	