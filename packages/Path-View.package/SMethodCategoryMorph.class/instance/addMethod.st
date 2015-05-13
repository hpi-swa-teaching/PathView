reengineering
addMethod
	| name |
	name := (UIManager default
				request: 'New Method Name'
				initialAnswer: 'method')
					ifEmpty: [ ^self ].

	SRefactoring execute: (SAddMethodRefactoring 
								addMethod: name
								toClass: klass name 
								inProtocols: category).