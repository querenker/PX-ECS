initialization
initializeUI

	self toggleSystemSidebar: self createSystemToggleSidebar.

	self
		withLayout;
		vertical: true;
		extent: self initialExtent;
		expand: true;
		add: (PHPage row
			expand: true;
			add: self toggleSystemSidebar;
			add: (PHPage column
				expand: true;
				add: (PHPage row
					add: self simulationButton;
					add: self simulationResetButton;
					add: (ECSMorphContainer with: self simulationIndicator));
				add: self createPlaygroundContainer;
				add: self entitySidebar);
			add: self componentSidebar)