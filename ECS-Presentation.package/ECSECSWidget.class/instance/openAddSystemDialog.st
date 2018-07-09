UI Building
openAddSystemDialog

	| dialog systemNameTextArea componentFilterTextArea sourceCodeTextArea |
	dialog := ECSPHDialog new.
	systemNameTextArea := PHTextArea placeholder: 'enter name'.
	componentFilterTextArea := PHTextArea placeholder: 'add component filters'.
	sourceCodeTextArea := PHTextArea placeholder: 'enter code which will be applied to each entity'.
	
	dialog title: 'Add System'.
	dialog content: (PHPage new
		withPadding;
		add: (systemNameTextArea expand: true);
		add: (componentFilterTextArea);
		add: (sourceCodeTextArea);
		add: ((PHButton text: 'Accept')
			when: #clicked
			send: #accept:
			to: dialog
			with: nil;
			align: #(center center))).
	
	" opening a dialog returns a promise that can be rejected/accepted with PHDialog>>accept:/cancel: Closing the dialog cancel:'s "
	(dialog openFor: self)
		then: [
			|componentFilterTags systemClass |
			componentFilterTags := ((componentFilterTextArea text splitBy: ' ')collect: [:tag | tag asSymbol]) asArray.
			systemClass := (self createSystem: systemNameTextArea text componentFilter: componentFilterTags updateMethod: sourceCodeTextArea text).
			self addSystem: (systemClass with: self entityManager)];
		ifRejected: ["self topLevel displayNotification: 'No system created' asString type: #danger"]