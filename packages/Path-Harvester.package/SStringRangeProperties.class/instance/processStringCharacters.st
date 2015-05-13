processing
processStringCharacters
		self lastObject isAllDigits
			ifTrue: [self includesNumbers: true].
		self lastObject isAsciiString
			ifFalse: [self isAsciiString: false].
		self lastObject isAllSeparators
			ifTrue: [self includesSeparators: true].