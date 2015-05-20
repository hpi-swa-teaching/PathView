printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: '{v:('.
	self vertices do: [ :v | v printOn: aStream ] separatedBy: [ aStream space ].
	aStream nextPutAll: '), e:('.
	self edges do: [ :e | e printOn: aStream ] separatedBy: [ aStream space ].
	aStream nextPutAll: ')}'.