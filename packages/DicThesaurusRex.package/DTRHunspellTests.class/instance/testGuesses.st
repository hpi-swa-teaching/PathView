tests
testGuesses
	| guesses |
	guesses := sut getGuesses: 'aplpe'.
	self assert: 1 <= guesses size description: '# suggestions for aplpe'.
	self assert: (guesses includes: 'apple')