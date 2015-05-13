concern button
concernButtonAction
	self isConcernGroupSelected
		ifTrue: [self addConcern].
	self isConcernSelected
		ifTrue: [self removeConcern].