initialization
initializeUI

	self
		withLayout;
		vertical: true;
		extent: self initialExtent;
		expand: true;
		add: (PHPage row
			expand: true;
			add: (self createSystemToggleSidebar);
			add: (PHPage column
				expand: true;
				add: (PHPage row
					add: self simulationButton;
					add: (ECSMorphContainer with: self simulationIndicator));
				add: self createPlaygroundContainer;
				add: self entitySidebar);
			add: (PHPage column
					add: self componentSidebar;
					add: self createCreateComponentButton))