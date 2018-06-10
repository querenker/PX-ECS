as yet unclassified
withEntityManager: anEntityManager inputSubject: anInputSubject

	| instance |
	instance := super with: anEntityManager.
	anInputSubject keyboardObserver add: instance.
	^ instance