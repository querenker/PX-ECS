as yet unclassified
createBullet

	| bulletEntity |
	bulletEntity := self entityManager createEntity.
	bulletEntity addComponent: ECSPositionComponent withStandardValues.
	bulletEntity addComponent: ECSPictureComponent withStandardValues.
	bulletEntity addComponent: (ECSCollisionComponent withStandardValues collisionTags: #(deadly fire)).
	bulletEntity addComponent: ECSHealthComponent withStandardValues.
	bulletEntity addComponent: ECSMotionComponent withStandardValues.
	bulletEntity healthComponent health: 1.
	bulletEntity pictureComponent picturePath: (FileDirectory default pathName,  '/fireball.png').
	^ bulletEntity