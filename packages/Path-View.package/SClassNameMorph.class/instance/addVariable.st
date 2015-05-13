reengineering
addVariable

	| name type refactoring |
	
	type := UIManager default chooseFrom:{'inst'. 'class'. 'class inst'} values: {#inst. #class. #classinst}.	
	name := (UIManager default
				request: 'New Variable Name'
				initialAnswer: ((type = #instance) ifTrue: ['variable'] ifFalse: ['Variable']) )
					ifEmpty: [ ^self ].

	type = #inst ifTrue: [
			refactoring := AddInstanceVariableRefactoring 
								variable: name class: klass theNonMetaClass.].
	type = #class ifTrue: [
			refactoring := AddClassVariableRefactoring 
								variable: name class: klass theNonMetaClass.].
	type = #classinst ifTrue: [
			refactoring := AddInstanceVariableRefactoring 
								variable: name class: klass theMetaClass.
		].  
	
	SRefactoring execute: refactoring. 