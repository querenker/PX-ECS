initialize-release
createPerformanceSlide4

	^ ECSSlideWithTitle
		title: 'Performance'
		content: (PHPage column
			add: PHWidget spacer;
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures performance4);
			add: PHWidget spacer)