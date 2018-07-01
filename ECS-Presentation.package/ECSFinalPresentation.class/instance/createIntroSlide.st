initialize-release
createIntroSlide

	^ ECSSlideWithTitle
		title: 'Introduction'
		content: (PHPage column
			add: ((PHLabel text: 'An Entity Component System (ECS) is')
				pointSize: 45);
			add: ((PHLabel text: '- a non-object-oriented architectural pattern')
				pointSize: 45);
			add: ((PHLabel text: '- used in games and simulations')
				pointSize: 45))