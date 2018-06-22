UI Building
createSystemToggleSidebar

	self systemSidebar: PHPage column.
	self systems do: [:system | self systemSidebar add: (ECSSystemToggleWidget for: system)].
	^ self systemSidebar