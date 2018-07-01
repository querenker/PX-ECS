initialize-release
createMinimalGameSlide

	| content |
	content := PHWidget new
		withLayout;
		expand: true;
		add: PHWidget spacer;
		add: ECSPresetMVG new;
		add: PHWidget spacer.
		
	^ ECSSlideWithTitle
		title: 'Small Example Game'
		content: (PHWidget new withLayout ; add: content)