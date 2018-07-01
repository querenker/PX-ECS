initialize-release
createFinalSlide

	^ PHWidget new
		withLayout;
		add: (PHPage column
			expand: true;
			add: PHWidget spacer;
			add: ((PHLabel text: 'Questions?')
				pointSize: 80;
				align: #(center center));
			add: PHWidget spacer).