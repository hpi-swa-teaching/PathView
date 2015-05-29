reengineering
addParameter
	| initializer newSelector initialAnswer |
	initialAnswer := methodName numArgs = 0 
		ifTrue: [ methodName , ':' ]
		ifFalse: [ methodName ].
	newSelector := UIManager default
		request: 'Enter new selector:'
		initialAnswer: initialAnswer.
	newSelector isEmpty ifTrue: [ ^ nil ].
	initializer := UIManager default 
		request: 'Enter default value for parameter:'
		initialAnswer: 'nil'.
	initializer isEmpty ifTrue: [ ^ nil ].
	
	SRefactoring execute: (AddParameterRefactoring
								addParameterToMethod: methodName asSymbol
								in: klass
								newSelector: newSelector asSymbol
								initializer: initializer)