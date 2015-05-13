printing
description
	| stream |
	stream := WriteStream on: ''.
	stream 
		nextPutAll: self messageText;
		nextPutAll: ' (Expected to be '.
	self expected
		ifFalse: [stream nextPutAll: 'not '].
	stream
		nextPutAll: self expectedProperty asString;
		nextPutAll: ') ';
		nextPutAll: self kindOf asString;
		nextPutAll: (self variableName ifNil: [''] ifNotNil: [' of ', self variableName]);
		nextPutAll: ' fails in ';
		nextPutAll: self methodReference asString.
	^ stream contents