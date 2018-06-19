UI Building
openAddSystemDialog

	| dialog systemNameTextArea componentFilterTagList sourceCodeTextArea |
	dialog := PHDialog new.
	systemNameTextArea := PHTextArea placeholder: 'enter name'.
	componentFilterTagList := PHWritableTagList new.
	sourceCodeTextArea := PHTextArea placeholder: 'enter code which will be applied to each entitiy'.
	
	dialog title: 'Add System'.
	dialog content: (PHPage new
		withPadding;
		add: (systemNameTextArea expand: true);
		add: (componentFilterTagList);
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
			|componentFilterTags |
			componentFilterTags := (componentFilterTagList tags collect: [:tag | tag asSymbol]) asArray.
			self createSystem: systemNameTextArea text componentFilter: componentFilterTags updateMethod: sourceCodeTextArea text];
		ifRejected: [self topLevel displayNotification: 'No system created' asString type: #danger]