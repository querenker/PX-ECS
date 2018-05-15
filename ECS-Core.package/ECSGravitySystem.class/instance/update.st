as yet unclassified
update

	| entities |
	entities := (entityMgr entitiesWithComponentOfTyp: #gravity).
	entities keysAndValuesDo: [:entity :gravComponent | 
		|repComponent|
		repComponent := (self entityMgr componentOfType: #representation for: entity).
		repComponent position: repComponent position + (0@(gravComponent gravity))]