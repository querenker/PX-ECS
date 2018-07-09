initialize-release
createECSNameSlide

		^ PHWidget new
		withLayout;
		add: (PHPage column
			expand: true;
			align: #(center center);
			add: ((PHLabel markup: '<i>E</i> ntities group together components', String cr,
									 '<i>C</i> omponents contain data', String cr,
									 '<i>S</i> ystems contain behavior')
				pointSize: 80;
				align: #(center center));
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures ecsNameSlideVisual)).