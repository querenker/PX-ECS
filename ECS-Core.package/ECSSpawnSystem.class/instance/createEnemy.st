as yet unclassified
createEnemy

	| enemyEntity |
	enemyEntity := self entityManager createEntity.
	enemyEntity addComponent: ECSPositionComponent withStandardValues.
	enemyEntity addComponent: ECSPictureComponent withStandardValues.
	enemyEntity addComponent: (ECSCollisionComponent withStandardValues collisionTags: #(deadly solid)).
	enemyEntity addComponent: ECSHealthComponent withStandardValues.
	enemyEntity addComponent: ECSMotionComponent withStandardValues.
	enemyEntity addComponent: ECSFollowComponent withStandardValues.
	enemyEntity pictureComponent picturePath: (FileDirectory default pathName,  '/monster.png').
	enemyEntity healthComponent health: 1.
	"enemyEntity motionComponent velocity: ((((Random new nextInt: 10) - 5)@((Random new nextInt: 10)) - 5) normalized)."
	^ enemyEntity