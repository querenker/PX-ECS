as yet unclassified
entitiesWithComponentOfTyp: aTyp

	| entityIds |
	entityIds := (self componentStore at: aTyp ifAbsent: Dictionary new) keys.
	^ entityIds collect: [:entityId | ECSEntityHandle for: entityId with: self]
	