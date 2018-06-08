as yet unclassified
for: anEntityId with: anEntityManager named: aString

	| instance |
	instance := self new.
	instance entityId: anEntityId.
	instance entityManager: anEntityManager.
	instance name: aString.
	^ instance