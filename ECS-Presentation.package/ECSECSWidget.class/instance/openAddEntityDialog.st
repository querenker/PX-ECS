UI Building
openAddEntityDialog

	| dialog textArea |
	dialog := ECSPHDialog new.
	textArea := PHTextArea placeholder: 'enter name'.
	
	dialog content: (PHPage new
		withPadding;
		add: (textArea expand: true);
		add: ((PHButton text: 'Accept')
			when: #clicked
			send: #accept:
			to: dialog
			with: nil;
			align: #(center center))).
	
	" opening a dialog returns a promise that can be rejected/accepted with PHDialog>>accept:/cancel: Closing the dialog cancel:'s "
	(dialog openFor: self)
		then: [self showComponentsFor: (self addEntityNamed: textArea text)];
		ifRejected: ["self topLevel displayNotification: 'No entity created' asString type: #danger"]