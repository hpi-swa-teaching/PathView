printing
printOn: aStream
	aStream nextPutAll: 'QEvent['; print: type.
	arguments isEmptyOrNil ifFalse: [
		aStream nextPut: $(.
		arguments do: [ :arg | aStream print: arg ] separatedBy: [ aStream nextPut: $,].
		aStream nextPut: $).
	].
	aStream nextPut: $]