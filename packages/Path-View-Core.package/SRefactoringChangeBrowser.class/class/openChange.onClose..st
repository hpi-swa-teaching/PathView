instance creation
openChange: aChange onClose: aBlock

	^ self basicNew
		change: (SRefactoringChange on: aChange);
		onClose: aBlock;
		initialize;
		open;
		yourself