reengineering
renameVariable

	| newName refactoring |
	
	newName := (UIManager default
					request: 'New Variable Name'
					initialAnswer: self variableName asString)
						ifEmpty: [ ^self ].
	newName = self variableName ifTrue: [^self]  .
	
	type = #instance ifTrue: [
			   refactoring := RBRenameInstanceVariableRefactoring 
								rename: self variableName
								to: newName
								in: self klass
	] ifFalse: [ refactoring := RBRenameClassVariableRefactoring
								rename: self variableName
								to:  newName 
								in: self klass ].

	SRefactoring execute: refactoring