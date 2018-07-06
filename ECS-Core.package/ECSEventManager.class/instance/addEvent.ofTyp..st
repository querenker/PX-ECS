as yet unclassified
addEvent: anEvent ofTyp: anEventTyp

	self events at: anEventTyp put: ((self eventsOfTyp: anEventTyp) add: anEvent; yourself).