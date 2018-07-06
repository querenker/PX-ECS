actions
shoot: anEntity
	
	| direction spawnRectangle spawnPoint directionToSpawnPoint |
	(anEntity hasComponentOfType: #position) ifFalse: [^ self].
	direction := (anEntity hasComponentOfType: #motion) ifTrue: [anEntity motionComponent velocity] ifFalse: [0@0].
	spawnRectangle := (anEntity hasComponentOfType: #collision)
		ifTrue: [anEntity collisionComponent collisionBoundary translateBy: anEntity positionComponent position]
		ifFalse: [Rectangle center: anEntity positionComponent position extent: 0@0].
	directionToSpawnPoint := Dictionary newFrom: {
		(-1@0) -> (spawnRectangle topLeft - ((spawnRectangle width)@0)).
		(1@0) -> (spawnRectangle topRight) .
		(0@ -1) -> (spawnRectangle topLeft - (0@(spawnRectangle height))).
		(0@1) -> (spawnRectangle bottomLeft)}.
	spawnPoint := directionToSpawnPoint at: direction ifAbsent: spawnRectangle center.
	self entityManager eventManager addEvent: (Dictionary newFrom: {#spawnPoint -> spawnPoint . #direction -> (direction * 2)}) ofTyp: #shoot. 