updating
update: aSymbol 
	aSymbol == #steppingSelection
		ifTrue: [self updateSteppingSelection]