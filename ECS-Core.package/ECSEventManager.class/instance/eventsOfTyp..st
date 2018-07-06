accessing
eventsOfTyp: anEventTyp

	^ self events at: anEventTyp ifAbsent: OrderedCollection new.