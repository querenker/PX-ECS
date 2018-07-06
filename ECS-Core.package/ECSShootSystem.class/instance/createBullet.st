as yet unclassified
createBullet

	| bulletEntity |
	bulletEntity := self entityManager createEntity.
	bulletEntity addComponent: ECSPositionComponent withStandardValues.
	bulletEntity addComponent: ECSColoredRectangleComponent withStandardValues.
	bulletEntity addComponent: ECSCollisionComponent withStandardValues.
	bulletEntity addComponent: ECSHealthComponent withStandardValues.
	bulletEntity addComponent: ECSMotionComponent withStandardValues.
	bulletEntity healthComponent health: 1.
	^ bulletEntity