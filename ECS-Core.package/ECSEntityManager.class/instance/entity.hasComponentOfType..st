as yet unclassified
entity: anEntity hasComponentOfType: aSymbol

	| store |
	store := self componentStore at: aSymbol ifAbsent: Dictionary new.
	^ store at: anEntity ifPresent: [true] ifAbsent: [false]

	