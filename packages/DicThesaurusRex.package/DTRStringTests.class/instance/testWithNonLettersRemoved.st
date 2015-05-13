as yet unclassified
testWithNonLettersRemoved
	self
		assert: 'abc' equals: 'abc1' withNonLettersRemoved;
		assert: 'abc' equals: '1abc' withNonLettersRemoved;
		assert: 'abc' equals: 'ab1c' withNonLettersRemoved;
		assert: 'abc' equals: 'abc:' withNonLettersRemoved