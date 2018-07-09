initialize-release
createEcToEcsSlide1

	^ ECSSlideWithTitle
		title: 'Entity Component Pattern'
		content: (PHPage column
			add: PHWidget spacer;
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures ecToEcsSlide1);
			add: PHWidget spacer)