actions
moveUp: anEntity
	
	| direction |
	direction := (0@ -1).
	
	self move: anEntity into: direction