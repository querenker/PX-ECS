as yet unclassified
for: anEntityId with: anEntityManager

	| instance |
	instance := self new.
	instance entityId: anEntityId.
	instance entityManager: anEntityManager.
	^ instance