comparing
= other
	self class = other class
		ifFalse: [^ false].
	^ (self methodReference = other methodReference 
		and: [self kindOf = other kindOf]
		and: [self givenObject = other givenObject]
		and: [self expectedMin = other expectedMin]
		and: [self expectedMax = other expectedMax])	
		and: [self property = other property]