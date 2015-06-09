reengineering
createAccessors
	| refactorings |
	
	refactorings := OrderedCollection new.
	refactorings := klass theNonMetaClass instVarNames collect: [ :variable |
		CreateAccessorsForVariableRefactoring 
			variable: variable class: klass theNonMetaClass classVariable: false. ].
	
	SRefactoring 
		executeMultiple: refactorings 
		name: 'Create accessors for', klass name asString.