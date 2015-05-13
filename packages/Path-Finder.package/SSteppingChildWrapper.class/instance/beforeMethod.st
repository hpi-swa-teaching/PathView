evaluating
beforeMethod
	self isSpecificCall
		ifTrue: [self parentPc: self coverageWrapper currentPc].
	self decrementCallCount