initialize-release
createEcToEcsSlide3

	^ ECSSlideWithTitle
		title: 'Entity Component Pattern - Introducing Systems'
		content: (PHPage column
			add: PHWidget spacer;
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures ecToEcsSlide3);
			add: PHWidget spacer)