processing
processLetters
	self lastObject isLetter
		ifTrue: [self includesLetters: true.
				self lastObject isLowercase
					ifTrue: [self lowercase: true].
				self lastObject isUppercase
					ifTrue: [self uppercase: true]].
		