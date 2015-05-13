parsing
readChar: aCharacter 
	((aCharacter isUppercase and: haveLowercase) or: aCharacter isLetter not)
		ifTrue: [self endWord].
	aCharacter isLowercase
		ifTrue: [(haveLowercase not and: [currentWord size > 1])
				ifTrue: [self endAcronym].
				haveLowercase := true].
	aCharacter isLetter
		ifTrue: [currentWord nextPut: aCharacter]