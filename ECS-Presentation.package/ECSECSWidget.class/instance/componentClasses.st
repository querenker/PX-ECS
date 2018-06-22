ECS Logic
componentClasses

	^ OrderedCollection new
		add: ECSColoredRectangleComponent;
		add: ECSPositionComponent;
		add: ECSMotionComponent;
		add: ECSCollisionComponent;
		add: ECSInputComponent;
		add: ECSPictureComponent;
		yourself