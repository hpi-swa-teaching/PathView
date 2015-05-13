exploring
getSelfBefore: anObject

	(self isSpecificCall and: [self exploreWhat == #selfBefore])
		ifTrue: [self objects add: anObject veryDeepCopy].