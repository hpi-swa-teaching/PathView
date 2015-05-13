testing
testSetIgnoredWord
	sut setIgnoredWord: 'somestrangewordnotindictionary'.
	[self assert: (sut spell: 'somestrangewordnotindictionary')]
		ensure: [sut removeIgnoredWord: 'somestrangewordnotindictionary']