UI Building
openAddComponentDialog

	| dialog componentNameTextArea componentFieldsTextArea |
	dialog := PHDialog new.
	componentNameTextArea := PHTextArea placeholder: 'enter name'.
	componentFieldsTextArea := PHTextArea placeholder: 'add component fields'.
	
	dialog title: 'Add Component'.
	dialog content: (PHPage new
		withPadding;
		add: (componentNameTextArea expand: true);
		add: (componentFieldsTextArea);
		add: ((PHButton text: 'Accept')
			when: #clicked
			send: #accept:
			to: dialog
			with: nil;
			align: #(center center))).
	
	" opening a dialog returns a promise that can be rejected/accepted with PHDialog>>accept:/cancel: Closing the dialog cancel:'s "
	(dialog openFor: self)
		then: [
			| componentClass |
			componentClass := (self createComponent: componentNameTextArea text withFields: (componentFieldsTextArea text splitBy: ' ')).
			self addComponent: componentClass to: self currentEntity];
		ifRejected: [self topLevel displayNotification: 'No system created' asString type: #danger]