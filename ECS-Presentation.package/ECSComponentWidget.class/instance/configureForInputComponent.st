UI
configureForInputComponent

	| widgetPage |
	
	
	widgetPage := PHPage column.
	
	self component class allInstVarNames do: [:instVarName | | textArea label instVarPage |

		label := PHLabel text: instVarName.
		textArea := PHTextArea new text: ((self component perform: instVarName asSymbol) className) asString.
		
		textArea
		when: #confirmed
		evaluate: [:x | (component perform: instVarName asSymbol) inspect].
		
		instVarPage := PHPage row.
		
		widgetPage add: (instVarPage
			add: label;
			add: textArea).
		
		instVarPage
			add: ((PHButton icon: #iconPlus)
				when: #clicked
				send: #openInputChooserFor:
				to: self
				with:  (component perform: instVarName asSymbol))].
	
	self contentWidget add: widgetPage