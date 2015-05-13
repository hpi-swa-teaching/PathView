as yet unclassified
initialize

	super initialize.
	self mark: '?'.
	1 = 3
		ifTrue: [self mark: 3 + 4.
				self mark: 5 + 6]