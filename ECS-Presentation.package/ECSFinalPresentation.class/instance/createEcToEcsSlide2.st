initialize-release
createEcToEcsSlide2

	^ ECSSlideWithTitle
		title: 'Entity Component Pattern'
		content: (PHPage column
			add: PHWidget spacer;
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures ecToEcsSlide2);
			add: PHWidget spacer)