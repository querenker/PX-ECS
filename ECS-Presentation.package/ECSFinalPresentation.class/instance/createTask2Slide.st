initialize-release
createTask2Slide

	| content |
	content := PHWidget new
		withLayout;
		expand: true;
		add: PHWidget spacer;
		add: ECSPresetTask2 new;
		add: PHWidget spacer.
		
	^ ECSSlideWithTitle
		title: 'Task 2: Creating your own components and systems'
		content: (PHWidget new withLayout ; add: content)