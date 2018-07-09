initialize-release
createInheritanceSlide3

	^ ECSSlideWithTitle
		title: 'Building a Game with Inheritance'
		content: (PHPage column
			add: PHWidget spacer;
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures inheritanceSlide3);
			add: PHWidget spacer)