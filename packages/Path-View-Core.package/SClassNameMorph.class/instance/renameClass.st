reengineering
renameClass
	| oldName newName refactoring |
	
	oldName := klass name asString.
	newName := (UIManager default
					request: 'New Class Name'
					initialAnswer: oldName)
						ifEmpty: [^ self].
						
	oldName = newName ifTrue: [^self.].

	refactoring := RBRenameClassRefactoring
		rename: klass theNonMetaClass
		to: newName.
	SRefactoring execute: refactoring.