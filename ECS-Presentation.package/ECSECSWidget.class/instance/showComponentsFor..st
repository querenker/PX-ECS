UI Building
showComponentsFor: anEntity

	| button componentDropdown |
	self currentEntity: anEntity.
	self resetComponentSidebar.
	
	button := (PHButton label: 'Add Component' iconSuffix: #iconPlus).
	componentDropdown := (PHDropdown new
		attachTo: button;
		add: (self dropdownItemFor: ECSColoredRectangleComponent labeled: 'ColoredRectangle' withEntity: anEntity);
		add: (self dropdownItemFor: ECSGravityComponent labeled: 'Gravity' withEntity: anEntity);
		add: (self dropdownItemFor: ECSPositionComponent labeled: 'Position' withEntity: anEntity);
		add: (self dropdownItemFor: ECSMotionComponent labeled: 'Motion' withEntity: anEntity);
		add: (self dropdownItemFor: ECSCollisionComponent labeled: 'Collision' withEntity: anEntity);
		add: (self dropdownItemFor: ECSInputComponent labeled: 'Input' withEntity: anEntity);
		add: (self dropdownItemFor: ECSPictureComponent labeled: 'Picture' withEntity: anEntity)).
	
	self componentSidebar
		add: self createComponentsForEntityLabel;
		add: button.
	
	anEntity components do: [:aComponent |
		self displayComponent: aComponent]