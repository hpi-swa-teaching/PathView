execution
hasNestedChanges: aRefactoringChange

	^ (SRefactoringChange on: aRefactoringChange) changes size > 1.