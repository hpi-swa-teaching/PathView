execution
primitiveExecute
	"checks preconditions of refactorings and set our options"

	| refactoringChanges |
	
	self refactorings size > 1 ifTrue: [
		refactoringChanges := CompositeRefactoryChange named: self name.
		self refactorings do: [ :refactoring |
			self setSRefactoringOptions: refactoring.
			refactoring primitiveExecute.
			(self hasNestedChanges: refactoring changes) ifTrue: [
				refactoringChanges addChange: refactoring changes. ].]

	] ifFalse: [
		refactoringChanges := self refactorings first changes.
		self setSRefactoringOptions: self refactorings first.  
		self refactorings first primitiveExecute.
	].  

	^refactoringChanges.