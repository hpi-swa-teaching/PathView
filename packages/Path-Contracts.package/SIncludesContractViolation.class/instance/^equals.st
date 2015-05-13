comparing
= other
	self class = other class
		ifFalse: [^ false].
	^ self methodReference = other methodReference 
		and: [self kindOf = other kindOf]
		and: [self givenObject = other givenObject]
		and: [self expectedCollection = other expectedCollection]
		and: [self property = other property]