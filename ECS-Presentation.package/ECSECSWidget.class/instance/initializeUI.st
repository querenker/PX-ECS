initialization
initializeUI

	self
		withLayout;
		vertical: true;
		extent: self initialExtent;
		expand: true;
		add: (PHPage row
			expand: true;
			add: (PHPage column
				expand: true;
				add: (PHPage row
					add: self createPlaygroundSimulationButtons;
					add: (ECSMorphContainer with: self simulationIndicator));
				add: self createPlaygroundContainer;
				add: self entitySidebar);
			add: self componentSidebar)