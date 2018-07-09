initialize-release
initializeFirstSlide

	self currentSlide
		withLayout;
		add: (PHPage column
			expand: true;
			add: PHWidget spacer;
			add: ((PHLabel text: 'Entity Component System')
				pointSize: 80;
				align: #(center center));
			add: ((PHLabel text: 'Seminar Programming Experience')
				align: #(center center);
				pointSize: 60);
			add: PHWidget spacer;
			add: ((PHLabel text: 'by Alexander Riese, Eva Krebs')
				align: #(center center);
				pointSize: 40);
			add: ((PHLabel text: 'Prof. Dr. Robert Hirschfeld, Jens Lincke, Stefan Ramson')
				align: #(center center);
				pointSize: 40);
			add: ((PHLabel text: '11. July 2018 - Summer term 2018 - Hasso Plattner Institute - Software Architectures Group')
				align: #(center center);
				pointSize: 40))