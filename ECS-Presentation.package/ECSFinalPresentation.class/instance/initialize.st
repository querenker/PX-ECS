initialize-release
initialize
	
	super initialize.
	
	self initializeFirstSlide.
	
	self
		"addSlide: self createIntroSlide;
		addSlide: self createInheritanceSlide;
		addSlide: self createMethodOverviewSlide;"
		addSlide: self createAttributeOrgaSlide.
		"addSlide: self createECSNameSlide;
		addSlide: self createTask1Slide;
		addSlide: self createTask2Slide;
		addSlide: self createTask3Slide;
		addSlide: self createMinimalGameSlide;
		addSlide: self createPerformanceSlide."
		
	self showFirstSlide