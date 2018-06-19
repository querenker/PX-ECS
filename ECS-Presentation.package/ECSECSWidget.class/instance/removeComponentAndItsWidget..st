ECS Logic
removeComponentAndItsWidget: aComponentWidget

	| entity |
	entity := self currentEntity.
	self removeComponentAndItsWidget: aComponentWidget from: entity