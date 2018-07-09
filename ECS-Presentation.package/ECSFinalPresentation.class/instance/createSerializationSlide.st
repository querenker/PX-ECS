initialize-release
createSerializationSlide

	^ ECSSlideWithTitle
		title: 'Serialization'
		content: (PHWidget new
			vertical: false;
			withLayout;
			align: #(center center);
			expand: true;
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures monster);
			add: (PHWidget new minSize: 20@20);
			add: (PHImage new
				align: #(center center);
				framed: false;
				form: ECSPictures wizard);
			add: (PHWidget new minSize: 60@20);
			add: (PHPage column
				add: ((PHLabel text: 'Enemy')
					pointSize: 45);
				add: ((PHLabel text: '')
					pointSize: 45);
				add: ((PHLabel text: 'position: 10@10')
					pointSize: 45);
				add: ((PHLabel text: 'collision: #deadly')
					pointSize: 45);
				add: ((PHLabel text: 'picture: monsterPicture')
					pointSize: 45);
				add: ((PHLabel text: 'follows: playerId')
					pointSize: 45)))