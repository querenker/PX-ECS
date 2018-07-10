initialize-release
createECSNameSlide

		^ PHWidget new
		withLayout;
		add: (PHPage column
			expand: true;
			align: #(center center);
			add: ((PHLabel markup: '<b><span color="#A03">E</span></b>ntities group together components', String cr,
									 '<b><span color="#A03">C</span></b>omponents contain data', String cr,
									 '<b><span color="#A03">S</span></b>ystems contain behavior')
				pointSize: 80;
				align: #(center center));
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures ecsNameSlideVisual)).