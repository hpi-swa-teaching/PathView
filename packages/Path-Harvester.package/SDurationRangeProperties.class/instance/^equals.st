comparing
= anObject
	^ (((((super = anObject) 
		and: [self secondsRange = anObject secondsRange])
		and: [self nanoRange = anObject nanoRange])
		and: [self positive = anObject positive])
		and: [self negative = anObject negative])
		and: [self isZero = anObject isZero]    