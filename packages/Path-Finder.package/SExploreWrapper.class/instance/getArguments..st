exploring
getArguments: anArrayOfObjects

	(self isSpecificCall and: [self exploreWhat == #arguments])
		ifTrue: [self objects add: anArrayOfObjects veryDeepCopy].