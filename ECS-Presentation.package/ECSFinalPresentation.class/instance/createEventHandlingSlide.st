initialize-release
createEventHandlingSlide

	^ ECSSlideWithTitle
		title: 'Event Handling'
		content: (PHWidget new
			withLayout;
			align: #(center center);
			expand: true;
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures sequence))