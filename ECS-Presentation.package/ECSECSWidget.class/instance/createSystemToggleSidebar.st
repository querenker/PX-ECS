UI Building
createSystemToggleSidebar

	self systemSidebar: PHPage column.
	self systems do: [:system | self systemSidebar add: (ECSSystemToggleWidget for: system)].
	^ PHPage column
		minSize: 200@10;
		add: self systemSidebar;
		add: self createSystemButton.