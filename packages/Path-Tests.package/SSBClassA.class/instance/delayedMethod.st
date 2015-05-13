as yet unclassified
delayedMethod

	self unaryMethod
		ifTrue: [(Delay forMilliseconds: 100) wait].
	^ true