instance creation
executeMultiple: aRefactoringList name: aString

	^self new
		refactorings: aRefactoringList;
		name: aString;
		execute;
		yourself.