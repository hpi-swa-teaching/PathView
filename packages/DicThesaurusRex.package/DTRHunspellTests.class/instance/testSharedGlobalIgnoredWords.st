tests-ignored-words
testSharedGlobalIgnoredWords
	| text newInstance |
	text := 'this is a tezt text'.
	ignoredWords add: 'tezt'.
	newInstance := sut class instance.
	sut setIgnoredWord: 'tezt'.
	self assert: #(0 0)
		equals: (newInstance checkSpellingOf: text startingAt: 1)
	