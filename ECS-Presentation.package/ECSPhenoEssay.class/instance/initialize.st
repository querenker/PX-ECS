accessing
initialize

	super initialize.
	
	self entities: OrderedCollection new.
	self playground: ECSCanvasMorph new.
	self entitySidebar: self createEntitySidebar.
	self componentSidebar: self createComponentSidebar.
	
	self
		isRunning: false;
		entityManager: ECSEntityManager new;
		systems: (OrderedCollection new
			add: (ECSRenderingSystem withEntityManager: self entityManager drawSurface: self playground);
			add: (ECSGravitySystem with: self entityManager);
			yourself).
		
	self
		withLayout;
		vertical: true;
		extent: self initialExtent;
		add: (PHPage row
			add: (PHPage column
				add: (PHButtonGroup new
					add: ((PHButton icon: #iconPlay) when: #clicked send: #startEssay to: self);
					add: ((PHButton icon: #iconPause) when: #clicked send: #pauseEssay to: self);
					add: ((PHButton icon: #iconStop) when: #clicked send: #stopEssay to: self));
				add: (ECSMorphContainer with: self playground);
				add: self entitySidebar);
			add: self componentSidebar)