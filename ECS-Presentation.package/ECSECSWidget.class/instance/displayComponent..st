UI Building
displayComponent: aComponent

	self componentSidebar
		add: (ECSComponentWidget
			component: aComponent
			parentUI: self)