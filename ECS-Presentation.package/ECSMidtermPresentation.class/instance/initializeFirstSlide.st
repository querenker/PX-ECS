initialize-release
initializeFirstSlide

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