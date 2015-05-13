reengineering
deleteClass
	
	(UIManager default confirm: 'Really delete ', klass name asString, '?') ifFalse: [^self].
	
	SRefactoring execute: 
		(RBRemoveClassRefactoring classNames: {klass name}).