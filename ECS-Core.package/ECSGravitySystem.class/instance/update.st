as yet unclassified
update

	| entities |
	entities := (entityMgr entitiesWithComponentOfTyp: #gravity).
	entities keysAndValuesDo: [:entity :gravComponent | 
		|posComponent|
		posComponent := (self entityMgr componentOfType: #position for: entity).
		posComponent position: posComponent position + (0@(gravComponent gravity))]