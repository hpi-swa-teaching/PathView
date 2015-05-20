printing
printOn: aStream 
	super printOn: aStream.
	handlers isEmptyOrNil 
		ifFalse: 
			[aStream nextPut: $[.
			handlers keysAndValuesDo: 
					[:k :v | 
					aStream
						nextPutAll: k;
						nextPut: $=;
						print: v;
						nextPut: $;].
			aStream
				skip: -1;
				nextPut: $]]