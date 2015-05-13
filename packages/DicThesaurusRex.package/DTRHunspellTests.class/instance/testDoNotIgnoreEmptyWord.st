tests-ignored-words
testDoNotIgnoreEmptyWord
	ignoredWords add: ''.
	self should: [sut setIgnoredWord: ''] raise: Error