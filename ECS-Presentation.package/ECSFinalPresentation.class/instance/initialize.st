initialize-release
initialize
	
	super initialize.
	
	self spacePressed: false.
	
	self initializeFirstSlide.
	
	self
		addSlide: self createIntroSlide;
		addSlide: self createInheritanceSlide;
		addSlide: self createAttributeOrgaSlide;
		addSlide: self createSystemSlide;
		addSlide: self createECSNameSlide;
		addSlide: self createTask1Slide;
		addSlide: self createTask2Slide;
		addSlide: self createArchitectureSlide;
		addSlide: self createMinimalGameSlide;
		addSlide: self createPerformanceSlide;
		addSlide: self createTask3Slide;
		addSlide: self createEventHandlingSlide;
		addSlide: self createSummarySlide;
		addSlide: self createFinalSlide.
		
	self showFirstSlide