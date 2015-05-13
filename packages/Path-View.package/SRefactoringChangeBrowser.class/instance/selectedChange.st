accessing
selectedChange

	selectedRefactoring = 0 ifTrue: [^ nil].
	^ change changes at: selectedRefactoring