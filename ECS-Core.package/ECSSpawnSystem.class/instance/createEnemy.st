as yet unclassified
createEnemy

	| enemyEntity |
	enemyEntity := self entityManager createEntity.
	enemyEntity addComponent: ECSPositionComponent withStandardValues.
	enemyEntity addComponent: ECSColoredRectangleComponent withStandardValues.
	enemyEntity addComponent: ECSCollisionComponent withStandardValues.
	enemyEntity addComponent: ECSHealthComponent withStandardValues.
	enemyEntity addComponent: ECSMotionComponent withStandardValues.
	enemyEntity addComponent: ECSFollowComponent withStandardValues.
	enemyEntity healthComponent health: 1.
	enemyEntity collisionComponent collisionTag: #deadly.
	"enemyEntity motionComponent velocity: ((((Random new nextInt: 10) - 5)@((Random new nextInt: 10)) - 5) normalized)."
	^ enemyEntity