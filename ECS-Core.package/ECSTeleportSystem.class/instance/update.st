as yet unclassified
update
	
	(self entityManager eventManager eventsOfTyp: #teleport) do: [:event |
		| entity |
		entity := event at: #entity.
		((entity hasComponentOfType: #teleport) and: [entity hasComponentOfType: #position]) ifTrue: [
			|  random newX newY |
			random := Random new.
			newX := (random nextInt: entity teleportComponent teleportArea x) - 1.
			newY := (random nextInt: entity teleportComponent teleportArea y) - 1.
			entity positionComponent position: newX@newY]]