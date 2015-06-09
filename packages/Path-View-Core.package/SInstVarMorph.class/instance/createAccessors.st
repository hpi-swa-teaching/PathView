reengineering
createAccessors

	SRefactoring execute: (RBCreateAccessorsForVariableRefactoring 
								variable: variableName 
								class: klass 
								classVariable: (type = #instance ifTrue: [false] ifFalse: [true])).