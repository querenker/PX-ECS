as yet unclassified
createSummarySlide

	^ ECSSlideWithTitle
		title: 'Summary'
		content: (PHWidget new
			withLayout;
			align: #(center center);
			add: (PHPage row
				expand: true;
				add: ((PHLabel markup: '<b><span color="#060">Advantages</span></b>',
										String cr, String cr,
										' - decouples multiple domains', String cr,
										' - simplifies code reuse', String cr,
										' - data-oriented design', String cr,
										' - multi-threaded design')
					pointSize: 80;
					align: #(center center));
				add: ((PHLabel markup: '<b><span color="#600">Disadvantages</span></b>',
										String cr, String cr,
										' - adds indirection (complexity)', String cr,
										' - inter system communication')
					pointSize: 80;
					align: #(center center)))).