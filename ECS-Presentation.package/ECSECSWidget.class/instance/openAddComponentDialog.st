UI Building
openAddComponentDialog

	| dialog componentNameTextArea componentFieldHolder |
	dialog := ECSPHDialog new.
	componentNameTextArea := PHTextArea placeholder: 'enter name'.
	componentFieldHolder := ECSComponentFieldHolder new.
	
	dialog title: 'Add Component'.
	dialog content: (PHPage new
		withPadding;
		add: (componentNameTextArea);
		add: (componentFieldHolder);
		add: ((PHButton text: 'Add field')
			when: #clicked
			send: #addComponentField
			to: componentFieldHolder;
			align: #(center center));
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
			componentClass := (self createComponent: componentNameTextArea text withFields: (componentFieldHolder componentFields)).
			self addComponent: componentClass to: self currentEntity entityId];
		ifRejected: []