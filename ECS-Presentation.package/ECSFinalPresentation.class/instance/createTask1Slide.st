initialize-release
createTask1Slide

	| content |
	content := PHWidget new
		withLayout;
		expand: true;
		add: PHWidget spacer;
		add: ECSPresetTask1 new;
		add: PHWidget spacer.
		
	^ ECSSlideWithTitle
		title: 'Task 1: Working with premade components and systems'
		content: (PHWidget new withLayout ; add: content)