accessing
variableMorphFor: aSymbol
	
	^ self entries
		detect: [ :instVarMorph | instVarMorph variableName = aSymbol ]
		ifNone: [ nil ]