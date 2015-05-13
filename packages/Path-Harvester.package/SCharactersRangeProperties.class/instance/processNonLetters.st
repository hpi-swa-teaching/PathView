processing
processNonLetters
	self lastObject isDigit
		ifTrue: [self includesDigits: true].				
	self lastObject isSeparator
		ifTrue: [self includesSeparators: true].
	self lastObject isSpecial
		ifTrue: [self includesSpecials: true].