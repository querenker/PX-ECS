as yet unclassified
mouseDown: event

	| entity |
	entity := ECSOldEntity new.
	self
		addEntity: entity;
		addMorph: entity.
	entity position: event position.