printing
description
	| stream |
	stream := WriteStream on: ''.
	stream 
		nextPutAll: self messageText;
		nextPutAll: ' ('.
	self property 
		ifNil: [stream nextPutAll: self givenObject asString]
		ifNotNil: [stream 
					nextPutAll: self property asString;
					nextPutAll: ': ';
					nextPutAll: (SContract 
								getPropertyFrom: self givenObject 
								with: self property) asString].
	stream
		nextPutAll: ' is not included in ';
		nextPutAll: self expectedCollection asString;
		nextPutAll: ') ';
		nextPutAll: self kindOf asString;
		nextPutAll: (self variableName ifNil: [''] ifNotNil: [' of ', self variableName]);
		nextPutAll: ' fails in ';
		nextPutAll: self methodReference asString.
	^ stream contents
	