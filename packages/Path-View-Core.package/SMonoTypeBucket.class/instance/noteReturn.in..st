harvesting
noteReturn: anObject in: aMethod
	| returnType |
	returnType := self returnFor: aMethod.
	returnType 
		ifNil: [self returns
				at: aMethod methodReference
				put: (self getTypeFromObject: anObject)]
		ifNotNil: [self returns 
					at: aMethod methodReference
					put: (self leastCommonSuperTypeOf: returnType 
								and: (self getTypeFromObject: anObject 
										existing: returnType))].