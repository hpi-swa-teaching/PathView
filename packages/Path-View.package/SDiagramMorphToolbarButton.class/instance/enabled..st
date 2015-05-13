accessing
enabled: aBool

	super enabled: aBool.
	aBool ifTrue: [self show] ifFalse: [self hide].