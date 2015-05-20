printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $[; nextPutAll: myState stateName; nextPut: $]