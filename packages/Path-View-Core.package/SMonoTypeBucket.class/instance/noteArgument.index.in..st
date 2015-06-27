harvesting
noteArgument: anObject index: aNumber in: aMethod
	|  tmpMap |
	tmpMap := self argumentsFor: aMethod.
	tmpMap size > 0 ifTrue: [
		tmpMap
			at: aNumber
			put: (self leastCommonSuperTypeOf: (tmpMap at: aNumber) 
						and: (self getTypeFromObject: anObject 
								existing: (tmpMap at: aNumber))) ]