parsing
readString: aString
	aString
		do: [:char | self readChar: char].
	haveLowercase
		ifTrue: [self endWord]
		ifFalse: [currentWord isEmpty ifFalse: [self endAcronymAtEnd]]