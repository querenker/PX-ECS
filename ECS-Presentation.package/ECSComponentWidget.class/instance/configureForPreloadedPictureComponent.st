UI
configureForPreloadedPictureComponent

	| widgetPage |
	
	
	widgetPage := PHPage column.
	
	self component class allInstVarNames do: [:instVarName | | textArea label instVarPage instVarSetter button dropdown |

		label := PHLabel text: instVarName.
		textArea := PHTextArea new text: (self component perform: instVarName asSymbol) asString.
		instVarSetter := instVarName, ':'.
		
		textArea
		when: #confirmed
		evaluate: [:x | component perform: instVarSetter asSymbol with: (Compiler evaluate: textArea text)].
		
		instVarPage := PHPage row.
		
		widgetPage add: (instVarPage
			add: label;
			add: textArea).
		
		button := (PHButton icon: #iconCamera).
		dropdown := PHDropdown new.
		
		ECSPictures preloadedPictureIdentifiers do: [:identifier |
			dropdown add: ((PHDropdownItem label: identifier asString)
				when: #clicked
				send: instVarSetter asSymbol
				to: self component
				with: identifier)].
		
		dropdown attachTo: button.
		
		instVarPage
			add: (button)].
	
	self contentWidget add: widgetPage