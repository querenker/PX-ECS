initialize-release
initializeFirstSlide

	self currentSlide
		withLayout;
		add: (PHPage column
			expand: true;
			add: PHWidget spacer;
			add: ((PHLabel text: 'PX Final Presentation - ECS Essay')
				"ToDo: find out how to change font"
				pointSize: 50;
				align: #(center center));
			add: ((PHLabel text: 'by Alexander Riese, Eva Krebs')
				align: #(center center));
			add: PHWidget spacer).