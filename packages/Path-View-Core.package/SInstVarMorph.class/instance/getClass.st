menu actions
getClass
	
	self isTypeSet ifFalse: [
		self setTypeAndUpdateLabel: self getClassFromTypeHarvestOrAskFor].

	^ self variableType 