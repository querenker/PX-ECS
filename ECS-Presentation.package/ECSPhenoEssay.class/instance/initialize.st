accessing
initialize

	super initialize.
	self
		withLayout;
		vertical: true;
		extent: self initialExtent;
		add: (PHButton label: 'Hello');
		add: (PHButton label: 'Hello')