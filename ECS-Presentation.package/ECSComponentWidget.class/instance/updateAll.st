UI
updateAll

	self componentTextValueAssociation keysAndValuesDo: [:instVarName :textArea |
		textArea text: (self component perform: (instVarName asSymbol)) asString]