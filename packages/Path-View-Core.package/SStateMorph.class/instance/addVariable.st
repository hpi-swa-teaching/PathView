reengineering
addVariable

	| name refactoring |
	
	name := (UIManager default
				request: 'New Variable Name'
				initialAnswer: ((type = #instance) ifTrue: ['variable'] ifFalse: ['Variable']) )
					ifEmpty: [ ^self ].

	type = #instance ifTrue: [
			refactoring := RBAddInstanceVariableRefactoring 
				variable: name class: klass.
	]  ifFalse: [
			refactoring := RBAddClassVariableRefactoring 
				variable: name class: klass.
	].
	
	SRefactoring execute: refactoring.