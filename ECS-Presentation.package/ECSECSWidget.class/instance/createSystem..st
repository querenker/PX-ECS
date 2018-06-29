initialization
createSystem: aSystemName

	| systemClass |
	systemClass := MCClassDefinition name: (self customClassPrefix , aSystemName) superclassName: 'ECSSystem' category: 'ECS-Custom' instVarNames: '' comment: ''.
	^ systemClass createClass