processing
process: anObject
	super process: anObject.
	anObject 
		ifNotNil: [self
					processZeroProperty;
					processPositiveProperty;
					processNegativeProperty;
					processRangeProperty].