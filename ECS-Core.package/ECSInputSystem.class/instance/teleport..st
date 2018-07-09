actions
teleport: anEntity
	
	self entityManager eventManager addEvent: (Dictionary newFrom: {#entity -> anEntity}) ofTyp: #teleport. 