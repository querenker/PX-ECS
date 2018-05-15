initialize-release
initialize
	
	super initialize.
	
	self initializeFirstSlide.
	
	self
		addSlide: self createSlideIntroduction;
		addSlide: self createSlideOldEssay;
		addSlide: self createSlidePhenoEssay.
		
	self showFirstSlide