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
		addSlide: self createEcToEcsSlide1;
		addSlide: self createEcToEcsSlide2;
		addSlide: self createEcToEcsSlide3;
		addSlide: self createECSNameSlide;
		"Our Tool and ECS Architecture part"
		addSlide: self createTask1Slide;
		addSlide: self createTask2Slide;
		addSlide: self createArchitectureSlide;
		addSlide: self createMinimalGameSlide;
		"Advantages and Disadvantages"
		addSlide: self createPerformanceSlide1;
		addSlide: self createPerformanceSlide2;
		addSlide: self createPerformanceSlide3;
		addSlide: self createPerformanceSlide4;
		addSlide: self createTask3Slide;
		addSlide: self createSerializationSlide;
		addSlide: self createEventHandlingSlide;
		addSlide: self createIndirectionSlide;
		"Summary + Questions"
		addSlide: self createSummarySlide;
		addSlide: self createFinalSlide.
		
	self showFirstSlide