UI
step

	self componentTextValueAssociation do: [:textArea |
		textArea hasFocus ifFalse: [self update]]