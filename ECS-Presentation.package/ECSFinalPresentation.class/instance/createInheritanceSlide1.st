initialize-release
createInheritanceSlide1

	^ ECSSlideWithTitle
		title: 'Building a Game with Inheritance'
		content: (PHPage column
			add: PHWidget spacer;
			add: (PHImage new
				align: #(center center);
				form: ECSPictures inheritanceSlide1);
			add: PHWidget spacer)