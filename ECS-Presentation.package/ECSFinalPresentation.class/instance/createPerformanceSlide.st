initialize-release
createPerformanceSlide

	^ ECSSlideWithTitle
		title: 'Performance'
		content: (PHWidget new
			withLayout;
			align: #(center center);
			expand: true;
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures performanceSlide))