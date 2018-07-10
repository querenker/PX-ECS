initialization
createComponent: aComponentName withFields: componentFields

	| componentClass componentFieldNames defaultValueSetter |
	componentFieldNames := componentFields collect: [:componentField | componentField first].
	componentClass := (MCClassDefinition name: aComponentName superclassName: 'ECSComponent' category: 'ECS-Custom' instVarNames: componentFieldNames comment: '') createClass.
	componentClass allInstVarNames do: [:instVar |
		(RBCreateAccessorsForVariableRefactoring variable: instVar class: componentClass classVariable: false) execute].
	defaultValueSetter := componentFields collect: [:componentField |
		'instance {1}: {2}.' format: componentField].
	componentClass class compile: (self componentConstructorTemplate format: { defaultValueSetter inject: '' into: [:el :result | result , ' ', el]}).
	componentClass class compile: self componentTypeTemplate. 
	^ componentClass