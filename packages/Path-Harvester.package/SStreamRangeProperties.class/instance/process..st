processing
process: anObject
	super process: anObject.
	anObject 
		ifNotNil: [
			self lastObject closed
				ifTrue: [self isClosed: true].
			self contents add: self lastObject contents class].