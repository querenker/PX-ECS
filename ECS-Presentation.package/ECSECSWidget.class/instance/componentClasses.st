ECS Logic
componentClasses

	^ OrderedCollection new
		add: ECSColoredRectangleComponent;
		add: ECSPositionComponent;
		add: ECSMotionComponent;
		add: ECSCollisionComponent;
		add: ECSInputComponent;
		add: ECSPictureComponent;
		add: ECSHealthComponent;
		add: ECSBurnComponent;
		add: ECSSpawnComponent;
		add: ECSFollowComponent;
		add: ECSTeleportComponent;
		yourself