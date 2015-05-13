processing
process: anObject
	super process: anObject.
	anObject
		ifNotNil: [self 
					processCollectionSize;
					processEmptyProperty].