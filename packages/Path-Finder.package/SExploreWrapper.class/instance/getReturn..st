exploring
getReturn: anObject

	(self isSpecificCall and: [self exploreWhat == #return])
		ifTrue: [self objects add: anObject veryDeepCopy].