comparing
= anObject
	^ (((super = anObject) 
		and: [self maxNumberOfElements = anObject maxNumberOfElements])
		and: [self fixedSize = anObject fixedSize])
		and: [self emptyAllowed = anObject emptyAllowed]