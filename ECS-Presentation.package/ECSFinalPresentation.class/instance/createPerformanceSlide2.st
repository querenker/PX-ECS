initialize-release
createPerformanceSlide2

	^ ECSSlideWithTitle
		title: 'Performance'
		content: (PHPage column
			add: PHWidget spacer;
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures performance2);
			add: PHWidget spacer)