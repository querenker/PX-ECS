UI
openInputChooserFor: keyActionMapping

	| dialog keyTextArea actionTextArea actionDropdownButton dropdown |
	dialog := PHDialog new.
	keyTextArea := PHTextArea placeholder: 'enter key'.
	actionTextArea := PHTextArea placeholder: 'enter action'.
	actionDropdownButton := PHButton label: 'Actions'.
	dropdown := PHDropdown new.
	
	ECSInputSystem actions do: [:action | | item |
		item := (PHDropdownItem label: action asString).
		item
			when: #clicked
			send: #text:
			to: actionTextArea
			with: item text.
		dropdown add: item].
	
	dropdown attachTo: actionDropdownButton.
	
	dialog content: (PHPage new
		withPadding;
		add: (keyTextArea expand: true);
		add: (PHPage row
			expand: true;
			add: (actionTextArea expand: true);
			add: actionDropdownButton);
		add: ((PHButton text: 'Accept')
			when: #clicked
			send: #accept:
			to: dialog
			with: nil;
			align: #(center center))).
	
	" opening a dialog returns a promise that can be rejected/accepted with PHDialog>>accept:/cancel: Closing the dialog cancel:'s "
	(dialog openFor: self)
		then: [keyActionMapping at: keyTextArea text asCharacter put: actionTextArea text asSymbol];
		ifRejected: [self topLevel displayNotification: 'No key->action' asString type: #danger]