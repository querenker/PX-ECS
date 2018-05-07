as yet unclassified
initialize
	
	super initialize.
	self
		color: Color gray;
		extent: 300@300;
		layoutPolicy: TableLayout new;
		addMorph: ECSPlayground new;
		addMorph: SimpleButtonMorph new;
		addMorph: SimpleButtonMorph new