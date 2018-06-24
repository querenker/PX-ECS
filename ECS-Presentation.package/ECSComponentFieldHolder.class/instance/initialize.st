as yet unclassified
initialize

	super initialize.
	self fieldTextAreas: OrderedCollection new.
	self componentFieldPage: PHPage column.
	self add: self componentFieldPage.