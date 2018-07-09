initialize-release
createPerformanceSlide3

	^ ECSSlideWithTitle
		title: 'Performance'
		content: (PHPage column
			add: PHWidget spacer;
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures performance3);
			add: PHWidget spacer)