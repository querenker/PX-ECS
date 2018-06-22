ECS Logic
addSystem: aSystem

	self systems add: aSystem.
	self halt.
	self systemSidebar add: (ECSSystemToggleWidget for: aSystem).
	^ aSystem