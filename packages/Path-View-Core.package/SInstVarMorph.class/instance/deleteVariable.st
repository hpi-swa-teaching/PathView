reengineering
deleteVariable

	| refactoring |
	
	(UIManager default confirm: 'Really delete ', self variableName, '?') ifFalse: [ ^ self ].

	self flag: #TODO.
	"FIX: sometimes the diagram will not update... classModifiedEvent is not triggered"
	self variableType = #instance ifTrue: [
				 refactoring := RBRemoveInstanceVariableRefactoring 
								remove: self variableName
								from: self klass.
	] ifFalse: [ refactoring := RBRemoveClassVariableRefactoring
								variable: self variableName
								class: self klass ].

	SRefactoring execute: refactoring