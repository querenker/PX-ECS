as yet unclassified
initialize

	super initialize.
	self minSize: 100@200.
	self fieldTextAreas: OrderedCollection new.
	self componentFieldPage: PHPage column.
	self add: self componentFieldPage.