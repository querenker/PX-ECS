as yet unclassified
createSummarySlide

	^ ECSSlideWithTitle
		title: 'Summary'
		content: (PHPage column
			add: ((PHLabel text: 'An Entity Component System (ECS)')
				pointSize: 45);
			add: ((PHLabel text: '- consists of entities (identities), components (basic data) and systems (behaviour)')
				pointSize: 45);
			add: ((PHLabel text: '- has to be combined with other patterns for certain use cases')
				pointSize: 45);
			add: ((PHLabel text: '- prevents diamond of death')
				pointSize: 45);
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures ecsNameSlideVisual))