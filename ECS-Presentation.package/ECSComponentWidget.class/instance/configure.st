UI
configure

	| widgetPage removeButton |
	
	self cardNameWidget removeAllMorphs.
	self contentWidget removeAllMorphs.
	
	removeButton := (PHButton icon: #iconTrash) when: #clicked send: #removeMe to: self.
	self cardNameWidget
		add:(PHLabel subHeading: self component className)
		oppositeTo: removeButton.
		
	(component className asString asLowercase includesSubstring: 'input') ifTrue: [self configureForInputComponent.
		^ self].
	
	(component className asString asLowercase includesSubstring: 'preloadedpic')
		ifTrue: [self configureForPreloadedPictureComponent.
			^ self].
	
	widgetPage := PHPage column.
	
	self component class allInstVarNames do: [:instVarName | | textArea instVarSetter label instVarPage |

		label := PHLabel text: instVarName.
		textArea := PHTextArea new text: (self component perform: instVarName asSymbol) asString.
		instVarSetter := instVarName, ':'.
		textArea
		when: #confirmed
		evaluate: [:x | | newValue |
			(Compiler evaluate: textArea text)
			ifNil: [newValue := textArea text] 
			 ifNotNilDo: [:result | newValue := result].
			 component perform: instVarSetter asSymbol with: newValue].
		
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
	
	self contentWidget add: widgetPage