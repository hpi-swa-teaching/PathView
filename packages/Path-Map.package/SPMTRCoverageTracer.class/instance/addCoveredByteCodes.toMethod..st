coverage events
addCoveredByteCodes: aSet toMethod: aMethodReference
	| byteCodes |
	self isActive
		ifTrue: [byteCodes := self coveredMethods at: aMethodReference ifAbsent: [nil].
				byteCodes 
					ifNil: [self coveredMethods at: aMethodReference put: aSet]
					ifNotNil: [self coveredMethods 
								at: aMethodReference put: aSet, byteCodes]].
