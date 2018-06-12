as yet unclassified
entitiesWithComponentOfType: aType

	| entityIds |
	entityIds := (self componentStore at: aType ifAbsent: Dictionary new) keys.
	^ entityIds collect: [:entityId | ECSEntityHandle for: entityId with: self]
	