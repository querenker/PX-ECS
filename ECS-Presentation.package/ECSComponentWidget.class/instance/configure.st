UI
configure

	| page |
	
	self removeAllMorphs.
	page := PHPage column
		add: (PHLabel text: self component className).
	self component class allInstVarNames do: [:instVarName | | textArea instVarSetter label |

		label := PHLabel text: instVarName.		
		textArea := PHTextArea new text: (self component perform: instVarName asSymbol) asString.
		instVarSetter := instVarName, ':'.

		textArea
		when: #confirmed
		evaluate: [:x | component perform: instVarSetter asSymbol with: (Compiler evaluate: textArea text)].
		
		page add: (PHPage row
			add: label;
			add: textArea).
		self componentTextValueAssociation at: instVarName put: textArea].
	self add: page