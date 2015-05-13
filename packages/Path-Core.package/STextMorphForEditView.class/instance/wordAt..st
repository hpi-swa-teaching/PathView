type labels
wordAt: anIndex
	| start stop |
	start := anIndex.
	stop := anIndex.
	[stop <= self text size and: [(self text at: stop) isSeparator not]]
		whileTrue: [stop := stop + 1].
	[start >= 1 and: [(self text at: start) isSeparator not]]
		whileTrue: [start := start - 1].
	^self trimWord: (self text copyFrom: start to: stop) asString 