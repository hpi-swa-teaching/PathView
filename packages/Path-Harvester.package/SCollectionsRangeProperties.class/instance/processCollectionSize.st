processing
processCollectionSize
	self maxNumberOfElements: (self maxNumberOfElements max: self lastObject size).
	self lastObject size = self maxNumberOfElements
		ifFalse: [self fixedSize: false].