initialize-release
createInheritanceSlide

	^ PHWidget new
		withLayout;
		expand: true;
		add: (PHPage column
			expand: true;
			add: PHWidget spacer;
			add: ((PHLabel text: 'something with inheritance')
				pointSize: 70;
				align: #(center center)))