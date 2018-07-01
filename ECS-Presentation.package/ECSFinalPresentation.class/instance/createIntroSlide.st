initialize-release
createIntroSlide

	^ ECSSlideWithTitle
		title: '(Game Programming) Pattern'
		content: (PHPage column
			add: ((PHLabel text: '- ECS is a non-object-oriented architectural pattern')
				pointSize: 45);
			add: ((PHLabel text: '- mostly used in games')
				pointSize: 45);
			add: ((PHLabel text: '- very cool')
				pointSize: 45))