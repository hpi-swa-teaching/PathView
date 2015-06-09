execution
execute

	| refactoringChanges |
	
	showChanges ifTrue: [
		refactoringChanges := self primitiveExecute.			
		(self hasNestedChanges: refactoringChanges) ifTrue: [	
			SRefactoringChangeBrowser openChange: refactoringChanges onClose: closeBlock.
		] ifFalse: [
			(SRefactoringChange on: refactoringChanges) executeNotifying: [].
			closeBlock ifNotNil: [closeBlock value].
			]  
		
	] ifFalse: [
		refactorings do: [ :refactoring | 
			self setSRefactoringOptions: refactoring.  
			refactoring execute. ].
	].