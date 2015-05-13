processing
process: anObject
	super process: anObject.
	anObject 
		ifNotNil: [self
					processSecondsRangeProperties;
					processNanosRangeProperties;
					processSignProperty;
					processZeroProperty].