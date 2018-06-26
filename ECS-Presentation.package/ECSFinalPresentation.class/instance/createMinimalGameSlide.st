initialize-release
createMinimalGameSlide

	"TODO: add actual game here"
	^ PHWidget new
		withLayout;
		expand: true;
		add: PHWidget spacer;
		add: ECSECSWidget new;
		add: PHWidget spacer