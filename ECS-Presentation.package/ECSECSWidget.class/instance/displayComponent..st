UI Building
displayComponent: aComponent

	self componentsForEntityWidget
		add: (ECSComponentWidget
			component: aComponent
			parentUI: self)