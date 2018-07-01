initialize-release
createECSNameSlide

	| content |
	content := PHWidget new
		withLayout;
		expand: true;
		add: (PHPage column
			add: (PHWidget new minSize:  10@50 withScalingFactor);
			add: ((PHLabel text: 'E')
				pointSize: 73);
			add: ((PHLabel text: 'C')
				pointSize: 73);
			add: ((PHLabel text: 'S')
				pointSize: 73);
				add: PHWidget spacer);
				
			add: (PHPage column
				expand: true;
				add: (PHWidget new minSize:  10@50 withScalingFactor);
				add: ((PHLabel text: 'ntities group together components')
					pointSize: 70";"
					"align: #(center center)");
				add: ((PHLabel text: 'omponents contain data')
					pointSize: 70";"
					"align: #(center center)");
				add: ((PHLabel text: 'ystems contain behavior')
					pointSize: 70";"
					"align: #(center center)");
				add: PHWidget spacer).
			
	^ ECSSlideWithTitle
		title: ''
		content: (PHWidget new withLayout ; add: content)