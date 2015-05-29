reengineering
addMethod
	| name category index |
	
	index := UIManager default 
				chooseFrom: {'new...'}, klass organization categories
				title: 'Choose a category'.
	index = 0 ifTrue: [^self].  
	
	category := (index = 1)
					ifTrue: [(UIManager default
								request: 'New Category Name'
								initialAnswer: 'category')
									ifEmpty: [ ^self ].]
					ifFalse: [klass organization categories at: (index-1)].
				
						
	name := (UIManager default
				request: 'New Method Name'
				initialAnswer: 'method')
					ifEmpty: [ ^self ].

	SRefactoring execute: (SAddMethodRefactoring 
								addMethod: name 
								toClass: klass name 
								inProtocols: category).