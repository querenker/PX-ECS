initialization
createSystem: aSystemName componentFilter: aComponentFilter updateMethod: aUpdateMethod

	| system methodSource |
	system := self createSystem: aSystemName.
	methodSource := self systemUpdateMethodTemplate format: { aComponentFilter .  aUpdateMethod }.
	system compile: methodSource.
	^ system
	