as yet unclassified
componentFields

	^ self fieldTextAreas collect: [:fieldTextArea | 
		fieldTextArea collect: [:componentSubField |
			componentSubField text]]