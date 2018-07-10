UI Building
updateSystemToggleSidebar

	self toggleSystemSidebar removeAllMorphs.

	self systemSidebar: PHPage column.
	self systems do: [:system | self systemSidebar add: (ECSSystemToggleWidget for: system)].
	
	self toggleSystemSidebar add: self systemSidebar; add: self createSystemButton.