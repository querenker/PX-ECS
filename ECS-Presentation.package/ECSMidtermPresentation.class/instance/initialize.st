as yet unclassified
initialize
	
	super initialize.
	
	self currentSlide
		withLayout;
		add: (PHPage column
			expand: true;
			add: PHWidget spacer;
			add: ((PHLabel heading: 'PX Midterm Presentation - ECS')
				align: #(center center));
			add: ((PHLabel text: 'by Alexander Riese, Eva Krebs')
				align: #(center center));
			add: PHWidget spacer).
	
	self
		addSlide: (PHWidget new
			add: (PHLabel heading: 'Midterm Presentation PX - ECS');
			align: #(start center));
		addSlide: (PHWidget new add: ECSPhenoEssay new).
		
	self showFirstSlide