initialize-release
createECSNameSlide

	^ PHWidget new
		withLayout;
		expand: true;
		add: (PHPage column
			expand: true;
			add: PHWidget spacer;
			add: ((PHLabel text: 'E ntities group together components')
				pointSize: 70;
				align: #(center center));
			add: ((PHLabel text: 'C omponents contain data')
				align: #(center center);
				pointSize: 70);
			add: ((PHLabel text: 'S ystems contain behavior')
				align: #(center center);
				pointSize: 70);
			add: PHWidget spacer).