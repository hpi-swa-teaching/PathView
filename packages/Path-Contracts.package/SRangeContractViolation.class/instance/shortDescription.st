printing
shortDescription
	| stream |
	stream := WriteStream on: ''.
	stream 
		nextPutAll: super shortDescription;
		nextPutAll: ' >> '.
	self property 
		ifNil: [stream nextPutAll: self givenObject asString]
		ifNotNil: [stream nextPutAll: (self givenObject perform: self property) asString].
	stream
			nextPutAll: ' not between ';
			nextPutAll: self expectedMin asString;
			nextPutAll: ' and ';
			nextPutAll: self expectedMax asString.
	^ stream contents
		