exploring
getSelfAfter: anObject
	(self isSpecificCall and: [self exploreWhat == #selfAfter])
		ifTrue: [self objects add: anObject veryDeepCopy].