type labels
trimWord: aString
	^ aString select: [:each | each isLetter or: [each isDigit]]