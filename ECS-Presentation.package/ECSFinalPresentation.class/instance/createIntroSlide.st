initialize-release
createIntroSlide

	^ ECSSlideWithTitle
		title: 'Introduction'
		content: (PHPage column
			add: ((PHLabel text: 'An Entity Component System (ECS) is')
				pointSize: 45);
			add: ((PHLabel text: '- a  software pattern')
				pointSize: 45);
			add: ((PHLabel text: '- non-object-oriented')
				pointSize: 45);
			add: ((PHLabel text: '- used in games and simulations')
				pointSize: 45);
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures introSlideGameExample))