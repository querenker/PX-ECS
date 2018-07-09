initialize-release
createPerformanceSlide1

	^ ECSSlideWithTitle
		title: 'Performance'
		content: (PHPage column
			add: PHWidget spacer;
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures performance1);
			add: PHWidget spacer)