printing
shortDescription
	| stream | 
	stream := WriteStream on: ''.
	stream
		nextPutAll: super shortDescription;
		nextPutAll: ' >> Expected '.
	self expected
		ifFalse: [stream nextPutAll: 'not '].		
	stream
		nextPutAll: self expectedProperty asString.
	^ stream contents		