processing
processNegativeProperty
	self lastObject < 0
		ifTrue: [self negative: true].