instance creation
openChange: aChange

	^ self basicNew
		change: (SRefactoringChange on: aChange);
		initialize;
		open;
		yourself