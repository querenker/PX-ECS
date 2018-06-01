as yet unclassified
update	
	
	| entities |
	entities := (entityManager entitiesWithComponentOfTyp: #motion).
	entities keysAndValuesDo: [:entity :motionComponent | 
		|posComponent|
		posComponent := (self entityManager componentOfType: #position for: entity).
		posComponent position: posComponent position + motionComponent velocity.
		motionComponent velocity: motionComponent velocity + motionComponent acceleration]