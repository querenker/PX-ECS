initialize-release
createMethodOverviewSlide

	^ PHWidget new
		withLayout;
		expand: true;
		add: (PHPage column
			expand: true;
			add: PHWidget spacer;
			add: ((PHLabel text: 'something with method overview')
				pointSize: 70;
				align: #(center center)))