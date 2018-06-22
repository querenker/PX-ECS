UI Building
createRenameCurrentEntityButton

	^ (PHButton text: 'Rename')
		when: #clicked
			send: #openRenameEntityDialog
			to: self