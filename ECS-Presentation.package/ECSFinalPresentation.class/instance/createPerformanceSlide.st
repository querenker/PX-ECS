initialize-release
createPerformanceSlide

	^ PHWidget new
		withLayout;
		expand: true;
		add: (PHPage column
			expand: true;
			add: PHWidget spacer;
			add: ((PHLabel text: 'something with performance')
				pointSize: 70;
				align: #(center center)))