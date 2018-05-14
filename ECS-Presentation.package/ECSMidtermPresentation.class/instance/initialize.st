as yet unclassified
initialize

	super initialize.
	
	self
		addSlide: (PHWidget new
			add: (PHLabel heading: 'Midterm Presentation PX - ECS');
			align: #(start center));
		addSlide: (PHWidget new add: ECSPhenoEssay new)