UI Building
createComponentSidebar

	^ PHPage column
		withLayout;
		expand: true;
		addStyleClass: #withPadding;
		color: Color lightGray;
		add: self createEmptyComponentsForEntityLabel