tests
testCheckSpellingOfStartingAt
	"Tests DTRHunspell>>#checkSpellingOf:startingAt:"
	self 
		assert: #(0 0) equals: (sut checkSpellingOf: 'this is a test' startingAt: 1);
		assert: #(6 2) equals: (sut checkSpellingOf: 'this iz a test' startingAt: 1);
		assert: #(0 0) equals: (sut checkSpellingOf: 'this iz a test' startingAt: 7);
		assert: #(11 4) equals: (sut checkSpellingOf: 'this iz a tezt' startingAt: 7)
	