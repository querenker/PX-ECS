UI Building
createComponentSidebar

	^ PHPage column
		withLayout;
		expand: true;
		addStyleClass: #withPadding;
		color: Color lightGray lighter;
		add: self createEmptyComponentsForEntityLabel