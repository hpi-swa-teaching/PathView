drawing
visible
	self forcedInvisible ifTrue: [^false].
	^constraint isNil or: [constrained isNil or: [self hasAnyInputs not]]