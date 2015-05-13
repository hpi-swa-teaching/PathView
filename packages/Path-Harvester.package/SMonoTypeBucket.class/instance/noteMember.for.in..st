harvesting
noteMember: anObject for: anIndex in: aClass
	| mtMap |
	mtMap := self membersFor: aClass.
	mtMap
		at: anIndex
		put: (self leastCommonSuperTypeOf: (self getTypeFromObject: anObject 
												existing: (mtMap at: anIndex)) 
					and: (mtMap at: anIndex))