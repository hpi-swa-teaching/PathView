harvesting
noteArgument: anObject index: aNumber in: aMethod
	self storeTypeOf: anObject intoSet: ((self argumentsFor: aMethod) at: aNumber).