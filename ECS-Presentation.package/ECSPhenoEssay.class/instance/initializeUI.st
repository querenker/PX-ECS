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
				add: self createPlaygroundSimulationButtons;
				add: self createPlaygroundContainer;
				add: self entitySidebar);
			add: self componentSidebar)