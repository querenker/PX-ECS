ECS Logic
addSystem: aSystem

	self systems add: aSystem.
	self systemSidebar add: (ECSSystemToggleWidget for: aSystem).
	^ aSystem