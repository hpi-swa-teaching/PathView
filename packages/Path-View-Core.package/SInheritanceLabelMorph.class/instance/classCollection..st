accessing
classCollection: anObject
	
	classCollection := anObject.
	classCollection
		ifNotNil: [
			self initializeString: 
				(classCollection
					inject: 'via'
					into: [ :str :c | str, Character cr, c ]) ].