printing
shortDescription
	| stream |
	stream := WriteStream on: ''.
	stream 
		nextPutAll: super shortDescription;
		nextPutAll: ' >> '.
	self property 
		ifNil: [stream nextPutAll: self givenObject asString]
		ifNotNil: [stream nextPutAll: (SContract 
								getPropertyFrom: self givenObject 
								with: self property) asString].
	stream
			nextPutAll: ' not included in ';
			nextPutAll: self expectedCollection asString.
	^ stream contents
	