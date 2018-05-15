UI Building
createSlidePhenoEssay

	^ PHWidget new
		withLayout;
		expand: true;
		add: PHWidget spacer;
		add: ECSPhenoEssay new;
		add: PHWidget spacer