instance creation
executeMultiple: aRefactoringList name: aString onCancel: aBlock

	^self new
		refactorings: aRefactoringList;
		closeBlock: aBlock;
		name: aString;
		execute;
		yourself.