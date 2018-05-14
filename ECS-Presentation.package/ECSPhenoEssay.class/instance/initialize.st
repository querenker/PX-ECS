accessing
initialize

	super initialize.
	self playground: Morph new.
	self
		withLayout;
		vertical: true;
		extent: self initialExtent;
		add: (PHButtonGroup new
			add: ((PHButton icon: #iconPlay) when: #clicked send: #startEssay to: self);
			add: ((PHButton icon: #iconPause) when: #clicked send: #pauseEssay to: self);
			add: ((PHButton icon: #iconStop) when: #clicked send: #stopEssay to: self));
		add: (ECSMorphContainer with: self playground);
		add: (ECSMorphContainer with: ECSCanvasMorph new)