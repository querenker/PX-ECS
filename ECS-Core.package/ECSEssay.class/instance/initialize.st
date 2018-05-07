as yet unclassified
initialize
	
	super initialize.
	self playground: ECSPlayground new.
	self
		color: Color gray;
		extent: 300@300;
		systems: OrderedCollection new;
		layoutPolicy: TableLayout new;
		addMorph: self playground;
		addMorph: (ECSStepButton with: self).
	self systems add: (ECSColorSystem with: self).