processing
processSignProperty
	self lastObject positive
		ifTrue: [self positive: true].
	self lastObject negative
		ifTrue: [self negative: true].
