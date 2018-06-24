as yet unclassified
addComponentField

	| fieldNameTextArea fieldValueTextArea |
	fieldNameTextArea := PHTextArea placeholder: 'field name'.
	fieldValueTextArea := PHTextArea placeholder: 'field default value'.
	self fieldTextAreas add: {fieldNameTextArea . fieldValueTextArea}.
	self componentFieldPage add:
		(PHPage row
			add: fieldNameTextArea;
			add: fieldValueTextArea)