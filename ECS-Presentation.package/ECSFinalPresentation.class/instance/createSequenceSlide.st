initialize-release
createSequenceSlide

	^ ECSSlideWithTitle
		title: 'Sequence'
		content: (PHWidget new
			withLayout;
			align: #(center center);
			expand: true;
			add: (PHImage new
				align: #(center center);
				form: ECSPictures sequence))