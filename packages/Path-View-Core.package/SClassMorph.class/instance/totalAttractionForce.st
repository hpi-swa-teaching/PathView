layout force-based
totalAttractionForce
	
	| totalForce |
	totalForce := 0@0.
	self connections
		reject: [ :connection | false ]
		thenDo: [ :connection |
			totalForce := totalForce + (self attractionFrom: connection) ].
	^ totalForce