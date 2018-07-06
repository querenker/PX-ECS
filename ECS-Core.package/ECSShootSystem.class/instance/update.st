as yet unclassified
update

	(self entityManager eventManager eventsOfTyp: #shoot) do: [:event |
		| spawnPoint direction bullet |
		spawnPoint := event at: #spawnPoint.
		direction := event at: #direction.
		bullet := self createBullet.
		bullet positionComponent position: spawnPoint.
		bullet motionComponent velocity: direction.]