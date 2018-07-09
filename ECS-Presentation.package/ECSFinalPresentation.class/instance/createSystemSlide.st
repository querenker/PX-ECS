initialize-release
createSystemSlide

	^ ECSSlideWithTitle
		title: 'Systems'
		content: (PHWidget new
			withLayout;
			align: #(center center);
			expand: true;
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures systemSlide))