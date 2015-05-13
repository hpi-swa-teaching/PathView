comparing
= other
	self class = other class
		ifFalse: [^ false].
	^ (self methodReference = other methodReference and: [self kindOf = other kindOf])