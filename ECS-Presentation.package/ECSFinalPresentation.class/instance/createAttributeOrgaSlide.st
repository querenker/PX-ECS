initialize-release
createAttributeOrgaSlide

	^ PHWidget new
		withLayout;
		expand: true;
		add: (PHPage column
			expand: true;
			add: PHWidget spacer;
			add: ((PHLabel text: 'something with attribute organisation')
				pointSize: 70;
				align: #(center center)))