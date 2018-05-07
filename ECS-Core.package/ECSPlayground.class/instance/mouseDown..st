as yet unclassified
mouseDown: event

	| entity |
	entity := ECSEntity new.
	self
		addEntity: entity;
		addMorph: entity.
	entity position: event position.