*Path-Core-override
update: aSymbol 
	aSymbol == #allSelections ifTrue:
		[self selectionIndex: self getCurrentSelectionIndex.
		^ self changed].
	aSymbol == getSelectionListSelector
		ifTrue: [self changed].
	^ super update: aSymbol