coverage events
addToCoveredMethods: aMethodReference
	self isActive
		ifTrue: [self coveredMethods 
					at: aMethodReference
					put: nil].
