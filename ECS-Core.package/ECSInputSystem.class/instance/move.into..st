actions
move: anEntity into: aPointDirection
	"just a helper for the move functions"
	
	(anEntity hasComponentOfType: #motion ) ifTrue: [anEntity motionComponent velocity: aPointDirection]