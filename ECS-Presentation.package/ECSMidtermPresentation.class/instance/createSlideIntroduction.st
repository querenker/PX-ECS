UI Building
createSlideIntroduction

	^ PHWidget new
		expand: true;
		withLayout;
		add: (PHPage column
			withLayout;
			expand: true;
			add: (PHLabel text: '- topic: Entity Component System');
			add: (PHLabel text: '- ECS is a programming pattern');
			add: (PHLabel text: '- currently used for video games');
			add: (PHLabel text: '- entities can have functionality of multiple domains in form of components');
			add: (PHLabel text: '- systems have logic and act based on components'))