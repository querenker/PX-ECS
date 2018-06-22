UI Building
createComponentsDropdownButtonFor: anEntity

	| button componentDropdown |
	button := (PHButton label: 'Add Component' iconSuffix: #iconPlus).
	componentDropdown := (PHDropdown new
		attachTo: button;
		add: (self dropdownItemFor: ECSColoredRectangleComponent labeled: 'ColoredRectangle' withEntity: anEntity);
		add: (self dropdownItemFor: ECSPositionComponent labeled: 'Position' withEntity: anEntity);
		add: (self dropdownItemFor: ECSMotionComponent labeled: 'Motion' withEntity: anEntity);
		add: (self dropdownItemFor: ECSCollisionComponent labeled: 'Collision' withEntity: anEntity);
		add: (self dropdownItemFor: ECSInputComponent labeled: 'Input' withEntity: anEntity);
		add: (self dropdownItemFor: ECSPictureComponent labeled: 'Picture' withEntity: anEntity)).
	^ button