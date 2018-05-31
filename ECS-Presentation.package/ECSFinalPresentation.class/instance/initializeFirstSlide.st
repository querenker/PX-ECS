initialize-release
initializeFirstSlide

	self currentSlide
		withLayout;
		add: (PHPage column
			expand: true;
			add: PHWidget spacer;
			add: ((PHLabel text: 'PX Final Presentation - ECS Essay')
				pointSize: 80;
				align: #(center center));
			add: ((PHLabel text: 'by Alexander Riese, Eva Krebs')
				align: #(center center);
				pointSize: 40);
			add: PHWidget spacer).