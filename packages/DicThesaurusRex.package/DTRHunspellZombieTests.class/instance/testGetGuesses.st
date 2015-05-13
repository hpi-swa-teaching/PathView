testing
testGetGuesses
	self assert: (DTRHunspell instance getGuesses: 'tezt') equals: (sut getGuesses: 'tezt')