initialize-release
createArchitectureSlide

	^ ECSSlideWithTitle
		title: 'Architecture'
		content: (PHWidget new
			withLayout;
			align: #(center center);
			expand: true;
			add: (PHImage new
				align: #(center center);
				form: ECSPictures architecture))