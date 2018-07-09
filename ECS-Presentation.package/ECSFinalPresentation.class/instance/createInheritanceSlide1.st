initialize-release
createInheritanceSlide1

	^ ECSSlideWithTitle
		title: 'Building a Game with Inheritance'
		content: (PHPage column
			add: PHWidget spacer;
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures inheritanceSlide1);
			add: PHWidget spacer)