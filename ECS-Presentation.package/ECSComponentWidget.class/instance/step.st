UI
step

	self componentTextValueAssociation keysAndValuesDo: [ :instVarName :textArea |
		textArea hasFocus
			ifFalse: [ textArea text: (self component perform: (instVarName asSymbol)) asString ]]