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
		title: 'Encapsulated Behavior and Debugging'
		content: (PHWidget new withLayout ; add: content)