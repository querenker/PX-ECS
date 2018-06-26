initialize-release
createIntroSlide

	^ PHWidget new
		withLayout;
		expand: true;
		add: (PHPage column
			expand: true;
			add: ((PHLabel text: '(Game Programming) Pattern')
				pointSize: 80;
				align: #(center center));
			add: ((PHLabel text: '- ECS is a non-object-oriented architectural pattern')
				align: #(center center);
				pointSize: 60);
			add: ((PHLabel text: '- mostly used in games')
				align: #(center center);
				pointSize: 60);
			add: PHWidget spacer).