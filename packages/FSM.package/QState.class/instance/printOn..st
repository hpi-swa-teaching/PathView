printing
printOn: aStream
	aStream nextPutAll: 'QState(';
		nextPutAll: stateName;
		nextPut: $)