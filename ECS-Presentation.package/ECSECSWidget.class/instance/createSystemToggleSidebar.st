UI Building
createSystemToggleSidebar

	self systemSidebar: PHPage column.
	self systems do: [:system | self systemSidebar add: (ECSSystemToggleWidget for: system)].
	^ PHPage column add: self systemSidebar; add: self createSystemButton.