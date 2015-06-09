printing
printString
	| stream |
	stream := WriteStream on: ''.
	stream nextPutAll: self typeOfContainer asString.
	(self typeOfElements notNil or: [self typeOfKeys notNil])
		ifTrue: [stream nextPutAll: ' of '].
	self typeOfKeys ifNotNil: [stream 
								nextPutAll: self typeOfKeys asString;
								nextPutAll: ' --> '].
	self typeOfElements ifNotNil: [stream nextPutAll: self typeOfElements asString].
	^ stream contents