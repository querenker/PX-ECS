UI Building
createSlideOldEssay

	^ PHWidget new
		"add: ECSOldEssay new"
		expand: true;
		align: #(center center);
		withLayout;
		vertical: true;
		add: ((PHButton label: 'Old Essay in Morphic')
			when: #clicked
			send: #open
			to: ECSOldEssay;
			align: #(center center));
		add: (PHTextArea text: 'self addComponent: ECSOldRandomColorComponent new');
		add: (PHTextArea text: 'self addComponent: ECSOldStaticColorComponent new')