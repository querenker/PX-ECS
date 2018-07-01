initialize-release
initialize
	
	super initialize.
	
	self initializeFirstSlide.
	
	self
		addSlide: self createIntroSlide;
		addSlide: self createInheritanceSlide;
		addSlide: self createAttributeOrgaSlide;
		addSlide: self createECSNameSlide;
		addSlide: self createTask1Slide;
		addSlide: self createTask2Slide;
		addSlide: self createMinimalGameSlide;
		addSlide: self createPerformanceSlide;
		addSlide: self createFinalSlide.
		
	self showFirstSlide