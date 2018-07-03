initialize-release
createTask3Slide

	| content |
	content := PHWidget new
		withLayout;
		expand: true;
		add: PHWidget spacer;
		add: ECSPresetTask3 new;
		add: PHWidget spacer.
		
	^ ECSSlideWithTitle
		title: 'Task 3: Toggling systems'
		content: (PHWidget new withLayout ; add: content)