reengineering
createAccessors

	SRefactoring execute: (RBCreateAccessorsForVariableRefactoring 
								variable: self variableName 
								class: self klass 
								classVariable: (self variableType ~= #instance))