tests-ignored-words
testPersistentIgnoredWords
	| text newInstance |
	text := 'this is a tezt text'.
	ignoredWords add: 'tezt'.
	sut setIgnoredWord: 'tezt'.
	newInstance := sut class instance.
	self assert: #(0 0)
		equals: (newInstance checkSpellingOf: text startingAt: 1)
	