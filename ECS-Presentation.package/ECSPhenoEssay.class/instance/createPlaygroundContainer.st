UI Building
createPlaygroundContainer

	^ PHWidget new
		withLayout;
		align: #(center center);
		addStyleClass: #withPadding;
		color: Color lightGray;
		add: (ECSMorphContainer with: self playground)