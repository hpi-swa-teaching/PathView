accessing
classCollectionSize
	
	^ classCollection
		ifNil: [ 0 ]
		ifNotNil: [ classCollection size ]