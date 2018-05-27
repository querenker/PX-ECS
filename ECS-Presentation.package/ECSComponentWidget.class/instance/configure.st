UI
configure

	| widgetPage |
	
	self removeAllMorphs.
	widgetPage := PHPage column
		add: (PHLabel text: self component className).
	self component class allInstVarNames do: [:instVarName | | textArea instVarSetter label instVarPage |

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
		
		(instVarName asString asLowercase includesSubstring: 'path')
			ifTrue: [ instVarPage
				add: ((PHButton icon: #iconPlus)
					when: #clicked
					send: #openPictureChooserFor:
					to: self
					with: instVarName asSymbol)]. 
		
		self componentTextValueAssociation at: instVarName put: textArea].
	
	self add: widgetPage