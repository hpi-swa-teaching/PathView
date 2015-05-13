processing
process: anObject
	super process: anObject.
	anObject 
		ifNotNil: [self 
					processSpellChecker;
					processStringLength;
					processStringCharacters;
					processStringContentAnalysis].