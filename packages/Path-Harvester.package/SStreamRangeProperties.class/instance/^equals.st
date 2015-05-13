comparing
= anObject
	^ ((super = anObject) 
		and: [self isClosed = anObject isClosed])
		and: [self contents = anObject contents]