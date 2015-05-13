tests-ignored-words
testIgnoreWord
	| text |
	text := 'this is a tezt text'.
	ignoredWords add: 'tezt'.
	sut setIgnoredWord: 'tezt'.
	self assert: #(0 0)
		equals: (sut checkSpellingOf: text startingAt: 1)
	