tests-ignored-words
testReviveWithIgnoredWords
	| text |
	text := 'this is a tezt text'.
	ignoredWords add: 'tezt'.
	sut setIgnoredWord: 'tezt'.
	sut invalidate.
	self assert: #(0 0)
		equals: (sut checkSpellingOf: text startingAt: 1)
