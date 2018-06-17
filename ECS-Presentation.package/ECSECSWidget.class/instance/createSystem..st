initialization
createSystem: aSystemName

	| systemClass |
	systemClass := MCClassDefinition name: aSystemName superclassName: 'ECSSystem' category: 'ECS-Core' instVarNames: '' comment: ''.
	^ systemClass createClass