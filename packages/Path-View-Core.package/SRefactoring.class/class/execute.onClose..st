instance creation
execute: aRefactoring onClose: aBlock

	^self new
		refactorings: {aRefactoring};
		closeBlock: aBlock;
		execute;
		yourself.