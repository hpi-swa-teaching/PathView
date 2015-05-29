reengineering
deleteVariable

	| refactoring |
	
	(UIManager default confirm: 'Really delete ', variableName, '?') ifFalse: [^self].

	self flag: #TODO.
	"FIX: sometimes the diagram will not update... classModifiedEvent is not triggered"
	type = #instance ifTrue: [
				 refactoring := RBRemoveInstanceVariableRefactoring 
								remove: variableName
								from: klass.
	] ifFalse: [ refactoring := RBRemoveClassVariableRefactoring
								variable: variableName
								class: klass ].

	SRefactoring execute: refactoring.