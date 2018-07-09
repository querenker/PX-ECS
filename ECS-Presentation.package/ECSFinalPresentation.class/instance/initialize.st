initialize-release
initialize
	
	super initialize.
	
	self spacePressed: false.
	
	"title"
	self initializeFirstSlide.
	
	self
		"intro"
		addSlide: self createIntroSlide;
		"What is an ECS part"
		addSlide: self createInheritanceSlide1;
		addSlide: self createInheritanceSlide2;
		addSlide: self createInheritanceSlide3;
		addSlide: self createAttributeOrgaSlide;
		addSlide: self createSystemSlide;
		addSlide: self createECSNameSlide;
		"Our Tool and ECS Architecture part"
		addSlide: self createTask1Slide;
		addSlide: self createTask2Slide;
		addSlide: self createArchitectureSlide;
		addSlide: self createMinimalGameSlide;
		"Advantages and Disadvantages"
		addSlide: self createPerformanceSlide;
		addSlide: self createTask3Slide;
		addSlide: self createEventHandlingSlide;
		"Summary + Questions"
		addSlide: self createSummarySlide;
		addSlide: self createFinalSlide.
		
	self showFirstSlide