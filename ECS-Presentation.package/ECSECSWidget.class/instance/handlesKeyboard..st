as yet unclassified
handlesKeyboard: evt

	self keyboardObserver do: [:each | each handlesKeyboard: evt].
	^ true