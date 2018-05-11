as yet unclassified
withEntityManager: anEntityManager drawSurface: aDrawSurface

	| instance |
	instance := self with: anEntityManager.
	instance drawSurface: aDrawSurface.
	^ instance.