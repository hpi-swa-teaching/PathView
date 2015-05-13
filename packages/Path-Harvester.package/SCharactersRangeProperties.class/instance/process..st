processing
process: anObject
	super process: anObject.
	anObject 
		ifNotNil: [self 
					processRange;
					processLetters;
					processNonLetters;
					processHttpSafety].