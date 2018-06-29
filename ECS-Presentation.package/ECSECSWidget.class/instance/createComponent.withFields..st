initialization
createComponent: aComponentName withFields: componentFields

	| componentClass |
	componentClass := (MCClassDefinition name: (self customClassPrefix , aComponentName) superclassName: 'ECSComponent' category: 'ECS-Custom' instVarNames: componentFields comment: '') createClass.
	componentClass allInstVarNames do: [:instVar |
		(RBCreateAccessorsForVariableRefactoring variable: instVar class: componentClass classVariable: false) execute].
	componentClass class compile: self componentConstructorTemplate.
	componentClass class compile: self componentTypTemplate. 
	^ componentClass