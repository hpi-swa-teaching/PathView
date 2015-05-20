printing
printOn: aStream 
	super printOn: aStream.
	aStream
		nextPut: $[;
		nextPutAll: self currentState;
		nextPut: $]