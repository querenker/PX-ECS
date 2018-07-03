initialize-release
createECSNameSlide

		^ PHWidget new
		withLayout;
		add: (PHPage column
			expand: true;
			align: #(center center);
			add: ((PHLabel markup: '<b>E</b>ntities group together components', String cr,
									 '<b>C</b>omponents contain data', String cr,
									 '<b>S</b>ystems contain behavior')
				pointSize: 80;
				align: #(center center))).