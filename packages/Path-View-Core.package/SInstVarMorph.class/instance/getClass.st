menu actions
getClass
	
	isTypeSet ifFalse: [
		self setTypeAndUpdateLabel: self getClassFromTypeHarvestOrAskFor].

	^ type 