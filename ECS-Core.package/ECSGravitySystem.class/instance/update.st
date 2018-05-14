as yet unclassified
update

	| entities |
	entities := (entityMgr entitiesWithComponentOfTyp: #gravity) keys.
	entities do: [:entity | (self entityMgr componentOfType: #representation for: entity) position - (0@10)]