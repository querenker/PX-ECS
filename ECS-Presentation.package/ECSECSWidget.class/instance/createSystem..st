initialization
createSystem: aSystemName

	| systemClass |
	systemClass := MCClassDefinition name: aSystemName superclassName: 'ECSSystem' category: 'ECS-Custom' instVarNames: '' comment: ''.
	^ systemClass createClass