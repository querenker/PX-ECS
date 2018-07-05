actions
moveRight: anEntity
	
	| direction |
	direction := (1 @ 0).
	
	self move: anEntity into: direction