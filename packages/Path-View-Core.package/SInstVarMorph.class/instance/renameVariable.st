reengineering
renameVariable

	| newName refactoring |
	
	newName := (UIManager default
					request: 'New Variable Name'
					initialAnswer: variableName asString)
						ifEmpty: [ ^self ].
	newName = variableName ifTrue: [^self]  .
	
	type = #instance ifTrue: [
			   refactoring := RBRenameInstanceVariableRefactoring 
								rename: variableName
								to: newName
								in: klass
	] ifFalse: [ refactoring := RBRenameClassVariableRefactoring
								rename: variableName
								to:  newName 
								in: klass ].

	SRefactoring execute: refactoring.