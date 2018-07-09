initialize-release
createIndirectionSlide

	^ ECSSlideWithTitle
		title: 'Indirection'
		content: (PHPage column
			add: PHWidget spacer;
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures indirectionSlide);
			add: PHWidget spacer)