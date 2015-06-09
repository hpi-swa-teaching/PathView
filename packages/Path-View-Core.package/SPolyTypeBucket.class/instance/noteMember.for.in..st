harvesting
noteMember: anObject for: aNumber in: aClass
	self storeTypeOf: anObject intoSet: ((self membersFor: aClass) at: aNumber).