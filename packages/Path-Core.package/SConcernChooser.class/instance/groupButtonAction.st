group button
groupButtonAction
	self isConcernGroupSelected
		ifTrue: [self removeConcernGroup]
		ifFalse: [self addConcernGroup].
	
	