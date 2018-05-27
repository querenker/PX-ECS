UI
openPictureChooserFor: aComponentInstVarNameSymbol

	| fc stream |
	fc := FileChooser new.
	fc initializeAsSystemWindowWithCaptionPane.
	fc setCaption: 'Select a picture file' translated.
	fc setSuffixes: {'png' . 'jpg' . 'jpeg' }.
	stream := fc open.
	stream
		ifNotNil: [ | instVarSetter |
			instVarSetter := aComponentInstVarNameSymbol, ':'.
			component perform: instVarSetter asSymbol with: stream name]