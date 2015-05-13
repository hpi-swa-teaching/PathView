comparing
= other
	self class = other class
		ifFalse: [^ false].
	^ self methodReference = other methodReference 
		and: [self kindOf = other kindOf]
		and: [self givenType = other givenType]
		and: [self expectedType = other expectedType]