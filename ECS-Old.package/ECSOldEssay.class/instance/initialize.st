as yet unclassified
initialize
	
	super initialize.
	self playground: ECSOldPlayground new.
	self
		color: Color gray;
		extent: 300@300;
		systems: OrderedCollection new;
		layoutPolicy: TableLayout new;
		addMorph: self playground;
		addMorph: (ECSOldStepButton with: self).
	self systems add: (ECSOldColorSystem with: self).