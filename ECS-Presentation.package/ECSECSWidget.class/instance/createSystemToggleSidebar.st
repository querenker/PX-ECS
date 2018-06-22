UI Building
createSystemToggleSidebar

	| page |
	page := PHPage column.
	
	self systems do: [:system | page add: (ECSSystemToggleWidget for: system)].
	
	^ page