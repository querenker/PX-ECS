accessing
configure

	self removeAllMorphs.
	
	self
		add: (PHPage column
			expand: true;
			add: ((PHLabel text: self title)
				pointSize: 60;
				align: #(center center));
			add: (PHPage row
				expand: true;
				add: (PHWidget new minSize:  100@10);
				add: (self content expand: true);
				add: (PHWidget new minSize:  100@10)))