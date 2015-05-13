processing
processPositiveProperty
	self lastObject  > 0
		ifTrue: [self positive: true].