as yet unclassified
addComponent: aComponent to: anEntity

	| store |
	store := self componentStore at: (aComponent class type) ifAbsent: Dictionary new.
	store at: anEntity put: aComponent.
	self componentStore at: (aComponent class type) put: store.