initialize-release
createPerformanceSlide

	^ ECSSlideWithTitle
		title: 'Performance'
		content: (PHWidget new
			withLayout;
			expand: true;
			add: PHWidget spacer;
			add: (PHImage new
			align: #(center center);
			scalingMode: #shrink;
			minSize: 800 asPoint;
			form: ECSPictures performanceSlide);
			add: PHWidget spacer)